﻿unit ACBrUtilTest;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils,
  {$ifdef FPC}
  fpcunit, testutils, testregistry,
  {$else}
  TestFramework,
  {$endif}
  ACBrUtil;

type

  { ParseTextTest }

  ParseTextTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure VerificarConversao;
    procedure VerificarConversaoTextoLongo;
  end;

  { LerTagXMLTest }

  LerTagXMLTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Simples;
    procedure SemIgnorarCase;
    procedure ComVariasTags;
  end;

  { SepararDadosTest }

  SepararDadosTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Simples;
    procedure TextoLongo;
    procedure MostrarChave;
    procedure ComVariasChaves;
    procedure SemFecharChave;
    procedure SemAbrirChave;
  end;

  { padLTest }

  padLTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CompletarString;
    procedure ManterString;
    procedure TruncarString;
  end;

  { padRTest }

  padRTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure CompletarString;
   procedure ManterString;
   procedure TruncarString;
  end;

  { padCTest }

  padCTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure PreencherString;
   procedure TruncarString;
  end;

  { padSTest }

  padSTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure CompletarString;
   procedure TruncarString;
   procedure SubstituirSeparadorPorEspacos;
   procedure SubstituirSeparadorPorCaracter;
  end;

  { RemoverEspacosDuplosTest }

  RemoverEspacosDuplosTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure RemoverApenasEspacosDuplos;
   procedure RemoverMaisQueDoisEspacos;
  end;

  { RemoveStringTest }

  RemoveStringTest = class(TTestCase)
  private

  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Remover;
  end;

  { RemoveStringsTest }

  RemoveStringsTest = class(TTestCase)
  private
    StringsToRemove: array [1..5] of AnsiString;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure TextoSimples;
   procedure TextoLongo;
  end;

  { StripHTMLTest }

  StripHTMLTest = class(TTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure TesteSimples;
   procedure TesteCompleto;
  end;

  { CompareVersionsTest }

  CompareVersionsTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure VersaoIgual;
   procedure VersaoMaior;
   procedure VersaoMenor;
   procedure TrocarDelimitador;
  end;

  { IfEmptyThenTest }

  IfEmptyThenTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure RetornarValorNormal;
   procedure SeVazioRetornaValorPadrao;
   procedure RealizarDoTrim;
   procedure NaoRealizarDoTrim;
  end;

  { Poem_ZerosTest }

  Poem_ZerosTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure ColocarZeros;
  end;

  { IntToStrZeroTest }

  IntToStrZeroTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure AdicionarZerosAoNumero;
   procedure TamanhoMenorQueLimite;
  end;

  { FloatToIntStrTest }

  FloatToIntStrTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Normal;
   procedure ValorSemDecimais;
   procedure MudandoPadraoDeDecimais;
   procedure EnviandoDecimaisDiferenteDoPadrao;
  end;

  { FloatToStringTest }

  FloatToStringTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Normal;
   procedure ComDecimaisZerados;
  end;

  { StringToFloatTest }

  StringToFloatTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Normal;
  end;

  { StringToFloatDefTest }

  StringToFloatDefTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Normal;
   procedure ValorDefault;
  end;

  { StringToDateTimeTest }

  StringToDateTimeTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Data;
   procedure Hora;
   procedure DataEHora;
  end;

  { StringToDateTimeDefTest }

  StringToDateTimeDefTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Data;
   procedure Hora;
   procedure DataEHora;
   procedure ValorDefault;
  end;

  { StoDTest }

  StoDTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Normal;
   procedure DataInvalida;
  end;

  { DtoSTest }

  DtoSTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Data;
  end;

  { DTtoSTest }

  DTtoSTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure DataEHora;
   procedure DataSemHora;
  end;

  { StrIsAlphaTest }

  StrIsAlphaTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
   procedure Texto;
   procedure TextoComNumeros;
   procedure TextoComCaractersEspeciais;
   procedure TextoComCaractersAcentuados;
  end;

  { StrIsAlphaNumTest }

  StrIsAlphaNumTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Texto;
    procedure TextoComNumeros;
    procedure TextoComCaractersEspeciais;
    procedure TextoComCaractersAcentuados;
  end;

  { StrIsNumberTest }

  StrIsNumberTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Texto;
    procedure Numeros;
    procedure TextoComNumeros;
    procedure TextoComCaractersEspeciais;
  end;

  { IsNumberTest }

  IsNumberTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Numeros;
  end;

  { CharIsAlphaTest }

  CharIsAlphaTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Caracter;
    procedure Numero;
    procedure CaracterEspecial;
  end;

  { CharIsAlphaNumTest }

  CharIsAlphaNumTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Caracter;
    procedure Numero;
    procedure CaracterEspecial;
  end;

  { CharIsNumTest }

  CharIsNumTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Caracter;
    procedure Numero;
    procedure CaracterEspecial;
  end;

  { OnlyNumberTest }

  OnlyNumberTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Texto;
    procedure Numeros;
    procedure TextoComNumeros;
    procedure TextoComCaractersEspeciais;
  end;

  { OnlyAlphaTest }

  OnlyAlphaTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Texto;
    procedure Numeros;
    procedure TextoComNumeros;
    procedure TextoComCaractersEspeciais;
  end;

  { OnlyAlphaNumTest }

  OnlyAlphaNumTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Texto;
    procedure Numeros;
    procedure TextoComNumeros;
    procedure TextoComCaractersEspeciais;
  end;

  { StrIsIPTest }

  StrIsIPTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Normal;
    procedure SemPonto;
  end;

  { TiraAcentosTest }

  TiraAcentosTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Normal;
  end;

  { TiraAcentoTest }

  TiraAcentoTest = class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Normal;
  end;

implementation

  uses Math;

{ TiraAcentoTest }

procedure TiraAcentoTest.SetUp;
begin
  inherited SetUp;
end;

procedure TiraAcentoTest.TearDown;
begin
  inherited TearDown;
end;

procedure TiraAcentoTest.Normal;
begin
   CheckEquals('a', TiraAcento('á'));
   CheckEquals('a', TiraAcento('à'));
   CheckEquals('a', TiraAcento('ã'));
   CheckEquals('a', TiraAcento('ä'));
   CheckEquals('a', TiraAcento('â'));
   CheckEquals('A', TiraAcento('À'));
   CheckEquals('A', TiraAcento('Á'));
   CheckEquals('A', TiraAcento('Ã'));
   CheckEquals('A', TiraAcento('Ä'));
   CheckEquals('A', TiraAcento('Â'));
   CheckEquals('e', TiraAcento('è'));
   CheckEquals('e', TiraAcento('é'));
   CheckEquals('e', TiraAcento('ë'));
   CheckEquals('e', TiraAcento('ê'));
   CheckEquals('E', TiraAcento('È'));
   CheckEquals('E', TiraAcento('É'));
   CheckEquals('E', TiraAcento('Ë'));
   CheckEquals('E', TiraAcento('Ê'));
   CheckEquals('i', TiraAcento('ì'));
   CheckEquals('i', TiraAcento('í'));
   CheckEquals('i', TiraAcento('ï'));
   CheckEquals('i', TiraAcento('î'));
   CheckEquals('I', TiraAcento('Ì'));
   CheckEquals('I', TiraAcento('Í'));
   CheckEquals('I', TiraAcento('Ï'));
   CheckEquals('I', TiraAcento('Î'));
   CheckEquals('o', TiraAcento('ò'));
   CheckEquals('o', TiraAcento('ó'));
   CheckEquals('o', TiraAcento('õ'));
   CheckEquals('o', TiraAcento('ö'));
   CheckEquals('o', TiraAcento('ô'));
   CheckEquals('O', TiraAcento('Ò'));
   CheckEquals('O', TiraAcento('Ó'));
   CheckEquals('O', TiraAcento('Õ'));
   CheckEquals('O', TiraAcento('Ö'));
   CheckEquals('O', TiraAcento('Ô'));
   CheckEquals('u', TiraAcento('ù'));
   CheckEquals('u', TiraAcento('ú'));
   CheckEquals('u', TiraAcento('ü'));
   CheckEquals('u', TiraAcento('û'));
   CheckEquals('U', TiraAcento('Ù'));
   CheckEquals('U', TiraAcento('Ú'));
   CheckEquals('U', TiraAcento('Ü'));
   CheckEquals('U', TiraAcento('Û'));
   CheckEquals('c', TiraAcento('ç'));
   CheckEquals('C', TiraAcento('Ç'));
   CheckEquals('n', TiraAcento('ñ'));
   CheckEquals('N', TiraAcento('Ñ'));
end;

{ TiraAcentosTest }

procedure TiraAcentosTest.SetUp;
begin
  inherited SetUp;
end;

procedure TiraAcentosTest.TearDown;
begin
  inherited TearDown;
end;

procedure TiraAcentosTest.Normal;
begin
  //CheckEquals('TesteACBrUtil', TiraAcentos('TêstéÃCBrÜtìl'));
end;

{ StrIsIPTest }

procedure StrIsIPTest.SetUp;
begin
  inherited SetUp;
end;

procedure StrIsIPTest.TearDown;
begin
  inherited TearDown;
end;

procedure StrIsIPTest.Normal;
begin
  CheckTrue(StrIsIP('192.168.0.1'));
end;

procedure StrIsIPTest.SemPonto;
begin
   CheckFalse(StrIsIP('19216801'));
end;

{ OnlyAlphaNumTest }

procedure OnlyAlphaNumTest.SetUp;
begin
  inherited SetUp;
end;

procedure OnlyAlphaNumTest.TearDown;
begin
  inherited TearDown;
end;

procedure OnlyAlphaNumTest.Texto;
begin
  CheckEquals('TesteACBr', OnlyAlphaNum('TesteACBr'));
end;

procedure OnlyAlphaNumTest.Numeros;
begin
  CheckEquals('12345', OnlyAlphaNum('12345'));
end;

procedure OnlyAlphaNumTest.TextoComNumeros;
begin
  CheckEquals('TesteACBr12345', OnlyAlphaNum('TesteACBr12345'));
end;

procedure OnlyAlphaNumTest.TextoComCaractersEspeciais;
begin
  CheckEquals('TesteACBr12345', OnlyAlphaNum('T!e@s#t$e%A&C*B(r)1_2-3=4+5"'));
end;

{ OnlyAlphaTest }

procedure OnlyAlphaTest.SetUp;
begin
  inherited SetUp;
end;

procedure OnlyAlphaTest.TearDown;
begin
  inherited TearDown;
end;

procedure OnlyAlphaTest.Texto;
begin
  CheckEquals('TesteACBr', OnlyAlpha('TesteACBr'));
end;

procedure OnlyAlphaTest.Numeros;
begin
  CheckEquals('', OnlyAlpha('12345'));
end;

procedure OnlyAlphaTest.TextoComNumeros;
begin
   CheckEquals('TesteACBr', OnlyAlpha('TesteACBr12345'));
end;

procedure OnlyAlphaTest.TextoComCaractersEspeciais;
begin
   CheckEquals('TesteACBr', OnlyAlpha('T!e@s#t$e%A&C*B(r)'));
end;

{ OnlyNumberTest }

procedure OnlyNumberTest.SetUp;
begin
  inherited SetUp;
end;

procedure OnlyNumberTest.TearDown;
begin
  inherited TearDown;
end;

procedure OnlyNumberTest.Texto;
begin
   CheckEquals('', OnlyNumber('TesteACBr'));
end;

procedure OnlyNumberTest.Numeros;
begin
   CheckEquals('12345', OnlyNumber('12345'));
end;

procedure OnlyNumberTest.TextoComNumeros;
begin
   CheckEquals('12345', OnlyNumber('TesteACBr12345'));
end;

procedure OnlyNumberTest.TextoComCaractersEspeciais;
begin
  CheckEquals('12345', OnlyNumber('!1@2#34$5%'));
end;

{ CharIsNumTest }

procedure CharIsNumTest.SetUp;
begin
  inherited SetUp;
end;

procedure CharIsNumTest.TearDown;
begin
  inherited TearDown;
end;

procedure CharIsNumTest.Caracter;
begin
  CheckFalse(CharIsNum('A'));
end;

procedure CharIsNumTest.Numero;
begin
  CheckTrue(CharIsNum('1'));
end;

procedure CharIsNumTest.CaracterEspecial;
begin
  CheckFalse(CharIsNum('#'));
end;

{ CharIsAlphaNumTest }

procedure CharIsAlphaNumTest.SetUp;
begin
  inherited SetUp;
end;

procedure CharIsAlphaNumTest.TearDown;
begin
  inherited TearDown;
end;

procedure CharIsAlphaNumTest.Caracter;
begin
  CheckTrue(CharIsAlphaNum('A'));
end;

procedure CharIsAlphaNumTest.Numero;
begin
  CheckTrue(CharIsAlphaNum('1'));
end;

procedure CharIsAlphaNumTest.CaracterEspecial;
begin
  CheckFalse(CharIsAlphaNum('#'));
end;

{ CharIsAlphaTest }

procedure CharIsAlphaTest.SetUp;
begin
  inherited SetUp;
end;

procedure CharIsAlphaTest.TearDown;
begin
  inherited TearDown;
end;

procedure CharIsAlphaTest.Caracter;
begin
  CheckTrue(CharIsAlpha('A'));
end;

procedure CharIsAlphaTest.Numero;
begin
  CheckFalse(CharIsAlpha('1'));
end;

procedure CharIsAlphaTest.CaracterEspecial;
begin
  CheckFalse(CharIsAlpha('#'));
end;

{ IsNumberTest }

procedure IsNumberTest.SetUp;
begin
  inherited SetUp;
end;

procedure IsNumberTest.TearDown;
begin
  inherited TearDown;
end;

procedure IsNumberTest.Numeros;
var
  v:Variant;
begin
  v := 123.45;
  Checktrue(v);
end;

{ StrIsNumberTest }

procedure StrIsNumberTest.SetUp;
begin
  inherited SetUp;
end;

procedure StrIsNumberTest.TearDown;
begin
  inherited TearDown;
end;

procedure StrIsNumberTest.Texto;
begin
  CheckFalse(StrIsNumber('TesteACBrUtil'));
end;

procedure StrIsNumberTest.Numeros;
begin
  CheckTrue(StrIsNumber('0123456789'));
end;

procedure StrIsNumberTest.TextoComNumeros;
begin
   CheckFalse(StrIsNumber('TesteACBrUtil1234'));
end;

procedure StrIsNumberTest.TextoComCaractersEspeciais;
begin
   CheckFalse(StrIsNumber('_%#$@$*&!""'));
end;


{ StrIsAlphaNumTest }

procedure StrIsAlphaNumTest.SetUp;
begin
  inherited SetUp;
end;

procedure StrIsAlphaNumTest.TearDown;
begin
  inherited TearDown;
end;

procedure StrIsAlphaNumTest.Texto;
begin
  CheckTrue(StrIsAlphaNum('TesteACBrUtil'));
end;

procedure StrIsAlphaNumTest.TextoComNumeros;
begin
  CheckTrue(StrIsAlphaNum('TesteACBrUtil1234'));
end;

procedure StrIsAlphaNumTest.TextoComCaractersEspeciais;
begin
  CheckFalse(StrIsAlphaNum('_%#$@$*&!""'));
end;

procedure StrIsAlphaNumTest.TextoComCaractersAcentuados;
begin
  CheckFalse(StrIsAlphaNum('TesteACBrÃštil'));
end;

{ StrIsAlphaTest }

procedure StrIsAlphaTest.SetUp;
begin
  inherited SetUp;
end;

procedure StrIsAlphaTest.TearDown;
begin
  inherited TearDown;
end;

procedure StrIsAlphaTest.Texto;
begin
  CheckTrue(StrIsAlpha('TesteACBrUtil'));
end;

procedure StrIsAlphaTest.TextoComNumeros;
begin
  CheckFalse(StrIsAlpha('TesteACBrUtil1234'));
end;

procedure StrIsAlphaTest.TextoComCaractersEspeciais;
begin
  CheckFalse(StrIsAlpha('_%#$@$*&!""'));
end;

procedure StrIsAlphaTest.TextoComCaractersAcentuados;
begin
  CheckFalse(StrIsAlpha('TesteACBrÃštil'));
end;

{ DTtoSTest }

procedure DTtoSTest.SetUp;
begin
  inherited SetUp;
end;

procedure DTtoSTest.TearDown;
begin
  inherited TearDown;
end;

procedure DTtoSTest.DataEHora;
var
  Date: TDateTime;
begin
  Date := StrToDateTime('14/01/2015 12:51:49');
  CheckEquals('20150114125149', DTtoS(Date));;
end;

procedure DTtoSTest.DataSemHora;
var
  Date: TDateTime;
begin
  Date := StrToDate('14/01/2015');
  CheckEquals('20150114000000', DTtoS(Date));
end;

{ DtoSTest }

procedure DtoSTest.SetUp;
begin
  inherited SetUp;
end;

procedure DtoSTest.TearDown;
begin
  inherited TearDown;
end;

procedure DtoSTest.Data;
var
  Date: TDateTime;
begin
  Date := StrToDate('14/01/2015');
  CheckEquals('20150114', DtoS(Date));
end;

{ StoDTest }

procedure StoDTest.SetUp;
begin
  inherited SetUp;
end;

procedure StoDTest.TearDown;
begin
  inherited TearDown;
end;

procedure StoDTest.Normal;
var
  Date: TDateTime;
begin
  Date := StrToDateTime('14/01/2015 16:28:12');
  CheckEquals(Date, StoD('20150114162812'));
end;

procedure StoDTest.DataInvalida;
begin
  CheckEquals(0, StoD('DataInvalida'));
end;

{ StringToDateTimeDefTest }

procedure StringToDateTimeDefTest.SetUp;
begin
  inherited SetUp;
end;

procedure StringToDateTimeDefTest.TearDown;
begin
  inherited TearDown;
end;

procedure StringToDateTimeDefTest.Data;
var
  Date: TDateTime;
begin
  Date := StrToDate('01/01/2015');
  CheckEquals(Date, StringToDateTimeDef('01/01/2015', Date));
end;

procedure StringToDateTimeDefTest.Hora;
var
  Date: TDateTime;
begin
  Date := StrToTime('12:45:12');
  CheckEquals(Date, StringToDateTimeDef('12:45:12', Date));
end;

procedure StringToDateTimeDefTest.DataEHora;
var
  Date: TDateTime;
begin
  Date := StrToDateTime('14/01/2015 12:45:12');
  CheckEquals(Date, StringToDateTimeDef('14/01/2015 12:45:12', Date));
end;

procedure StringToDateTimeDefTest.ValorDefault;
var
  Date: TDateTime;
begin
  Date := StrToDateTime('14/01/2015 12:45:12');
  CheckEquals(Date, StringToDateTimeDef('01-01-2001 00:01:12', Date));
end;

{ StringToDateTimeTest }

procedure StringToDateTimeTest.SetUp;
begin
  inherited SetUp;
end;

procedure StringToDateTimeTest.TearDown;
begin
  inherited TearDown;
end;

procedure StringToDateTimeTest.Data;
var
  Date: TDateTime;
begin
  Date := StrToDate('01/01/2015');
  CheckEquals(Date, StringToDateTime('01/01/2015'));
end;

procedure StringToDateTimeTest.Hora;
var
  Date: TDateTime;
begin
  Date := StrToTime('12:45:12');
  CheckEquals(Date, StringToDateTime('12:45:12'));
end;

procedure StringToDateTimeTest.DataEHora;
var
  Date: TDateTime;
begin
  Date := StrToDateTime('14/01/2015 12:45:12');
  CheckEquals(Date, StringToDateTime('14/01/2015 12:45:12'));
end;

{ StringToFloatDefTest }

procedure StringToFloatDefTest.SetUp;
begin
  inherited SetUp;
end;

procedure StringToFloatDefTest.TearDown;
begin
  inherited TearDown;
end;

procedure StringToFloatDefTest.Normal;
//var
//  t: Double;
begin
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 1));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.1));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.01));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.001));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.0001));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.00001));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.000001));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.0000001));
  CheckTrue(SameValue(123.45, StringToFloatDef('123,45', 10.00), 0.00000000001));
