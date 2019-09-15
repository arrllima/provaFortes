program ProjAbastecimento;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDm in 'uDm.pas' {DM: TDataModule},
  uAbastec in 'uAbastec.pas' {frmAbastec},
  uBombaTanque in 'uBombaTanque.pas' {frmBombaTanque},
  uRelAbastec in 'uRelAbastec.pas' {frmRelAbastec};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
