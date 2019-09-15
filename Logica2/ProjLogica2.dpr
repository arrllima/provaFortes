program ProjLogica2;

uses
  Vcl.Forms,
  Logica2 in 'Logica2.pas' {frmLogica2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogica2, frmLogica2);
  Application.Run;
end.
