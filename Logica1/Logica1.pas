unit Logica1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmLogica1Triangulo = class(TForm)
    seLadoA: TSpinEdit;
    seLadoB: TSpinEdit;
    seLadoC: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    bVerifTriangulo: TButton;
    lTipoTriangulo: TLabel;
    lDescTriangulo: TLabel;
    procedure bVerifTrianguloClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogica1Triangulo: TfrmLogica1Triangulo;

implementation

{$R *.dfm}

procedure TfrmLogica1Triangulo.bVerifTrianguloClick(Sender: TObject);
begin
  lTipoTriangulo.Visible := False;
  lDescTriangulo.Visible := False;

  if ((seLadoA.Value = seLadoB.Value) and
        (seLadoB.Value = seLadoC.Value)) then
  begin
    lTipoTriangulo.Caption := 'Triângulo EQUILÁTERO';
    lDescTriangulo.Caption := 'Possui três lados iguais';
    lTipoTriangulo.Visible := True;
    lDescTriangulo.Visible := True;
    Exit;
  end;

  if ((seLadoA.Value = seLadoB.Value) or
      (seLadoB.Value = seLadoC.Value) or
      (seLadoA.Value = seLadoC.Value)) then
  begin
       lTipoTriangulo.Caption := 'Triângulo ISÓSCELES';
       lDescTriangulo.Caption := 'Possui dois lados iguais';
       lTipoTriangulo.Visible := True;
       lDescTriangulo.Visible := True;
       Exit;
  end
  else
  begin
    if (((seLadoA.Value <> seLadoB.Value) and
         (seLadoA.Value <> seLadoC.Value ))
       AND
       ((seLadoA.Value + seLadoB.Value) < seLadoC.Value) or
       ((seLadoA.Value + seLadoC.Value) < seLadoB.Value) or
       ((seLadoB.Value + seLadoC.Value) < seLadoA.Value)) then
    begin
      lTipoTriangulo.Caption := 'Triângulo ESCALENO';
      lDescTriangulo.Caption := 'Possui todos os três lados diferentes';
      lTipoTriangulo.Visible := True;
      lDescTriangulo.Visible := True;
    end
   else
   begin
      lTipoTriangulo.Visible := False;
      lDescTriangulo.Visible := False;
    ShowMessage('Os valores informados não representam um triângulo valido.');
   end;
  end;

end;

procedure TfrmLogica1Triangulo.FormShow(Sender: TObject);
begin
  lTipoTriangulo.Visible := False;
  lDescTriangulo.Visible := False;
end;

end.