//  t:= 123.45;
//  CheckEquals(t, StringToFloatDef('123,45', 10.00));
end;

procedure StringToFloatDefTest.ValorDefault;
begin
  CheckEquals(123.45, StringToFloatDef('ewerwt', 123.45));
end;

{ StringToFloatTest }

procedure StringToFloatTest.SetUp;
begin
  inherited SetUp;
end;

procedure StringToFloatTest.TearDown;
begin
  inherited TearDown;
end;

procedure StringToFloatTest.Normal;
begin
  CheckEquals(123.45, StringToFloat('123,45'));
end;


{ FloatToStringTest }

procedure FloatToStringTest.SetUp;
begin
  inherited SetUp;
end;

procedure FloatToStringTest.TearDown;
begin
  inherited TearDown;
end;

procedure FloatToStringTest.Normal;
begin
  CheckEquals('115.89', FloatToString(115.89));
end;

procedure FloatToStringTest.ComDecimaisZerados;
begin
  CheckEquals('115', FloatToString(115.00));
end;

{ FloatToIntStrTest }

procedure FloatToIntStrTest.SetUp;
begin
  inherited SetUp;
end;

procedure FloatToIntStrTest.TearDown;
begin
  inherited TearDown;
end;

procedure FloatToIntStrTest.Normal;
begin
  CheckEquals('12345', FloatToIntStr(123.45));
