unit UDesafioPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  UDesafio.Validador.Interfaces;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FValidation : iValidation;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UDesafio.Validacao;


{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;

   FValidation := TValidation.New;

    FValidation
      .NotNull
        .Params
          .Component(Edit1)
          .DisplayLabel(Label1)
        .&End
      .&End
      .NotNull
        .Params
          .Component(Edit2)
          .DisplayLabel(Label2)
        .&End
      .&End
      {.MinLengh
        .Component(Edit1)
        .ColorDanger(clRed)
        .DisplayComponent(Label1)
        .DisplayMsgError('Edit1 deve ter mais de 3 caracteres')
        .MinLenghValue(3)
      .&End
      .MaxLengh
        .Component(Edit1)
        .ColorDanger(clRed)
        .DisplayComponent(Label1)
        .DisplayMsgError('Edit1 n�o pode ter mais de 15 caracteres')
        .MaxLenghValue(15)
      .&End;
      }
end;

end.
