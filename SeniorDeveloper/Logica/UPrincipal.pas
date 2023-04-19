unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    function RetornaValor(v1 : string; v2 : Integer) : String;
    procedure ExecValor (v1, v2 : Integer);
  public
    { Public declarations }
    FValorProduto : Double;

      const
        QUANTIDADEPRODUTO = 54.98;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  valorProduto : Double;
begin
  valorProduto := 12.68;
  valorProduto := valorProduto * QUANTIDADEPRODUTO;
  ShowMessage(FloatToStr(valorProduto));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  num1, num2, num3, diaSemana : integer;
begin
  diaSemana := StrToInt(Edit1.Text);

  case diaSemana of
    1: ShowMessage('Domingo');
    2: ShowMessage('Segunda-Feira');
    3: ShowMessage('Ter�a-Feira');
    4: ShowMessage('Quarta-Feira');
    5: ShowMessage('Quinta-Feira');
    6: ShowMessage('Sexta-Feira');
    7: ShowMessage('Sabado');
    else
      ShowMessage('O numero nao Corresponde a nenhum dia da semana');
  end;


//  num1 := StrToInt(Edit1.text);
//  num2 := StrToInt(Edit2.text);
//  num3 := StrToInt(Edit3.text);
//
//  if (num1 > num2) and (num1 > num3) then
//    ShowMessage('Num1 � Maior')
//  else if (num2 > num1) and (num2 > num3) then
//    ShowMessage('Num2 � Maior')
//  else if (num3 > num1) and (num3 > num2) then
//    ShowMessage('Num3 � Maior')
//  else
//    ShowMessage('Nenhum � Maior');


//  if QUANTIDADEPRODUTO = StrToFloat(Edit1.Text) then
//    ShowMessage('Quantidade OK')
//  else
//    ShowMessage('Quantidade Errada');
end;


procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
//  for I := 0 to 10 do
//    ShowMessage(IntToStr(I));
//
//  for I := 10 downto 0 do
//    ShowMessage(IntToStr(I));
  I:= 0;
  while I < 10 do
  begin
      if I mod 2 = 0 then
      begin
        if I = 6 then
        begin
          ShowMessage('Valor � 6');
          I := I + 1;
          Continue
        end else if I = 8 then
        begin
          ShowMessage('Parou quando I = 8');
          Break
        end;
        ShowMessage(IntToStr(I));
      end;
      I := I +1;
  end;
//
//I := 7;
//  repeat
//    ShowMessage(IntToStr(I));
//    Inc(I);
//  until (I>=10);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ExecValor(1,2);
  ShowMessage ('Retorno do Valor: ' + RetornaValor('2',3));
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  v1 : array[1..3] of integer;
  v2 : array of integer;
  v3 : integer;
  I: Integer;
  a1 : array[1..3,0..1] of string;

const
  diaSemana : array[1..7] of string = ('Domingo', 'Segunda-Feira', 'Ter�a-Feira',
                                       'Quarta-Feira', 'Quinta-Feira',
                                       'Sexta-Feira', 'Sabado');
begin
  a1[1,0] := 'Eric';
  a1[1,1] := 'Galdino';

  a1[2,0] := 'Vanesa';
  a1[2,1] := 'Santos';

  a1[3,0] := 'Manoel';
  a1[3,1] := 'Galdino';

  for I := 1 to 3 do
  Memo1.Lines.Add('Nome: ' + a1[I,0] +' '+a1[I,1]);

//  for I := 1 to 7 do
//    Memo1.Lines.Add(diaSemana[I]);

//  v1[1] := 10;
//  v1[2] := 20;
//  v1[3] := 30;
//  v3 := v1[1]+v1[2]+v1[3];
//  Memo1.lines.Add(v3.ToString);
//
//  SetLength(v2,4);
//  v2[0] := 10;
//  v2[1] := 20;
//  v2[2] := 30;
//  v2[3] := 40;
//
//  for I := 0 to Length(v2) do
//  begin
//    if I = 4 then
//    begin
//      SetLength(v2,Length(v2)+1);
//      v2[I] := 50;
//    end;
//  end;
//    Memo1.Lines.Add(v2[I].ToString);
end;

procedure TForm1.ExecValor (v1, v2: Integer);
var
  v3 : integer;
begin
  v3 := (v1+v2);
  ShowMessage(InttoStr(v3));
end;

function TForm1.RetornaValor(v1: string; v2: Integer): String;
var
  v3 : String;
begin
  v3 := v1 + InttoStr(v2);
  Result := V3;
end;

end.
