unit URateio;

interface

type
  TRateioItem = class (TObject)
  private
    FId: string;
    FValor: currency;
    FValorRateado: currency;
  public
    property Id: string read FId write FId;
    property Valor: currency read FValor write FValor;
    property ValorRateado: currency read FValorRateado write FValorRateado;
  end;

  TListRateioItem = class (TObject)
  private
    FItem: array of TRateioItem;
    procedure setItem(index: integer; Item: TRateioItem);
    function getItem(index: integer): TRateioItem;
  public
    property Item[index: integer]: TRateioItem read getItem write setItem;
    procedure Add(Id: string; Valor: currency); overload;
    procedure Add(const Item: TRateioItem); overload;
    procedure Del(Id: string);
    function SomaValor: currency;
    function SomaValorRateado: currency;
    function Count: integer;
  end;

  TRateio = class (TObject)
  private
    FValorTotal: currency;
    FValorRatear: currency;
    FItens: TListRateioItem;
    FMsgErro: string;
  public
    constructor Create;
    property ValorTotal: currency read FValorTotal write FValorTotal;
    property ValorRatear: currency read FValorRatear write FValorRatear;
    property MsgErro: string read FMsgErro write FMsgErro;
    property Itens: TListRateioItem read FItens write FItens;
    procedure Ratear;
  end;


implementation

uses SysUtils, Math;


{ TListRateioItem }

procedure TListRateioItem.Add(Id: string; Valor: currency);
var
  Item: TRateioItem;
begin
  Item := TRateioItem.Create;
  Item.Id := Id;
  Item.Valor := Valor;
  Item.ValorRateado := 0;
  Add(Item);
end;

procedure TListRateioItem.Add(const Item: TRateioItem);
begin
  SetLength(FItem,Length(FItem)+1);
  FItem[Length(FItem)-1] := Item;
end;

function TListRateioItem.Count: integer;
begin
  Result := Length(FItem);
end;

procedure TListRateioItem.Del(Id: string);
var P: array of TRateioItem;
    i: integer;
begin
  for i := 0 to Count -1 do
    if Id <> Item[i].Id then
    begin
      SetLength(P,Length(P)+1);
      P[Length(P)-1] := Item[i];
    end;
   for i := 0 to Length(P) -1 do
   begin
     FItem[i] := P[i];
   end;
   SetLength(FItem,Length(P));

end;

function TListRateioItem.getItem(index: integer): TRateioItem;
begin
  Result := FItem[index];
end;

procedure TListRateioItem.setItem(index: integer; Item: TRateioItem);
begin
  FItem[index] := Item;
end;

function TListRateioItem.SomaValor: currency;
var
  i: integer;
  cur: currency;
begin
  cur := 0;
  for i := 0 to Count -1 do
    cur := cur + Item[i].Valor;
  Result := cur;  
end;

function TListRateioItem.SomaValorRateado: currency;
var
  i: integer;
  cur: currency;
begin
  cur := 0;
  for i := 0 to Count -1 do
    cur := cur + Item[i].ValorRateado;
  Result := cur;
end;

{ TRateio }

constructor TRateio.Create;
begin
  FItens := TListRateioItem.Create;
end;

procedure TRateio.Ratear;
var i,maior: integer;
    cur:currency;
begin
  {if Itens.SomaValor <> ValorTotal then
  begin
    Raise Exception.Create('A soma do valor dos itens a ratear n�o � igual ao valor total.');
    Exit;
  end;}
  
  ValorTotal := Itens.SomaValor;

  cur := 0;
  maior := 0;

  for i := 0 to Itens.Count -1 do
  begin
    if ValorTotal = 0 then
      Itens.Item[i].ValorRateado := 0
    else
      Itens.Item[i].ValorRateado := RoundTo((Itens.Item[i].Valor / ValorTotal) * ValorRatear,-2);

    //GUARDA O �NDICE EM QUE O VALOR RATEADO � MAIOR
    //PARA DESCARREGAR O ARREDONDAMENTO
    if Itens.Item[i].ValorRateado > cur then
    begin
      cur := Itens.Item[i].ValorRateado;
      maior := i;
    end;
  end;

  Itens.Item[maior].ValorRateado := Itens.Item[maior].ValorRateado +
                                    ValorRatear - Itens.SomaValorRateado;
  for i := 0 to Itens.Count -1 do
    Itens.Item[i].ValorRateado := Itens.Item[i].ValorRateado + Itens.Item[i].Valor;
                                          
end;

end.
