unit UCAD_REUNIAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ufrm, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, EditLabel;

type
  TfrmCAD_REUNIAO = class(Tfrm)
    edtDAT_SEMANA: TEditLabel;
    edtNUM_CANTICO: TEditLabel;
    edtDAT_REUNIAO: TEditLabel;
    edtNUM_ASSIST: TEditLabel;
    Calendario: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure CalendarioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCAD_REUNIAO: TfrmCAD_REUNIAO;

implementation

{$R *.dfm}

procedure TfrmCAD_REUNIAO.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CAD_REUNIAO';
end;

procedure TfrmCAD_REUNIAO.CalendarioChange(Sender: TObject);
begin
  inherited;
  edtDAT_SEMANA.Text := DateToStr(Calendario.Date);
  edtDAT_SEMANA.SetFocus;
end;

end.