end;

procedure FloatToIntStrTest.ValorSemDecimais;
begin
  CheckEquals('1234500', FloatToIntStr(12345));
end;

procedure FloatToIntStrTest.MudandoPadraoDeDecimais;
begin
  CheckEquals('12345000', FloatToIntStr(123.45, 5));
end;

procedure FloatToIntStrTest.EnviandoDecimaisDiferenteDoPadrao;
begin
  CheckEquals('12345', FloatToIntStr(123.453));
end;

{ IntToStrZeroTest }

procedure IntToStrZeroTest.SetUp;
begin
  inherited SetUp;
end;

procedure IntToStrZeroTest.TearDown;
begin
  inherited TearDown;
end;

procedure IntToStrZeroTest.AdicionarZerosAoNumero;
begin
  CheckEquals('0000000123', IntToStrZero(123, 10));
end;

procedure IntToStrZeroTest.TamanhoMenorQueLimite;
begin
  CheckEquals('98', IntToStrZero(987, 2));
end;

{ Poem_ZerosTest }

procedure Poem_ZerosTest.SetUp;
begin
  inherited SetUp;
end;

procedure Poem_ZerosTest.TearDown;
begin
  inherited TearDown;
end;

procedure Poem_ZerosTest.ColocarZeros;
begin
  CheckEquals('000000TesteACBr', Poem_Zeros('TesteACBr', 15));
  CheckEquals('000000000000000', Poem_Zeros('         ', 15));
