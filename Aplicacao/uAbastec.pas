unit uAbastec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmAbastec = class(TForm)
    Panel1: TPanel;
    dbCodigoAbastec: TDBText;
    dblcbBombaDesc: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dsAbastec: TDataSource;
    dbQtdLitros: TDBEdit;
    dbVlrAbast: TDBEdit;
    dbVlrImp: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    bSairAbatec: TButton;
    dbDataAbastec: TDBEdit;
    procedure bSairAbatecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastec: TfrmAbastec;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmAbastec.bSairAbatecClick(Sender: TObject);
begin
  frmAbastec.Close;
end;

procedure TfrmAbastec.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  dbCodigoAbastec.Visible := (dsAbastec.State = dsBrowse);
end;

procedure TfrmAbastec.FormShow(Sender: TObject);
begin
    With DM do
    begin
      AbreDataSetsAux(FDTTanque);
      AbreDataSetsAux(FDTBomba);
    end;
end;

end.
