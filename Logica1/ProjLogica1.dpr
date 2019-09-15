program ProjLogica1;

uses
  Vcl.Forms,
  Logica1 in 'Logica1.pas' {frmLogica1Triangulo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogica1Triangulo, frmLogica1Triangulo);
  Application.Run;
end.