end;

{ IfEmptyThenTest }

procedure IfEmptyThenTest.SetUp;
begin
  inherited SetUp;
end;

procedure IfEmptyThenTest.TearDown;
begin
  inherited TearDown;
end;

procedure IfEmptyThenTest.RetornarValorNormal;
begin
  CheckEquals('ACBrTeste', IfEmptyThen('ACBrTeste', 'ValorPadrao'));
end;

procedure IfEmptyThenTest.SeVazioRetornaValorPadrao;
begin
  CheckEquals('ValorPadrao', IfEmptyThen('', 'ValorPadrao'));
end;

procedure IfEmptyThenTest.RealizarDoTrim;
begin
  CheckEquals('ValorPadrao', IfEmptyThen('      ', 'ValorPadrao', true));
  CheckEquals('ValorPadrao', IfEmptyThen('      ', 'ValorPadrao'));
end;

procedure IfEmptyThenTest.NaoRealizarDoTrim;
begin
  CheckEquals('ACBrTeste  ', IfEmptyThen('ACBrTeste  ', 'ValorPadrao', false));
end;

{ CompareVersionsTest }

procedure CompareVersionsTest.SetUp;
begin
  inherited SetUp;
end;

procedure CompareVersionsTest.TearDown;
begin
  inherited TearDown;
