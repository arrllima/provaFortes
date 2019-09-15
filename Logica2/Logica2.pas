unit Logica2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmLogica2 = class(TForm)
    Label1: TLabel;
    seTotalNumero: TSpinEdit;
    Button1: TButton;
    mmNumeros: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogica2: TfrmLogica2;

implementation

{$R *.dfm}

procedure TfrmLogica2.Button1Click(Sender: TObject);
var i : integer;
    sNumero : string;
begin
 mmNumeros.Clear;
 for i := 1 to seTotalNumero.Value do
 begin
   sNumero := '';
   if (i mod 3) = 0 then
      sNumero := 'FIZZ';
   if (i mod 5) = 0 then
      sNumero :=  sNumero + 'BUZZ';
   if ((i mod 3 <> 0) and  (i mod 5 <> 0)) then
      sNumero := IntToStr(i);

   mmNumeros.lines.Add(sNumero);
 end;
end;

procedure TfrmLogica2.FormShow(Sender: TObject);
begin
  mmNumeros.Clear;
end;

end.
