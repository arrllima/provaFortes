unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDAbastec: TFDQuery;
    FDAbastecCODIGO: TIntegerField;
    FDAbastecDATA_ABAST: TSQLTimeStampField;
    FDAbastecBOMBA_ID: TIntegerField;
    FDAbastecQTD_LITROS: TCurrencyField;
    FDAbastecVLR_IMP: TCurrencyField;
    FDAbastecVLR_ABAST: TCurrencyField;
    FDTBomba: TFDTable;
    FDTBombaCODIGO: TIntegerField;
    FDTBombaTANQUE_ID: TIntegerField;
    FDTBombaDESCRICAO: TStringField;
    FDTBombaMODELO: TStringField;
    FDTTanque: TFDTable;
    FDTTanqueCODIGO: TIntegerField;
    FDTTanqueDESCRICAO: TStringField;
    FDTTanqueCOMBUSTIVEL: TStringField;
    dsLkBomba: TDataSource;
    FDRelAbast: TFDQuery;
    FDRelAbastDATA_ABAST: TSQLTimeStampField;
    FDRelAbastBOMBA: TStringField;
    FDRelAbastTANQUE: TStringField;
    FDRelAbastVLR_ABAST: TCurrencyField;
    FDAbastecBomba: TStringField;
    FDTBombaTanque: TStringField;
    procedure FDAbastecBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbreDataSetsAux(Dataset : TDataSet);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.AbreDataSetsAux(Dataset : TDataSet);
begin
    Tdataset(Dataset).Close;
    Tdataset(Dataset).Open;

end;

procedure TDM.FDAbastecBeforePost(DataSet: TDataSet);
begin
  TDataSet(DataSet).FieldByName('VLR_IMP').Value  :=
     TDataSet(DataSet).FieldByName('VLR_ABAST').Value * 0.13;
end;

end.