end;

procedure CompareVersionsTest.VersaoIgual;
begin
   CheckEquals(0, CompareVersions('1.3.1' , '1.3.1'));
end;

procedure CompareVersionsTest.VersaoMaior;
begin
   CheckEquals(11, CompareVersions('1.3.4' , '1.2.1'));
end;

procedure CompareVersionsTest.VersaoMenor;
begin
   CheckEquals(-11, CompareVersions('1.2.1' , '1.3.4'));
end;

procedure CompareVersionsTest.TrocarDelimitador;
begin
   CheckEquals(-109, CompareVersions('1-4-9', '3-8-7', '-'));
end;

{ StripHTMLTest }

procedure StripHTMLTest.SetUp;
begin
  inherited SetUp;
end;

procedure StripHTMLTest.TearDown;
begin
  inherited TearDown;
end;

procedure StripHTMLTest.TesteSimples;
begin
  CheckEquals('Teste string em html', StripHTML('<br><b>Teste string em html</b><br>'));
end;

procedure StripHTMLTest.TesteCompleto;
begin
  CheckEquals('FPCUnit de TestesACBrUtil, Testes Unitários', StripHTML('<!DOCTYPE html>'
                           +'<html>'
                               +'<head>'
                                   +'FPCUnit de Testes'
                               +'</head>'
                               +'<body>'
                                   +'ACBrUtil, Testes Unitários'
                               +'</body>'
                           +'</html>'));
