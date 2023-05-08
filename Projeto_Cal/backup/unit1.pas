unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ComCtrls;

type

  { TFrmCal }

  TFrmCal = class(TForm)
    BitIni: TBitBtn;
    BitSoma: TBitBtn;
    BitSub: TBitBtn;
    Bitvig: TBitBtn;
    BitClean: TBitBtn;
    Bit4: TBitBtn;
    Bit5: TBitBtn;
    Bit6: TBitBtn;
    Bit1: TBitBtn;
    Bit2: TBitBtn;
    Bit3: TBitBtn;
    Bit0: TBitBtn;
    BitAtual: TBitBtn;
    BitResul: TBitBtn;
    BitDiv: TBitBtn;
    BitBtn3: TBitBtn;
    BitMult: TBitBtn;
    BitBtn6: TBitBtn;
    Bit7: TBitBtn;
    Bit8: TBitBtn;
    Bit9: TBitBtn;
    EdResult: TEdit;
    StatusBar1: TStatusBar;
    procedure Bit0Click(Sender: TObject);
    procedure BitAtualClick(Sender: TObject);
    procedure BitCleanClick(Sender: TObject);
    procedure BitDivClick(Sender: TObject);
    procedure BitIniClick(Sender: TObject);
    procedure BitMultClick(Sender: TObject);
    procedure BitResulClick(Sender: TObject);
    procedure BitSomaClick(Sender: TObject);
    procedure BitSubClick(Sender: TObject);
  private
    operacao: string;
    Num: real;
    procedure PNumButton(Sender: TObject);
    procedure IndicadorOP(Sender: TObject);
    procedure Limpar;
    procedure Calcular;
  public
   res: real;
  end;

var
  FrmCal: TFrmCal;

implementation

{$R *.lfm}

{ TFrmCal }


procedure TFrmCal.Bit0Click(Sender: TObject);
begin
//Essa classe vai indicar para os botões sua função
 PNumButton(Sender);
end;

procedure TFrmCal.BitAtualClick(Sender: TObject);
begin

  Limpar;
end;

procedure TFrmCal.BitCleanClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCal.BitDivClick(Sender: TObject);
begin
 IndicadorOP(Sender);
end;

procedure TFrmCal.BitIniClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCal.BitMultClick(Sender: TObject);
begin
 IndicadorOP(Sender);
end;

procedure TFrmCal.BitResulClick(Sender: TObject);
begin
  Calcular;
end;

procedure TFrmCal.BitSomaClick(Sender: TObject);
begin
 IndicadorOP(Sender);
end;

procedure TFrmCal.BitSubClick(Sender: TObject);
begin
 IndicadorOP(Sender);
end;

procedure TFrmCal.PNumButton(Sender: TObject);
begin
   // pegando o caption (texto) do botão que foi clicado e concatenando
  // no edit.
  EdResult.Text := EdResult.Text + TBitBtn(Sender).Caption;
end;

procedure TFrmCal.IndicadorOP(Sender: TObject);
begin
  Num := StrToFloat(EdResult.Text);
  operacao := TBitBtn(Sender).Caption;
  EdResult.Text := '';
end;

procedure TFrmCal.Limpar;
begin
  //Classe para limpeza dos dados da calculadora
  EdResult.Text := '';
end;

procedure TFrmCal.Calcular;
begin
  //Estrutura

begin
  if operacao = 'x' then
  begin
    res := Num * StrToFloat(EdResult.Text);
  end
  else if operacao = '-' then
  begin
   res := Num - StrToFloat(EdResult.Text);
  end
  else if operacao = '+' then
  begin
   res := Num + StrToFloat(EdResult.Text);
  end
  else if operacao = '÷' then
  begin
   res:= Num / StrToFloat(EdResult.Text);
  end;


  EdResult.Text := FloatToStr(res);
end;

 end;

end.

