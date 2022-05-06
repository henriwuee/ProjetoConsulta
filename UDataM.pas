unit UDataM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule2 = class(TDataModule)
    FDConectaBase: TFDConnection;
    ADQEstoque: TFDQuery;
    dtsEstoque: TDataSource;
    FDTransaction1: TFDTransaction;
    ADQEstoqueCONTROLE: TIntegerField;
    ADQEstoquePRODUTO: TStringField;
    ADQEstoqueTIPOBARRA: TStringField;
    ADQEstoqueCODBARRAS: TStringField;
    ADQEstoqueUNIDADE: TStringField;
    ADQEstoquePRECOCUSTO: TBCDField;
    ADQEstoquePERCLUCRO: TBCDField;
    ADQEstoquePRECOVENDA: TBCDField;
    ADQEstoqueCODGRUPO: TIntegerField;
    ADQEstoqueGRUPO: TStringField;
    ADQEstoqueOBS: TMemoField;
    ADQEstoqueCODFORNECEDOR: TIntegerField;
    ADQEstoqueFORNECEDOR: TStringField;
    ADQEstoqueTAMANHO: TStringField;
    ADQEstoquePESO: TBCDField;
    ADQEstoqueCUSTOULTIMACOMPRA: TBCDField;
    ADQEstoqueCUSTOMEDIO: TBCDField;
    ADQEstoqueQTDETOTALCOMPRADA: TBCDField;
    ADQEstoqueQTDETOTALVENDIDA: TBCDField;
    ADQEstoqueDATAULTIMACOMPRA: TDateField;
    ADQEstoqueDATAULTIMAVENDA: TDateField;
    ADQEstoqueDATAHORACADASTRO: TSQLTimeStampField;
    ADQEstoqueQTDEMINIMA: TBCDField;
    ADQEstoqueQTDEMAXIMA: TBCDField;
    ADQEstoqueQTDE: TBCDField;
    ADQEstoqueATIVO: TStringField;
    ADQEstoqueNCM: TStringField;
    ADQEstoquePERCREDITOCICMS: TBCDField;
    ADQEstoqueUSAGRADE: TStringField;
    ADQEstoqueUSASERIAL: TStringField;
    ADQEstoqueORIGEM: TStringField;
    ADQEstoqueCODTRIBUTACAOIPI: TStringField;
    ADQEstoqueTRIBUTACAOIPI: TStringField;
    ADQEstoqueCODTRIBUTACAOPIS: TStringField;
    ADQEstoqueCODTRIBUTACAOCOFINS: TStringField;
    ADQEstoqueTRIBUTACAOPIS: TStringField;
    ADQEstoqueTRIBUTACAOCOFINS: TStringField;
    ADQEstoqueTIPOTRIBUTACAO: TStringField;
    ADQEstoquePERCICMSSTINTERNA: TFMTBCDField;
    ADQEstoquePERCMVAORIGINAL: TFMTBCDField;
    ADQEstoquePOSSUIICMSST: TStringField;
    ADQEstoqueISENTO: TStringField;
    ADQEstoquePERCICMSPROPRIOST: TFMTBCDField;
    ADQEstoqueIAT: TStringField;
    ADQEstoqueIPPT: TStringField;
    ADQEstoqueTRIBUTADO: TStringField;
    ADQEstoqueCSOSN: TStringField;
    ADQEstoqueDESCRICAOCSOSN: TStringField;
    ADQEstoquePESADO: TStringField;
    ADQEstoqueBASECALCULOICMSSTRETIDO: TFMTBCDField;
    ADQEstoqueVALORICMSSTRETIDO: TFMTBCDField;
    ADQEstoqueALIQUOTAICMSECF: TFMTBCDField;
    ADQEstoqueFOTO: TBlobField;
    ADQEstoqueMD5: TStringField;
    ADQEstoqueMENSAGEMNFE: TStringField;
    ADQEstoqueCODMENSAGEMNFE: TIntegerField;
    ADQEstoqueCODUNIDADEMEDIDA: TIntegerField;
    ADQEstoqueCODAPLICACAOPRODUTO: TStringField;
    ADQEstoqueAPLICACAOPRODUTO: TStringField;
    ADQEstoqueMD5E2: TStringField;
    ADQEstoqueQTDEINICIAL: TBCDField;
    ADQEstoqueALIQUOTAISS: TBCDField;
    ADQEstoqueCODIMPOSTOMEDIO: TIntegerField;
    ADQEstoquePERCIMPOSTOMEDIO: TCurrencyField;
    ADQEstoqueCODCSTORIGEM: TIntegerField;
    ADQEstoqueCODIGOCSTORIGEM: TIntegerField;
    ADQEstoqueCODEMITENTE: TIntegerField;
    ADQEstoqueDIASVALIDADEPRODUTO: TIntegerField;
    ADQEstoqueFATORCONVERSAO: TStringField;
    ADQEstoqueTRIBUTACAOSERVICO: TStringField;
    ADQEstoqueREDUCAOBASECALCULOSERVICO: TFMTBCDField;
    ADQEstoqueSTATUS: TStringField;
    ADQEstoqueDESCRICAOCOMPLEMENTAR: TStringField;
    ADQEstoqueREFERENCIA: TStringField;
    ADQEstoquePRECOVENDAUSS: TFMTBCDField;
    ADQEstoquePERCMAXIMODESCONTO: TFMTBCDField;
    ADQEstoqueVALORCOMISSAOFIXO: TFMTBCDField;
    ADQEstoquePERCCOMISSAO: TFMTBCDField;
    ADQEstoquePRECOMINIMOUSS: TFMTBCDField;
    ADQEstoquePRECOMINIMO: TFMTBCDField;
    ADQEstoqueCODCOMPRA: TIntegerField;
    ADQEstoqueVALORCONVERSAO: TFMTBCDField;
    ADQEstoqueVALORFRETE: TBCDField;
    ADQEstoqueVALOROUTROS: TBCDField;
    ADQEstoqueVALORICMSST: TBCDField;
    ADQEstoqueVALORIPI: TBCDField;
    ADQEstoqueVALORUNITARIOCOMPRA: TBCDField;
    ADQEstoquePERCPIS: TFMTBCDField;
    ADQEstoquePERCCOFINS: TFMTBCDField;
    ADQEstoqueCAMPO1: TStringField;
    ADQEstoqueCAMPO2: TStringField;
    ADQEstoqueCAMPO3: TStringField;
    ADQEstoqueCAMPO4: TStringField;
    ADQEstoqueCAMPO5: TStringField;
    ADQEstoqueCAMPO6: TStringField;
    ADQEstoqueCAMPO7: TStringField;
    ADQEstoqueCAMPO8: TStringField;
    ADQEstoqueCAMPO9: TStringField;
    ADQEstoqueCAMPO10: TStringField;
    ADQEstoqueMARCA: TStringField;
    ADQEstoquePERCREDUCAOBC: TFMTBCDField;
    ADQEstoquePERCREDUCAOBCST: TFMTBCDField;
    ADQEstoqueCODSUBGRUPO: TIntegerField;
    ADQEstoqueSUBGRUPO: TStringField;
    ADQEstoqueCONTROLARVALIDADE: TStringField;
    ADQEstoqueCODMARCA: TIntegerField;
    ADQEstoquePRECOREVENDA: TFMTBCDField;
    ADQEstoquePERCIPI: TFMTBCDField;
    ADQEstoqueCFOP: TStringField;
    ADQEstoqueUNIDADECONVERSAOVENDA: TStringField;
    ADQEstoqueVALORCONVERSAOVENDA: TFMTBCDField;
    ADQEstoqueCODTABELAPRECO: TIntegerField;
    ADQEstoqueNOMETABELAPRECO: TStringField;
    ADQEstoquePERCIMPOSTOMEDIOESTADUAL: TFMTBCDField;
    ADQEstoquePERCIMPOSTOMEDIOMUNICIPAL: TFMTBCDField;
    ADQEstoqueCODIGOENQUADRAMENTOIPI: TStringField;
    ADQEstoqueCEST: TStringField;
    ADQEstoqueQTDEEMPRODUCAO: TBCDField;
    ADQEstoqueQTDEPEDIDOVENDA: TBCDField;
    ADQEstoqueQTDEPEDIDOCOMPRA: TBCDField;
    ADQEstoqueQTDERESERVADA: TBCDField;
    ADQEstoqueQTDEREAL: TBCDField;
    ADQEstoqueQTDEEMPRODUCAOMP: TBCDField;
    ADQEstoqueUNIDADEMEDIDAETIQUETA: TStringField;
    ADQEstoqueFATORCONVERSAOETIQUETA: TFMTBCDField;
    ADQEstoqueCODIGOANP: TStringField;
    ADQEstoqueDESCRICAOANP: TStringField;
    ADQEstoquePERCGLPCOMB: TBCDField;
    ADQEstoquePERCGNNCOMB: TBCDField;
    ADQEstoquePERCGNICOMB: TBCDField;
    ADQEstoqueVALORPARTIDACOMB: TFMTBCDField;
    ADQEstoqueCNPJFABRICANTE: TStringField;
    ADQEstoqueCODBENEFICIOFISCAL: TStringField;
    ADQEstoqueCODIGOANVISA: TStringField;
    ADQEstoqueSELOIPI: TStringField;
    ADQEstoqueALIQUOTAFCP: TFMTBCDField;
    ADQEstoquePERCFCPST: TFMTBCDField;
    ADQEstoqueCODUNIDADETRIBUTAVEL: TIntegerField;
    ADQEstoqueUNIDADETRIBUTAVEL: TStringField;
    ADQEstoqueQTDETRIBUTAVEL: TBCDField;
    ADQEstoqueDESMONTARNAVENDA: TIntegerField;
    ADQEstoqueALIQUOTAICMSSTRET: TFMTBCDField;
    ADQEstoqueVALORBCICMSSTRET: TFMTBCDField;
    ADQEstoqueVALORICMSSTRET: TFMTBCDField;
    ADQEstoqueALIQUOTAICMSEFET: TBCDField;
    ADQEstoquePERCREDUCAOICMSEFET: TBCDField;
    ADQEstoqueVALORBCICMSEFET: TFMTBCDField;
    ADQEstoqueVALORICMSEFET: TFMTBCDField;
    ADQEstoqueVALORICMSSUBSTITUTO: TFMTBCDField;
    ADQEstoqueCODBARRASCAIXA: TStringField;
    ADQEstoqueENVIARDADOS: TIntegerField;
    ADQEstoqueVALORPMC: TFMTBCDField;
    ADQEstoqueMD5O: TStringField;
    ADQEstoqueMD5S: TStringField;
    ADQEstoqueVALORFCPST: TFMTBCDField;
    ADQEstoqueLOCALIZACAO: TStringField;
    ADQEstoqueVOLUME: TIntegerField;
    ADQEstoqueMOSTRARCOZINHA: TStringField;
    ADQEstoqueCODBARRASINTERNO: TStringField;
    ADQEstoqueCODBARRASTRIB: TStringField;
    ADQValidade: TFDQuery;
    dtsValidade: TDataSource;
    ADQValidadeCODPRODUTO: TIntegerField;
    ADQValidadePRODUTO: TStringField;
    ADQValidadeLOTE: TStringField;
    procedure ADQEstoqueAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConsulta;

{$R *.dfm}

procedure TDataModule2.ADQEstoqueAfterScroll(DataSet: TDataSet);
begin
  if fConsulta.ckbFoto.Checked = true then
  begin
    if FileExists('C:\SGBr\Master\Imagens\' + IntToStr(DataModule2.ADQEstoqueCONTROLE.Value) + '.jpeg') then
    begin
      fConsulta.Image1.Visible := true;
      fConsulta.Image1.Picture.LoadFromFile('C:\SGBr\Master\Imagens\' + IntToStr(DataModule2.ADQEstoqueCONTROLE.Value)+ '.jpeg');
    end
    else
    begin
      fConsulta.Image1.Visible := false;
    end;
  end;
end;

end.