end;

{ RemoveStringsTest }

procedure RemoveStringsTest.SetUp;
begin
  StringsToRemove[1] := 'a';
  StringsToRemove[2] := 'b';
  StringsToRemove[3] := 'c';
  StringsToRemove[4] := 'te';
  StringsToRemove[5] := 'AC';
end;

procedure RemoveStringsTest.TearDown;
begin
  inherited TearDown;
end;

procedure RemoveStringsTest.TextoSimples;
begin
  CheckEquals('s', RemoveStrings('testeabc', StringsToRemove));
end;

procedure RemoveStringsTest.TextoLongo;
begin
  CheckEquals('Tes Unitrio BrUtil ', RemoveStrings('Teste Unitario ACBrUtil ', StringsToRemove));
end;

{ RemoveStringTest }

procedure RemoveStringTest.SetUp;
begin
  inherited SetUp;
end;

procedure RemoveStringTest.TearDown;
begin
  inherited TearDown;
end;

procedure RemoveStringTest.Remover;
begin
  CheckEquals('TstACBr', RemoveString('e', 'TesteACBr'));
  CheckEquals('#####', RemoveString('ACBr', '#ACBr#ACBr#ACBr#ACBr#'));
end;

{ RemoverEspacosDuplosTest }

procedure RemoverEspacosDuplosTest.SetUp;
begin
  inherited SetUp;
end;

procedure RemoverEspacosDuplosTest.TearDown;
begin
  inherited TearDown;
end;

procedure RemoverEspacosDuplosTest.RemoverApenasEspacosDuplos;
begin
  CheckEquals('Teste ACBr', RemoverEspacosDuplos('  Teste  ACBr  '));
end;

procedure RemoverEspacosDuplosTest.RemoverMaisQueDoisEspacos;
begin
  CheckEquals('Teste ACBr Com FPCUnit', RemoverEspacosDuplos('Teste    ACBr Com  FPCUnit     '));
end;

{ padSTest }

procedure padSTest.SetUp;
begin
  inherited SetUp;
end;

procedure padSTest.TearDown;
begin
  inherited TearDown;
end;

procedure padSTest.CompletarString;
begin
  CheckEquals('TesteACBrZZZZZZ', padS('TesteACBr', 15, '|', 'Z'));
  CheckEquals('TesteACBr      ', padS('TesteACBr', 15, '|'));
end;

procedure padSTest.TruncarString;
begin
  CheckEquals('TesteACBr', padS('TesteACBrZZZZZZ', 9, '|'));
end;

procedure padSTest.SubstituirSeparadorPorEspacos;
begin
  CheckEquals(' Teste Unitario ACBr ', padS('|Teste|Unitario|ACBr|', 21, '|'));
  CheckEquals('   Teste   Unitario   ACBr    ', padS('|Teste|Unitario|ACBr|', 30, '|'));
end;

procedure padSTest.SubstituirSeparadorPorCaracter;
begin
  CheckEquals('ZTesteZUnitarioZACBrZ', padS('|Teste|Unitario|ACBr|', 21, '|', 'Z'));
  CheckEquals('ZZZTesteZZZUnitarioZZZACBrZZZZ', padS('|Teste|Unitario|ACBr|', 30, '|', 'Z'));
end;

{ padCTest }

procedure padCTest.SetUp;
begin
  inherited SetUp;
end;

procedure padCTest.TearDown;
begin
  inherited TearDown;
end;

