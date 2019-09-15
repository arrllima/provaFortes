unit uRelAbastec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelAbastec = class(TForm)
    rlpAbastec: TRLReport;
    dsRelAbastec: TDataSource;
    FDRelTot: TFDQuery;
    FDRelTotDATA_ABAST: TSQLTimeStampField;
    FDRelTotBOMBA: TStringField;
    FDRelTotTANQUE: TStringField;
    FDRelTotVLR_ABAST: TCurrencyField;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLSystemInfo2: TRLSystemInfo;
    RLBand7: TRLBand;
    RLLabel7: TRLLabel;
    RLDBResult2: TRLDBResult;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAbastec: TfrmRelAbastec;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmRelAbastec.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  With DM do
   AbreDataSetsAux(FDRelAbast);
end;

end.
