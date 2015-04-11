unit Functions;

interface

uses
Windows,Messages, SysUtils, Classes, Graphics,StdCtrls, Controls;

function RightTrim(const s:String):String;
function LeftTrim(const s:String):String;
function InStr(strString : string; strFind: string): Integer; overload;
function InStr(Start: integer; Source: string; SourceToFind: string): integer; overload;
function Mid(Source: string; Start: integer; Length: integer): string;
function Left(Source: string; Length: integer): string;
function Right(Source: string; Lengths: integer): string;
function Replace(sData: String; sSubstring: String; sNewsubstring: string): String;
function Split(strString : string; strDelimitador : string = ',') : TStringList; overload;
function Split(Source, Deli: string; StringList: TStringList): TStringList; overload;
function Reverse(Line: string): string;
function Aspas(str: String): STring;
function IsEmptyStr(str: string): boolean;
function LPAD(str: string; Tamanho: integer; Completar: string): string;
function RPAD(str: string; Tamanho: integer; Completar: string): string;
function CPAD(str: string; Tamanho: integer; Completar: string): string;
function Extenso(Valor: Double): String;
function Ext3(Parte: String): String;
function StrToCur(str: string): currency;
function UltimoDiaMes(const Mes: integer; const Ano: integer): TDate; //overload;
function PrimeiroDiaMes(const Mes: integer; const Ano: integer): TDate; //overload;
//function UltimoDiaMes(const Mes: string; const Ano: string): TDate; overload;


// CONSTANTES USADAS NA FUNCAO EXTENSO //
const
  Centenas: array[1..9] of String[12] = ('CEM','DUZENTOS','TREZENTOS','QUATROCENTOS','QUINHENTOS','SEISCENTOS','SETECENTOS','OITOCENTOS','NOVECENTOS');
  Dezenas : array[2..9] of String[10] = ('VINTE','TRINTA','QUARENTA','CINQUENTA','SESSENTA','SETENTA','OITENTA','NOVENTA');
  Dez     : array[0..9] of String[10] = ('DEZ','ONZE','DOZE','TREZE','QUATORZE','QUINZE','DEZESSEIS','DEZESSETE','DEZOITO','DEZENOVE');
  Unidades: array[1..9] of String[10] = ('UM','DOIS','TRES','QUATRO','CINCO','SEIS','SETE','OITO','NOVE');
  MoedaSingular = ' REAL ';
  MoedaPlural   = ' REAIS ';
  CentSingular  = ' CENTAVO ';
  CentPlural    = ' CENTAVOS ';
  Zero          = ' ZERO ';

implementation

uses StrUtils;

function Aspas(str:String):String;

