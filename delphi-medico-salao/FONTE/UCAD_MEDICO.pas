unit UCAD_MEDICO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ufrm, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, EditLabel,
  UComponentTag, DB;

type
  TfrmCAD_MEDICO = class(Tfrm)
    txtNOM_MEDICO: TEditLabel;
    txtObs: TMemoTag;
    tabPrinc: TPageControl;
    tab1: TTabSheet;
    txtNOM_ENDERECO: TEditLabel;
    edtNOM_BAIRRO: TEditLabel;
    txtNUM_FONE_EMERG: TEditLabel;
    txtNUM_FONE1: TEditLabel;
    txtNUM_FONE_RESID: TEditLabel;
    optCEP: TEditLabel;
    txtCOD_MEDICO: TEditLabel;
    txtCOD_CIDADE: TEditLabel;
    txtNOM_CIDADE: TEditTag;
    txtNOM_MEDICO_RES: TEditLabel;
    txtNUM_FONE2: TEditLabel;
    txtNUM_FONE3: TEditLabel;
    tabDadosMedicos: TTabSheet;
    grpSexo: TGroupBox;
    optMaculino: TRadioButtonTag;
    optFeminino: TRadioButtonTag;
    grpINSS: TGroupBox;
    RadioButtonTag1: TRadioButtonTag;
    RadioButtonTag2: TRadioButtonTag;
    RadioButtonTag3: TRadioButtonTag;
    GroupBox1: TGroupBox;
    RadioButtonTag4: TRadioButtonTag;
    RadioButtonTag5: TRadioButtonTag;
    RadioButtonTag6: TRadioButtonTag;
    GroupBox2: TGroupBox;
    RadioButtonTag7: TRadioButtonTag;
    RadioButtonTag8: TRadioButtonTag;
    RadioButtonTag9: TRadioButtonTag;
    GroupBox3: TGroupBox;
    RadioButtonTag10: TRadioButtonTag;
    RadioButtonTag11: TRadioButtonTag;
    RadioButtonTag12: TRadioButtonTag;
    RadioButtonTag13: TRadioButtonTag;
    GroupBox4: TGroupBox;
    RadioButtonTag14: TRadioButtonTag;
    RadioButtonTag15: TRadioButtonTag;
    RadioButtonTag16: TRadioButtonTag;
    txtCOD_ESPEC: TEditLabel;
    txtNOM_ESPEC: TEditTag;
    EditTag1: TEditTag;
    tabConvenio: TTabSheet;
    tabHospital: TTabSheet;
    txtNOM_COMPL_ESPEC: TEditLabel;
    txtCOD_CONVENIO: TEditLabel;
    txtNOM_CONVENIO: TEditTag;
    lvwConvenio: TListViewTag;
    txtCOD_HOSPITAL: TEditLabel;
    txtNOM_HOSPITAL: TEditTag;
    lvwHospital: TListViewTag;
    txtUltimoCampoDadosMedicos: TEdit;
    txtUltimoCampoConvenio: TEdit;
    tabHistorico: TTabSheet;
    lvwHistorico: TListView;
    procedure FormCreate(Sender: TObject);
    procedure txtCOD_MEDICOEnter(Sender: TObject);
    procedure txtCOD_MEDICOChange(Sender: TObject);
    procedure txtCOD_MEDICOClickButton(Sender: TObject);
    procedure txtCOD_MEDICOExit(Sender: TObject);
    procedure txtCOD_CIDADEClickButton(Sender: TObject);
    procedure txtCOD_CIDADEExit(Sender: TObject);
    procedure txtCOD_ESPECClickButton(Sender: TObject);
    procedure txtCOD_ESPECExit(Sender: TObject);
    procedure txtCOD_ESPECEnter(Sender: TObject);
    procedure txtCOD_CIDADEEnter(Sender: TObject);
    procedure EditTag1Enter(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnIncluirConvenioClick(Sender: TObject);
    procedure txtCOD_CONVENIOClickButton(Sender: TObject);
    procedure txtCOD_CONVENIOExit(Sender: TObject);
    procedure txtCOD_HOSPITALClickButton(Sender: TObject);
    procedure txtCOD_HOSPITALExit(Sender: TObject);
    procedure txtHabilitaEdicaoEnter(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure txtUltimoCampoDadosMedicosEnter(Sender: TObject);
    procedure txtUltimoCampoConvenioEnter(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function PesquisaNova(Sender: TObject; blnValida: boolean; Msg: boolean = true): boolean;
    function ExisteNaLista(strValor: string; var lvw: TListView): boolean;
    function GravaConvenios: boolean;
    function GravaHospitais: boolean;
    procedure CarregaConvenios;
    procedure CarregaHospitais;
    procedure CarregaHistoricos;    
    procedure ExcluiConvenios;
    procedure ExcluiHospitais;
    procedure ExcluiHistoricos;
  public
    
  end;

var
  frmCAD_MEDICO: TfrmCAD_MEDICO;

implementation

uses UPesquisa, Math;

{$R *.dfm}

procedure TfrmCAD_MEDICO.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CAD_MEDICO';
  tabPrinc.TabIndex := 0;
  lvwConvenio.Column[0].Width := 309;
  lvwConvenio.Column[1].Width := 615;
  lvwHospital.Column[0].Width := 309;
  lvwHospital.Column[1].Width := 615;
end;

procedure TfrmCAD_MEDICO.txtCOD_MEDICOEnter(Sender: TObject);
begin
  inherited;
  ProximoNumero(txtCOD_MEDICO);
end;

procedure TfrmCAD_MEDICO.txtCOD_MEDICOChange(Sender: TObject);
begin
  inherited;
  ProximoNumero(txtCOD_MEDICO);
end;

function TfrmCAD_MEDICO.PesquisaNova(Sender: TObject;
    blnValida: boolean; Msg: boolean = true): boolean;
var Edt      : TEditlabel;
    EdtN     : TEdit;
    Pesquisa : TPesquisa;
    str      : array[0..2] of string;

begin
  Edt := Sender as TEditLabel;
  EdtN:= Edt._Edit;

  if (Edt._Campo = 'COD_MEDICO') then
  begin
    str[0] := 'COD_MEDICO,NOM_MEDICO';
    str[1] := 'CAD_MEDICO';
    str[2] := EmptyStr;
  end
  else if (Edt._Campo = 'COD_CIDADE') then
  begin
    str[0] := 'COD_CIDADE,NOM_CIDADE||'+cnn.Aspas('-')+'||NOM_UF';
    str[1] := 'CAD_CIDADE';
    str[2] := EmptyStr;
  end
  else if (Edt._Campo = 'COD_ESPEC') then
  begin
    str[0] := 'COD_ESPEC,NOM_ESPEC';
    str[1] := 'CAD_ESPEC';
    str[2] := EmptyStr;
  end
  else if (Edt.Name = 'txtCOD_CONVENIO') then
  begin
    str[0] := 'COD_CONVENIO,NOM_CONVENIO';
    str[1] := 'CAD_CONVENIO';
    str[2] := EmptyStr;
  end
  else if (Edt.Name = 'txtCOD_HOSPITAL') then
  begin
    str[0] := 'COD_HOSPITAL,NOM_HOSPITAL';
    str[1] := 'CAD_HOSPITAL';
    str[2] := EmptyStr;
  end
  else
    Exit;

  Pesquisa := TPesquisa.Create;
  Result := Pesquisa.ExecutaPesquisa(blnValida,str[0],str[1],Edt,EdtN,str[2],Msg);

  {if (not Result) and (blnValida) and (Edt.Visible) and (Edt.Enabled) then
    Edt.SetFocus;}

  Pesquisa.Free;
end;


procedure TfrmCAD_MEDICO.txtCOD_MEDICOClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,false);
end;

procedure TfrmCAD_MEDICO.txtCOD_MEDICOExit(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,true,false);
  tabPrinc.TabIndex := 0;
end;

procedure TfrmCAD_MEDICO.txtCOD_CIDADEClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmCAD_MEDICO.txtCOD_CIDADEExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    txtCOD_CIDADE.SetFocus;
end;

procedure TfrmCAD_MEDICO.txtCOD_ESPECClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmCAD_MEDICO.txtCOD_ESPECExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    txtCOD_ESPEC.SetFocus;
end;

procedure TfrmCAD_MEDICO.txtCOD_ESPECEnter(Sender: TObject);
begin
  inherited;
  tabPrinc.TabIndex := 1;
end;

procedure TfrmCAD_MEDICO.txtCOD_CIDADEEnter(Sender: TObject);
begin
  inherited;
  tabPrinc.TabIndex := 0;
end;

procedure TfrmCAD_MEDICO.EditTag1Enter(Sender: TObject);
begin
  inherited;
  tabPrinc.TabIndex := 1;
  txtCOD_ESPEC.SetFocus;
end;

procedure TfrmCAD_MEDICO.btnIncluiClick(Sender: TObject);
var str: string;
begin

  if trim(txtCOD_ESPEC.Text) = EmptyStr then
  begin
    MessageDlg('O campo Especialidade deve ser preenchido.',mtWarning,[mbOK],0);
    tabPrinc.TabIndex := 1;
    txtCOD_ESPEC.SetFocus;
    Exit;
  end;

  if btnInclui.Enabled then
  begin
    str := MontaSql(tpInsert);
    GravaBanco(tpInsert,str,false);
    GravaConvenios;
    GravaHospitais;
    lvwConvenio.Items.Clear;
    lvwHospital.Items.Clear;
    lvwHistorico.Items.Clear;
    tabPrinc.TabIndex := 0;
    HabilitaEdicao(False,true);
  end;

end;

procedure TfrmCAD_MEDICO.btnAlteraClick(Sender: TObject);
var str: string;
begin

  if trim(txtCOD_ESPEC.Text) = EmptyStr then
  begin
    MessageDlg('O campo Especialidade deve ser preenchido.',mtWarning,[mbOK],0);
    tabPrinc.TabIndex := 1;
    txtCOD_ESPEC.SetFocus;
    Exit;
  end;

  if btnAltera.Enabled then
  begin
    str := MontaSql(tpUpdate);
    GravaBanco(tpUpdate,str,false);
    GravaConvenios;
    GravaHospitais;
    lvwConvenio.Items.Clear;
    lvwHospital.Items.Clear;
    lvwHistorico.Items.Clear;
    tabPrinc.TabIndex := 0;
    HabilitaEdicao(False,true);
  end;

end;

function TfrmCAD_MEDICO.ExisteNaLista(strValor: string;
  var lvw: TListView): boolean;
var
  i: integer;
begin

  Result := false;

  for i := 1 to lvw.Items.Count do
  begin
    if strValor = lvw.Items[i].Caption then
    begin
      Result := true;
      Exit;
    end;
  end;
end;

procedure TfrmCAD_MEDICO.btnIncluirConvenioClick(Sender: TObject);
var item: TListItem;
begin
  inherited;

  if trim(txtCOD_CONVENIO.Text) = EmptyStr then
  begin
    MessageDlg('Escolha um conv�nio',mtInformation,[mbOK],0);
    txtCOD_CONVENIO.SetFocus;
    Exit;
  end;

  if ExisteNaLista(txtCOD_CONVENIO.Text,TListView(lvwConvenio)) then
  begin
    MessageDlg('Conv�nio j� existente na lista.',mtInformation,[mbOK],0);
    txtCOD_CONVENIO.SetFocus;
    Exit;
  end;

  item := lvwConvenio.Items.Add;
  item.Caption := txtCOD_CONVENIO.Text;
  item.SubItems[1] := txtNOM_CONVENIO.Text

end;

procedure TfrmCAD_MEDICO.txtCOD_CONVENIOClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmCAD_MEDICO.txtCOD_CONVENIOExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    txtCOD_CONVENIO.SetFocus; 
end;

procedure TfrmCAD_MEDICO.txtCOD_HOSPITALClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmCAD_MEDICO.txtCOD_HOSPITALExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    txtCOD_HOSPITAL.SetFocus;
end;

function TfrmCAD_MEDICO.GravaConvenios: boolean;
var
  i:integer;
  str: string;
begin

  str :=
  'Delete from CAD_MED_CONV '+
  '  Where COD_MEDICO = '+txtCOD_MEDICO.Text;

  cnn.Execute(str);

  for i := 0 to lvwConvenio.Items.Count -1 do
  begin
    str :=
    'Insert Into CAD_MED_CONV(COD_MEDICO,COD_CONVENIO'+
    ') Values ('+
    txtCOD_MEDICO.Text+','+
    lvwConvenio.Items[i].Caption+')';

    cnn.Execute(str);

  end;
end;

function TfrmCAD_MEDICO.GravaHospitais: boolean;
var
  i:integer;
  str: string;
begin

  str :=
  'Delete from CAD_MED_HOSP '+
  '  Where COD_MEDICO = '+txtCOD_MEDICO.Text;

  cnn.Execute(str);

  for i := 0 to lvwHospital.Items.Count -1 do
  begin
    str :=
    'Insert Into CAD_MED_HOSP(COD_MEDICO,COD_HOSPITAL'+
    ') Values ('+
    txtCOD_MEDICO.Text+','+
    lvwHospital.Items[i].Caption+')';

    cnn.Execute(str);

  end;


end;

procedure TfrmCAD_MEDICO.CarregaConvenios;
var
  str: string;
  item: TListItem;
  ds: TDataSource;
begin

  if trim(txtCOD_MEDICO.Text) = EmptyStr then
    Exit;

  str :=
  'Select '+
  'B.COD_CONVENIO,'+
  'B.NOM_CONVENIO '+
  '  From '+
  'CAD_MED_CONV A,'+
  'CAD_CONVENIO B'+
  '  Where '+
  'A.COD_CONVENIO = B.COD_CONVENIO And '+
  'A.COD_MEDICO = '+txtCOD_MEDICO.Text +
  '  Order By B.NOM_CONVENIO ';

  cnn.ExecuteQuery(str,ds);

  lvwConvenio.Items.Clear;

  while not ds.DataSet.Eof do
  begin
    item := lvwConvenio.Items.Add;
    item.Caption := ds.DataSet.Fields[0].AsString;
    item.SubItems.Add(ds.DataSet.Fields[1].AsString);
    ds.DataSet.Next;
  end;

end;

procedure TfrmCAD_MEDICO.CarregaHospitais;
var
  str: string;
  item: TListItem;
  ds: TDataSource;
begin

  if trim(txtCOD_MEDICO.Text) = EmptyStr then
    Exit;

  str :=
  'Select '+
  'B.COD_HOSPITAL,'+
  'B.NOM_HOSPITAL||'+cnn.Aspas(' (')+'||C.NOM_CIDADE||'+cnn.Aspas('-')+'||C.NOM_UF||'+cnn.Aspas(')')+
  '  From '+
  'CAD_MED_HOSP A,'+
  'CAD_HOSPITAL B,'+
  'CAD_CIDADE C'+
  '  Where '+
  'A.COD_HOSPITAL = B.COD_HOSPITAL And '+
  'B.COD_CIDADE = C.COD_CIDADE And '+
  'A.COD_MEDICO = '+txtCOD_MEDICO.Text +
  '  Order By B.NOM_HOSPITAL ';

  cnn.ExecuteQuery(str,ds);

  lvwHospital.Items.Clear;

  while not ds.DataSet.Eof do
  begin
    item := lvwHospital.Items.Add;
    item.Caption := ds.DataSet.Fields[0].AsString;
    item.SubItems.Add(ds.DataSet.Fields[1].AsString);
    ds.DataSet.Next;
  end;
end;

procedure TfrmCAD_MEDICO.txtHabilitaEdicaoEnter(Sender: TObject);
begin
  inherited;
  CarregaConvenios;
  CarregaHospitais;
  CarregaHistoricos;
end;

procedure TfrmCAD_MEDICO.ExcluiConvenios;
var
  str: string;
begin
  if trim(txtCOD_MEDICO.Text) = EmptyStr then
    Exit;

  str :=
  'Delete from CAD_MED_CONV '+
  '  Where COD_MEDICO = '+txtCOD_MEDICO.Text;

  cnn.Execute(str);
end;

procedure TfrmCAD_MEDICO.ExcluiHospitais;
var
  str: string;
begin
  if trim(txtCOD_MEDICO.Text) = EmptyStr then
    Exit;

  str :=
  'Delete from CAD_MED_HOSP '+
  '  Where COD_MEDICO = '+txtCOD_MEDICO.Text;

  cnn.Execute(str);
end;

procedure TfrmCAD_MEDICO.ExcluiHistoricos;
var
  str: string;
begin
  if trim(txtCOD_MEDICO.Text) = EmptyStr then
    Exit;

  str :=
  'Delete from CAD_MED_HIST '+
  '  Where COD_MEDICO = '+txtCOD_MEDICO.Text;

  cnn.Execute(str);
end;

procedure TfrmCAD_MEDICO.btnExcluiClick(Sender: TObject);
begin

  ExcluiConvenios;
  ExcluiHospitais;
  ExcluiHistoricos;
  lvwConvenio.Items.Clear;
  lvwHospital.Items.Clear;
  lvwHistorico.Items.Clear;
  tabPrinc.TabIndex := 0;
  inherited;

end;

procedure TfrmCAD_MEDICO.txtUltimoCampoDadosMedicosEnter(Sender: TObject);
begin
  inherited;
  tabPrinc.ActivePage := tabConvenio;
  txtCOD_CONVENIO.SetFocus;
end;

procedure TfrmCAD_MEDICO.txtUltimoCampoConvenioEnter(Sender: TObject);
begin
  inherited;
  tabPrinc.ActivePage := tabHospital;
  txtCOD_HOSPITAL.SetFocus;
end;

procedure TfrmCAD_MEDICO.btnSairClick(Sender: TObject);
begin
  if not pnl1.Enabled then
  begin
    if Messagedlg('Cancelar?',mtConfirmation,[mbYes,mbNo],0) = MRYes then
    begin
      lvwConvenio.Items.Clear;
      lvwHospital.Items.Clear;
      lvwHistorico.Items.Clear;
      tabPrinc.TabIndex := 0;
      LimpaCampos;
    end;
  end
  else
    Close;
end;

procedure TfrmCAD_MEDICO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE: btnSairClick(Sender);
    else
      inherited;
  end;

end;

procedure TfrmCAD_MEDICO.CarregaHistoricos;
var
  str: string;
  item: TListItem;
  ds: TDataSource;
begin

  if trim(txtCOD_MEDICO.Text) = EmptyStr then
    Exit;

  str :=
  'Select '+
  'A.DAT_HISTORICO,'+
  'A.NOM_HISTORICO '+
  ' From '+
  'CAD_MED_HIST A '+
  ' Where '+
  'A.COD_MEDICO = '+txtCOD_MEDICO.Text +
  ' Order By A.DAT_HISTORICO ';

  cnn.ExecuteQuery(str,ds);

  lvwHistorico.Items.Clear;

  while not ds.DataSet.Eof do
  begin
    item := lvwHistorico.Items.Add;
    item.Caption := ds.DataSet.Fields[0].AsString;
    item.SubItems.Add(ds.DataSet.Fields[1].AsString);
    ds.DataSet.Next;
  end;

end;


end.
