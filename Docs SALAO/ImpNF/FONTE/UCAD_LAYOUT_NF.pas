unit UCAD_LAYOUT_NF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ufrm, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, EditLabel;

type
  TfrmCAD_LAYOUT_NF = class(Tfrm)
    edtCodLayout: TEditLabel;
    edtNomLayout: TEditLabel;
    edtQtdItemNF: TEditLabel;
    edtQtdObsNF: TEditLabel;
    edtQtdLinProx: TEditLabel;
    procedure edtCodLayoutEnter(Sender: TObject);
    procedure edtCodLayoutChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCodLayoutClickButton(Sender: TObject);
    procedure edtCodLayoutExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function PesquisaNova(Sender: TObject; blnValida: boolean; blnMsg: boolean = true): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCAD_LAYOUT_NF: TfrmCAD_LAYOUT_NF;

implementation

uses UPesquisa;

{$R *.dfm}

procedure TfrmCAD_LAYOUT_NF.edtCodLayoutEnter(Sender: TObject);
begin
  inherited;
  ProximoNumero(edtCodLayout);
end;

procedure TfrmCAD_LAYOUT_NF.edtCodLayoutChange(Sender: TObject);
begin
  inherited;
  ProximoNumero(edtCodLayout);
end;

procedure TfrmCAD_LAYOUT_NF.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CAD_LAYOUT_NF';
end;

function TfrmCAD_LAYOUT_NF.PesquisaNova(Sender: TObject; blnValida: boolean; blnMsg: boolean = true): boolean;

var Edt      : TEditlabel;
    EdtN     : TEdit;
    Pesquisa : TPesquisa;
    str      : array[0..2] of string;

begin
  Edt := Sender as TEditLabel;
  EdtN:= Edt._Edit;
  if blnValida then
    str[2] := edt._Campo + ' = ' + edt.Text;

  if Edt._Campo = 'COD_LAYOUT' then
  begin
    str[0] := 'COD_LAYOUT,NOM_LAYOUT';
    str[1] := 'CAD_LAYOUT_NF';
  end;

  Pesquisa := TPesquisa.Create;
  Result := Pesquisa.ExecutaPesquisa(blnValida,str[0],str[1],Edt,EdtN,str[2],blnMsg);
  Pesquisa.Free;
end;


procedure TfrmCAD_LAYOUT_NF.edtCodLayoutClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,false);
end;

procedure TfrmCAD_LAYOUT_NF.edtCodLayoutExit(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,true,false);
end;

procedure TfrmCAD_LAYOUT_NF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if action = cafree then
    cnn.Destroy;
end;

end.
