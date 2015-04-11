unit UPesqLanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, UComponentTag, Mask, EditLabel, ExtCtrls,
  ComCtrls, Grids, DBGrids, UConexao, UGlobal;

type
  TfrmPesqLanc = class(TForm)
    tab: TPageControl;
    tabCadastro: TTabSheet;
    pnl1: TPanel;
    txtHabilitaEdicao: TEdit;
    pnl3: TPanel;
    btnLocaliza: TBitBtn;
    btnSair: TBitBtn;
    grd: TDBGrid;
    cboTipoLanc: TComboBoxTag;
    cboCOD_CT: TComboBoxTag;
    lblTotal: TLabel;
    btnAtualizar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnLocalizaClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PesquisaLancamentos;
    procedure TotalizaLancamentos;
    procedure CarregaCombo;
  end;

var
  frmPesqLanc: TfrmPesqLanc;
  cnn: TConexao;

implementation

{$R *.dfm}

uses UPrincipal, UMOV_LANCAMENTO, Functions, DB;

procedure TfrmPesqLanc.PesquisaLancamentos;
var str: string;
begin
  str := 'Select '+
  'A.NUM_LANCAMENTO,'+
  'A.DAT_LANCAMENTO,'+
  'A.DSC_LANCAMENTO,'+
  'A.VAL_LANCAMENTO,'+
  'A.COD_CONTA_DEB,'+
  'B.NOM_CONTA NOM_CONTA_DEB,'+
  'A.COD_CONTA_CRE,'+
  'C.NOM_CONTA NOM_CONTA_CRE,'+
  'A.COD_CT,'+
  'A.COD_TP_LANC'+
  ' From '+
  'MOV_LANCAMENTO A,'+
  'VW_CAD_CONTA B,'+
  'VW_CAD_CONTA C'+
  ' Where '+
  'A.COD_CONTA_DEB = B.COD_CONTA And '+
  'A.COD_CONTA_CRE = C.COD_CONTA And '+
  'A.DAT_LANCAMENTO Containing '+ cnn.Aspas(frmPrincipal.edtAno.Text+'-'+
                                   Lpad(IntToStr(frmPrincipal.cboMes.ItemIndex+1),2,'0'));
  //FILTRANDO POR TIPO DE LAN�AMENTO
  if trim(cboTipoLanc.Text) <> EmptyStr then
    str := str + ' And A.COD_TP_LANC = ' + cnn.Aspas(cboTipoLanc.Text);

  //FILTRANDO POR COD CT.
  if trim(cboCOD_CT.Text) <> EmptyStr then
    str := str + ' And A.COD_CT = ' + cnn.Aspas(cboCOD_CT.Text);

  str := str + ' Order By A.DAT_LANCAMENTO, A.DSC_LANCAMENTO ';

  if not cnn.ExecuteQuery(str,grd) then
  begin
    grd.DataSource.DataSet := nil;
    exit;
  end;

  with grd.DataSource.DataSet do
  begin
    TFloatField(FieldByName('VAL_LANCAMENTO')).DisplayFormat:='#,##0.00';
  end;

end;

procedure TfrmPesqLanc.FormCreate(Sender: TObject);
var str: string;
begin

  Left:=0;
  tOP:=0;
  cnn := TConexao.Create(GloStrUser,GloStrPassword,GloStrDatabase, GloStrServer, GloBlnEmbedded);
  cnn.Open;

  CarregaCombo;

end;

procedure TfrmPesqLanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree
end;

procedure TfrmPesqLanc.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesqLanc.btnLocalizaClick(Sender: TObject);
begin
  PesquisaLancamentos;

  if (Trim(cboTipoLanc.Text) <> EmptyStr) or
     (Trim(cboCOD_CT.Text) <> EmptyStr) then
    TotalizaLancamentos
  else
    lblTotal.Caption := EmptyStr;    

end;

procedure TfrmPesqLanc.grdDblClick(Sender: TObject);
begin
  try
    if grd.DataSource.DataSet.FieldByName('NUM_LANCAMENTO').AsString = EmptyStr then
    exit;
  except
    exit;
  end;

  frmMOV_LANCAMENTO := TfrmMOV_LANCAMENTO.Create(Application);

  if not frmMOV_LANCAMENTO.pnl1.Enabled then
      frmMOV_LANCAMENTO.LimpaCampos;

  frmMOV_LANCAMENTO.edtNUM_LANCAMENTO.Text := grd.DataSource.DataSet.FieldByName('NUM_LANCAMENTO').AsString;
  frmMOV_LANCAMENTO.HabilitaEdicao(true);

  frmMOV_LANCAMENTO.Show;

end;

procedure TfrmPesqLanc.TotalizaLancamentos;
var curValor: Currency;
begin
  if not Assigned(grd.DataSource) then
    Exit
  else if not Assigned(grd.DataSource.DataSet) then
    Exit
  else if grd.DataSource.DataSet.Eof then
    Exit;

  curValor := 0;

  with  grd.DataSource.DataSet do
  begin
    while not Eof do
    begin
      curValor := curValor + FieldByName('VAL_LANCAMENTO').AsCurrency;
      Next;
    end;  
  end;

  if curValor > 0 then
    lblTotal.Caption := 'Total: '+FormatCurr('#,##0.00',curValor)
  else
    lblTotal.Caption := EmptyStr; 
end;

procedure TfrmPesqLanc.CarregaCombo;
var str: string;
begin
  str :=
  'Select Distinct COD_TP_LANC '+
  '  From MOV_LANCAMENTO '+
  '  Where '+
  'DAT_LANCAMENTO Containing '+ cnn.Aspas(frmPrincipal.edtAno.Text+'-'+
                                Lpad(IntToStr(frmPrincipal.cboMes.ItemIndex+1),2,'0'))+
  ' Order By 1';

  cnn.ExecuteQuery(str,cboTipoLanc);
  cboTipoLanc.Items.Insert(0,EmptyStr);

  str :=
  'Select Distinct COD_CT '+
  '  From MOV_LANCAMENTO '+
  '  Where '+
  'COD_CT Is Not Null And '+ 
  'DAT_LANCAMENTO Containing '+ cnn.Aspas(frmPrincipal.edtAno.Text+'-'+
                                Lpad(IntToStr(frmPrincipal.cboMes.ItemIndex+1),2,'0'))+
  ' Order By 1';

  cnn.ExecuteQuery(str,cboCOD_CT);
  cboCOD_CT.Items.Insert(0,EmptyStr);

  lblTotal.Caption := EmptyStr;
end;

procedure TfrmPesqLanc.btnAtualizarClick(Sender: TObject);
begin
  CarregaCombo;
end;

end.
