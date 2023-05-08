unit unitCal1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons;

type

  { TFrmCal }

  TFrmCal = class(TForm)
    Bitpoc: TBitBtn;
    BitCos: TBitBtn;
    BitSin: TBitBtn;
    BitTan: TBitBtn;
    Bitini: TBitBtn;
    Bit5: TBitBtn;
    Bit6: TBitBtn;
    BitSub: TBitBtn;
    Bit1: TBitBtn;
    Bit2: TBitBtn;
    Bit3: TBitBtn;
    BitSoma: TBitBtn;
    BitIgual: TBitBtn;
    Bit0: TBitBtn;
    Bitvig: TBitBtn;
    Bitpar: TBitBtn;
    BitClean: TBitBtn;
    Bitent: TBitBtn;
    BitDiv: TBitBtn;
    Bit7: TBitBtn;
    Bit8: TBitBtn;
    Bit9: TBitBtn;
    BitMult: TBitBtn;
    Bit4: TBitBtn;
    EdResult: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  FrmCal: TFrmCal;

implementation

{$R *.lfm}

{ TFrmCal }

procedure TFrmCal.SpeedButton1Click(Sender: TObject);
begin

end;

end.