procedure padCTest.PreencherString;
begin
  CheckEquals('ZZZTESTEZZZZ', padC('TESTE', 12, 'Z'));
  CheckEquals('ZZZZTESTEZZZZ', padC('TESTE', 13, 'Z'));
  CheckEquals('    TESTE    ', padC('TESTE', 13));
end;

procedure padCTest.TruncarString;
begin
  CheckEquals('TesteACBr', padC('TesteACBrUtil', 9));
end;

{ padRTest }

procedure padRTest.SetUp;
begin
  inherited SetUp;
end;

procedure padRTest.TearDown;
begin
  inherited TearDown;
end;

procedure padRTest.CompletarString;
begin
  CheckEquals('ZZZACBrCompletaString', padR('ACBrCompletaString', 21, 'Z'));
  CheckEquals('   ACBrCompletaString', padR('ACBrCompletaString', 21));
end;

procedure padRTest.ManterString;
begin
  CheckEquals('ACBrMantemString', padR('ACBrMantemString', 16, 'Z'));
end;

procedure padRTest.TruncarString;
begin
  CheckEquals('TruncaString', padR('ACBrTruncaString', 12, 'Z'));
end;

{ padLTest }

procedure padLTest.SetUp;
begin
  inherited SetUp;
end;

procedure padLTest.TearDown;
begin
  inherited TearDown;
end;

procedure padLTest.CompletarString;
begin
  CheckEquals('ACBrCompletaStringZZZ', padL('ACBrCompletaString', 21, 'Z'));
  CheckEquals('ACBrCompletaString   ', padL('ACBrCompletaString', 21));
end;

procedure padLTest.ManterString;
begin
  CheckEquals('ACBrMantemString', padL('ACBrMantemString', 16, 'Z'));
end;

procedure padLTest.TruncarString;
begin
  CheckEquals('ACBrTrunca', padL('ACBrTruncaString', 10, 'Z'));
end;

{ SepararDadosTest }

procedure SepararDadosTest.SetUp;
begin
  Inherited SetUp;
end;

procedure SepararDadosTest.TearDown;
begin
  Inherited TearDown;
end;

procedure SepararDadosTest.Simples;
begin
  CheckEquals('Teste Simples', SeparaDados('<ACBr>Teste Simples</ACBr>', 'ACBr'));
  CheckEquals('Teste     Simples', SeparaDados('<ACBr>Teste     Simples</ACBr>', 'ACBr'));
  CheckEquals('TesteSimples', SeparaDados('<ACBr>TesteSimples</ACBr>', 'ACBr'));
end;

procedure SepararDadosTest.TextoLongo;
begin
  CheckEquals('ACBr Util', SeparaDados('<ACBrUtil>Teste com texto longo <b>ACBr Util</b> feito por DJSystem</ACBrUtil>', 'b'));
  CheckEquals('#ACBrUtil', SeparaDados('<ACBrUtil>Teste com texto longo <b>#ACBrUtil</b> feito por DJSystem</ACBrUtil>', 'b'));
end;

procedure SepararDadosTest.MostrarChave;
begin
  CheckEquals('<ACBr>Teste Simples</ACBr>', SeparaDados('<ACBr>Teste Simples</ACBr>', 'ACBr',  true));
  CheckEquals('<ACBrTeste>Teste     Simples</ACBrTeste>', SeparaDados('<ACBrTeste>Teste     Simples</ACBrTeste>', 'ACBrTeste', true));
  CheckEquals('<ACBr>TesteSimples</ACBr>', SeparaDados('<ACBr>TesteSimples</ACBr>', 'ACBr', true));
  CheckEquals('<b>ACBr Util</b>', SeparaDados('<ACBrUtil>Teste com texto longo <b>ACBr Util</b> feito por DJSystem', 'b', true));
  CheckEquals('<u>#ACBrUtil</u>', SeparaDados('<ACBrUtil>Teste com texto longo <u>#ACBrUtil</u> feito por DJSystem', 'u', true));
end;

procedure SepararDadosTest.ComVariasChaves;
begin
  CheckEquals('ACBrUtil', SeparaDados('<ACBr>Teste <ACBrTeste>ACBrUtil</ACBrTeste> com <ACBrTeste>FPCUnit</ACBrTeste></ACBr>', 'ACBrTeste'));
end;

procedure SepararDadosTest.SemFecharChave;
begin
  CheckEquals('', SeparaDados('<ACBrUtil>Teste com texto longo <b>ACBr Util</b> realizado por FPCUnit', 'ACBrUtil'));
end;

procedure SepararDadosTest.SemAbrirChave;
begin
  CheckEquals('', SeparaDados('Teste com texto longo <b>ACBr Util</b> realizado por FPCUnit</ACBrUtil>', 'ACBrUtil'));
end;

{ LerTagXMLTest }

procedure LerTagXMLTest.SetUp;
begin
  inherited SetUp;
end;

procedure LerTagXMLTest.TearDown;
begin
  inherited TearDown;
end;

procedure LerTagXMLTest.Simples;
begin
  CheckEquals('Teste Simples', LerTagXML('<ACBr>Teste Simples</ACBr>', 'acbr'));