begin
  result := '''' + Replace(str,'''','') + '''';
end;

function Reverse(Line: string): string;

var
  i: integer;
  a: string;

begin
  For i := 1 To Length(Line) do
  begin
    a := Right(Line, i);
    Result := Result + Left(a, 1);
  end;
end;

function Split(Source, Deli: string; StringList: TStringList): TStringList;

var EndOfCurrentString: byte;

begin
  repeat
    EndOfCurrentString := Pos(Deli, Source);
    if EndOfCurrentString = 0 then
      StringList.add(Source)
    else
      StringList.add(Copy(Source, 1, EndOfCurrentString - 1));
    Source := Copy(Source, EndOfCurrentString + length(Deli), length(Source) - EndOfCurrentString);
  until EndOfCurrentString = 0;
  result := StringList;
end;

function Replace(sData: String; sSubstring: String; sNewsubstring: string): String;

var
  i: integer;
  lSub: Longint;
  lData: Longint;

begin
  i := 1;
  lSub := Length(sSubstring);
  lData := Length(sData);
  repeat
    i := InStr(i, sData, sSubstring);
    If i = 0 Then
    begin
//      sNewSubString := sData;
      Replace := sData;
      Exit
    end
    Else
     sData := Copy(sData, 1, i - 1) + sNewsubstring + Copy(sData, i + lSub, lData);
    i := i + lSub;
  Until i > lData;
  Replace := sData;
end;

function Left(Source: string; Length: integer): string;

begin
  Result := copy(Source,1,Length);
end;

function Right(Source: string; Lengths: integer): string;

begin
  Result := copy(source,Length(Source) - Lengths,Lengths);
end;

function Mid(Source: string; Start: integer; Length: integer): string;

begin
  Result := copy(Source,Start,Length);
end;

function InStr(Start: integer; Source: string; SourceToFind: string): integer;

begin
  Result := pos(SourceToFind,copy(Source,Start,Length(Source) - (Start - 1)));
end;

function RightTrim(const s:String):String;

var i:integer;

begin
  i:=length(s);
  while (i>0) and (s[i]<=#32) do
    Dec(i);
  result:=Copy(s,1,i);
end;

function LeftTrim(const s:String):String;

var i, L:integer;

begin
  L:=length(s);
  i:=1;
  while (i<=L) and (s[i]<=#32) do
    Inc(i);
  result:=Copy(s,i, MaxInt);
end;

function InStr(strString : string; strFind: string): Integer;
begin
  Result := Pos(strFind,strString);
end;

function Split(strString : string; strDelimitador : string = ',') : TStringList;
var
  arrStr : TStringList;
  strAux : string;
begin
  arrStr := TStringList.Create;
  strAux := strString;
  while InStr(strAux,strDelimitador) > 0 do
  begin
    arrStr.Add(Copy(strAux,1,InStr(strAux,strDelimitador)-1));
    strAux := Copy(strAux,InStr(strAux,strDelimitador)+1,Length(strAux));
  end;
  if Trim(strAux) <> '' then
    arrStr.Add(strAux);
  Result := arrStr;
end;

function IsEmptyStr(str: string): boolean;
begin
  if str = '  /  /    ' then
    Result := true
  else
    Result := (Trim(str) = EmptyStr);
end;


function LPAD(str: string; Tamanho: integer; Completar: string): string;

var i  : integer;
    aux: string;

begin

  i := Length(str);
  if i >= Tamanho then
    Result := Copy(str,1,i)
  else
    Result := DupeString(Completar,Tamanho - i) + str;

end;

function RPAD(str: string; Tamanho: integer; Completar: string): string;

var i  : integer;
    aux: string;

begin
  i := Length(str);

  if i >= Tamanho then
    Result := Copy(str,1,Tamanho)
  else
    Result := str + DupeString(Completar,Tamanho - i);
  {aux := Copy(str,0,Tamanho);

  for i := Length(str) to Tamanho-1 do
    aux := aux + Completar;

  result := aux;}
end;

function CPAD(str: string; Tamanho: integer; Completar: string): string;

var aux: string;

begin
  aux := Copy(str,0,Tamanho);

  While Length(Aux) < Tamanho - 1 do
    Aux := Completar + aux + Completar;

  if Length(Aux) < Tamanho then
    Aux := Aux + Completar;

  result := aux;
end;

Function Extenso(Valor: Double): String;

var
  ComoTexto: String;
  Parte: String;

begin
  Result := '';
  ComoTexto := FloatToStrF(Abs(Valor),ffFixed,18,2);

  While length(ComoTexto) < 15 do
    insert('0',ComoTexto,1);

  While length(ComoTexto) > 15 do
    delete(ComoTexto,1,1);

  // CALCULA OS BILH�ES //

  Parte := Ext3(copy(ComoTexto,1,3));

  if StrToInt(copy(ComoTexto,1,3)) = 1 then
    Parte := Parte + ' BILHAO '
  else
    if Parte <> '' then
      Parte := Parte + ' BILHOES ';

  Result := Parte;

  // CALCULA OS MILHOES //

  Parte := Ext3(copy(ComoTexto,4,3));

  if Parte <> '' then
  begin
    if Result <> '' then
      Result := Result + ', ';
    if StrToInt(copy(ComoTexto,4,3)) = 1 then
      Parte := Parte + ' MILHAO '
    else
      Parte := Parte + ' MILHOES ';
    Result := Result + Parte;
  end;

  // CALCULA OS MILHARES //

  Parte := Ext3(copy(ComoTexto,7,3));
  if Parte <> '' then
  begin
    if Result <> '' then
      Result := Result + ', ';
    Parte := Parte + ' MIL ';
    Result := Result + Parte;
  end;
  // CALCULA OAS UNIDADES //

  Parte := Ext3(copy(ComoTexto,10,3));

  if Parte <> '' then
  begin
    if Result <> '' then
      if Frac(Valor) = 0 then
        Result := Result + ' E '
      else
        Result := Result + ', ';
    Result := Result + Parte;
  end;

  // ACRESCENTA O TEXTO DA MOEDA //

  if Int(Valor) = 1 then
    Parte := MoedaSingular
  else
    Parte := MoedaPlural;

  if copy(ComoTexto,7,6) = '000000' then
    Parte := 'DE '+ MoedaPlural;
  Result := Result + Parte;

  // SE O VALOR FOR ZERO, LIMPA O RESULTADO //

  if int(valor) = 0 then
    Result:= '';

  // CALCULA OS CENTAVOS //

  Parte := Ext3('0' + copy(ComoTexto,14,2));
  if Parte <> '' then
  begin
    if Result <> '' then
      Result := Result + 'E ';
    if Parte = Unidades[1] then
      Parte := Parte + ' ' + CentSingular
    else
      Parte := Parte + ' ' + CentPlural;
    Result := Result + Parte;
  end;

  // SE O VALOR FOR ZERO, ASSUME A CONSTANTE ZERO //

  if Valor = 0 then
    Result := 'ZERO';
end;

Function Ext3(Parte: String): String;

var
  Base: STring;
  Digito: integer;

begin
  base := '';
  digito := StrToInt(Parte[1]);
  if digito = 0 then
    Base := ''
  else
    base := Centenas[digito];
  if (digito = 1) and (Parte > '100') then
    base := 'CENTO ';
  digito := StrToInt(Parte[2]);
  if digito = 1 then
  begin
    Digito := StrToInt(Parte[3]);
    if Base <> '' then
      base := Base + ' E ';
    base := Base + Dez[Digito];
  end
  else
  begin
    if (Base <> '' ) and (Digito > 0) then
      base := Base + ' E ';
    if Digito > 1 then
      base := Base + Dezenas[Digito];
    Digito := StrToInt(Parte[3]);
    if Digito > 0 then
    begin
      if Base <> '' then
        Base := Base + ' E ';
      Base := Base + Unidades[Digito];
    end;
  end;
  Result := Base;
end;

function StrToCur(str: string): currency;
var
  strAux: string;
begin
  if trim(str) = EmptyStr then
  begin
    Result := 0;
    Exit;
  end;
  strAux := StringReplace(str,'.','',[rfReplaceAll]);
  Result := StrToCurr(strAux);  
end;

function UltimoDiaMes(const Mes: integer; const Ano: integer): TDate;
var
  M: integer;
  A: integer;
  strM: string;
  strA: string;
  strData: string;
  Data: TDate;

begin

  M := Mes;
  A := Ano;

  M := M;
  A := A;

  if Mes > 12 then
    Exception.Create('M�S N�O PODE SER MAIOR QUE 12');

  if Mes = 12 then
  begin
    M := 1;
    A := Ano + 1;
  end;

  if Mes < 12 then
  begin
    M := Mes + 1;
    A := Ano;
  end;

  strM := IntToStr(M);
  strA := IntToStr(A);

  strData := '01/'+Lpad(strM,2,'0')+'/'+ Lpad(strA,4,'0');

  Data := StrToDate(strData);

  Data := Data - 1;

  strData := FormatDateTime('dd/mm/yyyy',Data);

  Result := Data;

end;

function PrimeiroDiaMes(const Mes: integer; const Ano: integer): TDate;
var
  M: integer;
  A: integer;
  strM: string;
  strA: string;
  strData: string;
  Data: TDate;

begin

  M := Mes;
  A := Ano;

  M := M;
  A := A;

  strM := IntToStr(M);
  strA := IntToStr(A);

  strData := '01/'+Lpad(strM,2,'0')+'/'+ Lpad(strA,4,'0');

  Data := StrToDate(strData);

  strData := FormatDateTime('dd/mm/yyyy',Data);

  Result := Data;

end;


end.
