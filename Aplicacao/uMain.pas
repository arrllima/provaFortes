unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ComCtrls;

type
  TfrmMain = class(TForm)
    pMainTit: TPanel;
    Label1: TLabel;
    pMainBotoes: TPanel;
    bAbastec: TButton;
    bRelatorio: TButton;
    bSair: TButton;
    StatusBar1: TStatusBar;
    bBombaTanque: TButton;
    procedure bSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bAbastecClick(Sender: TObject);
    procedure bBombaTanqueClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDm, uAbastec, uBombaTanque, uRelAbastec;

procedure TfrmMain.bAbastecClick(Sender: TObject);
begin

  DM.AbreDataSetsAux(DM.FDAbastec);

  if (frmAbastec = Nil) Then
      frmAbastec := TfrmAbastec.Create(Application);

  frmAbastec.Show;

end;

procedure TfrmMain.bSairClick(Sender: TObject);
begin

  if (Application.MessageBox('Deseja sair do sistema?',
                             'Confirmação',
                             mb_YesNo+mb_IconInformation+mb_DefButton1) = 6) then
  begin
    Application.Terminate;
  end;


end;

procedure TfrmMain.bBombaTanqueClick(Sender: TObject);
begin
  if (frmBombaTanque = Nil) Then
      frmBombaTanque := TfrmBombaTanque.Create(Application);

  frmBombaTanque.Show;

end;

procedure TfrmMain.bRelatorioClick(Sender: TObject);
begin
  if (frmRelAbastec = Nil) Then
      frmRelAbastec := TfrmRelAbastec.Create(Application);

  frmRelAbastec.hide;
  DM.AbreDataSetsAux(DM.FDRelAbast);

  frmRelAbastec.rlpAbastec.Preview();
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin

    try
      DM.FDConnection1.Connected := True;
    Except
    on E: Exception do
      ShowMessage('Erro ao conectar banco de dados: ' + E.Message);
    end;

end;

end.