end;

procedure LerTagXMLTest.SemIgnorarCase;
begin
  CheckEquals('Teste sem ignorar case', LerTagXML('<ACBr>Teste sem ignorar case</ACBr>', 'ACBr', false));
  CheckEquals('', LerTagXML('<ACBr>Teste sem ignorar case</ACBr>', 'acbr', false));
  CheckEquals('Ler Aqui', LerTagXML('<ACBr>Teste sem <acbr>Ler Aqui</acbr> ignorar case</ACBr>', 'acbr', false));
end;

procedure LerTagXMLTest.ComVariasTags;
begin
  CheckEquals('mais um teste', LerTagXML('<ACBr> teste <br> outro teste </br> <b>mais um teste</b> </ACBr>', 'b'));
end;

{ ParseTextTest }

procedure ParseTextTest.SetUp;
begin
  inherited SetUp;
end;

procedure ParseTextTest.TearDown;
begin
  inherited TearDown;
end;

procedure ParseTextTest.VerificarConversao;
begin
  CheckEquals('&', ParseText('&amp;'));
  CheckEquals('<', ParseText('&lt;'));
  CheckEquals('>', ParseText('&gt;'));
  CheckEquals('"', ParseText('&quot;'));
  CheckEquals(#39, ParseText('&#39;'));
  CheckEquals('á', ParseText('&aacute;', True, False));
  CheckEquals('Á', ParseText('&Aacute;', True, False));
  CheckEquals('â', ParseText('&acirc;',  True, False));
  CheckEquals('Â', ParseText('&Acirc;',  True, False));
  CheckEquals('ã', ParseText('&atilde;', True, False));
  CheckEquals('Ã', ParseText('&Atilde;', True, False));
  CheckEquals('à', ParseText('&agrave;', True, False));
  CheckEquals('À', ParseText('&Agrave;', True, False));
  CheckEquals('é', ParseText('&eacute;', True, False));
  CheckEquals('É', ParseText('&Eacute;', True, False));
  CheckEquals('ê', ParseText('&ecirc;',  True, False));
  CheckEquals('Ê', ParseText('&Ecirc;',  True, False));
  CheckEquals('í', ParseText('&iacute;', True, False));
  CheckEquals('Í', ParseText('&Iacute;', True, False));
  CheckEquals('ó', ParseText('&oacute;', True, False));
  CheckEquals('Ó', ParseText('&Oacute;', True, False));
  CheckEquals('õ', ParseText('&otilde;', True, False));
  CheckEquals('Õ', ParseText('&Otilde;', True, False));
  CheckEquals('ô', ParseText('&ocirc;',  True, False));
  CheckEquals('Ô', ParseText('&Ocirc;',  True, False));
  CheckEquals('ú', ParseText('&uacute;', True, False));
  CheckEquals('Ú', ParseText('&Uacute;', True, False));
  CheckEquals('ü', ParseText('&uuml;',   True, False));
  CheckEquals('Ü', ParseText('&Uuml;',   True, False));
  CheckEquals('ç', ParseText('&ccedil;', True, False));
  CheckEquals('Ç', ParseText('&Ccedil;', True, False));
  CheckEquals('''', ParseText('&apos;',  True, False));
end;

procedure ParseTextTest.VerificarConversaoTextoLongo;
begin
  CheckEquals('&<>"', ParseText('&amp;&lt;&gt;&quot;'));
  CheckEquals('&"<>', ParseText('&amp;&quot;&lt;&gt;'));
  CheckEquals('<&">', ParseText('&lt;&amp;&quot;&gt;'));
  CheckEquals(#39'áÃÇÜÉÊÕ''', ParseText('&#39;&aacute;&Atilde;&Ccedil;&Uuml;'
              + '&Eacute;&Ecirc;&Otilde;&apos;', True, False));
end;

initialization

  RegisterTest('ACBrComum.ACBrUtil', ParseTextTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', LerTagXMLTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', SepararDadosTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', padLTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', padRTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', padCTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', padSTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', RemoverEspacosDuplosTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', RemoveStringTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', RemoveStringsTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StripHTMLTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', CompareVersionsTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', IfEmptyThenTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', Poem_ZerosTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', IntToStrZeroTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', FloatToIntStrTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', FloatToStringTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StringToFloatTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StringToFloatDefTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StringToDateTimeTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StringToDateTimeDefTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StoDTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', DtoSTest{$ifndef FPC}.Suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', DTtoSTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StrIsAlphaTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StrIsAlphaNumTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StrIsNumberTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', IsNumberTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', CharIsAlphaTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', CharIsAlphaNumTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', CharIsNumTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', OnlyNumberTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', OnlyAlphaTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', OnlyAlphaNumTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', StrIsIPTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', TiraAcentosTest{$ifndef FPC}.suite{$endif});
  RegisterTest('ACBrComum.ACBrUtil', TiraAcentoTest{$ifndef FPC}.suite{$endif});
end.

