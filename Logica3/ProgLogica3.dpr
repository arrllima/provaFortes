program ProgLogica3;

uses
  Vcl.Forms,
  Logica3 in 'Logica3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
