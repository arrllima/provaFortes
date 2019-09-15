unit uBombaTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TfrmBombaTanque = class(TForm)
    pBotoesBombaTanque: TPanel;
    Button3: TButton;
    StatusBar1: TStatusBar;
    pTanque: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    dbDescTanque: TDBEdit;
    Label2: TLabel;
    dbgTanque: TDBGrid;
    dsTanque: TDataSource;
    dsBomba: TDataSource;
    pBomba: TPanel;
    dbnBomba: TDBNavigator;
    Label3: TLabel;
    dblcbTanqueBomba: TDBLookupComboBox;
    Label4: TLabel;
    dbDescBomba: TDBEdit;
    Label5: TLabel;
    dbModeloBomba: TDBEdit;
    dbgBomba: TDBGrid;
    dbcbCombTanque: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBombaTanque: TfrmBombaTanque;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmBombaTanque.Button3Click(Sender: TObject);
begin
  frmBombaTanque.Close;
end;

procedure TfrmBombaTanque.FormShow(Sender: TObject);
begin
  with DM do
  begin
    AbreDataSetsAux(FDTTanque);
    AbreDataSetsAux(FDTBomba);
  end;
end;

end.
