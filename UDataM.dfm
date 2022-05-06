object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 726
  Width = 972
  object FDConectaBase: TFDConnection
    Params.Strings = (
      'Database=C:\SGBR\Master\BD\BASESGMASTER.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object ADQEstoque: TFDQuery
    Active = True
    AfterScroll = ADQEstoqueAfterScroll
    Connection = FDConectaBase
    SQL.Strings = (
      'select * from testoque')
    Left = 152
    Top = 48
    object ADQEstoqueCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ADQEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 100
    end
    object ADQEstoqueTIPOBARRA: TStringField
      FieldName = 'TIPOBARRA'
      Origin = 'TIPOBARRA'
      Size = 100
    end
    object ADQEstoqueCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Origin = 'CODBARRAS'
      Size = 500
    end
    object ADQEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 6
    end
    object ADQEstoquePRECOCUSTO: TBCDField
      FieldName = 'PRECOCUSTO'
      Origin = 'PRECOCUSTO'
      Required = True
      Precision = 18
    end
    object ADQEstoquePERCLUCRO: TBCDField
      FieldName = 'PERCLUCRO'
      Origin = 'PERCLUCRO'
      Required = True
      Precision = 18
    end
    object ADQEstoquePRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Origin = 'PRECOVENDA'
      Required = True
      Precision = 18
    end
    object ADQEstoqueCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
      Origin = 'CODGRUPO'
    end
    object ADQEstoqueGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 100
    end
    object ADQEstoqueOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object ADQEstoqueCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object ADQEstoqueFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 100
    end
    object ADQEstoqueTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 100
    end
    object ADQEstoquePESO: TBCDField
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 18
    end
    object ADQEstoqueCUSTOULTIMACOMPRA: TBCDField
      FieldName = 'CUSTOULTIMACOMPRA'
      Origin = 'CUSTOULTIMACOMPRA'
      Precision = 18
    end
    object ADQEstoqueCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Origin = 'CUSTOMEDIO'
      Precision = 18
    end
    object ADQEstoqueQTDETOTALCOMPRADA: TBCDField
      FieldName = 'QTDETOTALCOMPRADA'
      Origin = 'QTDETOTALCOMPRADA'
      Precision = 18
    end
    object ADQEstoqueQTDETOTALVENDIDA: TBCDField
      FieldName = 'QTDETOTALVENDIDA'
      Origin = 'QTDETOTALVENDIDA'
      Precision = 18
    end
    object ADQEstoqueDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      Origin = 'DATAULTIMACOMPRA'
    end
    object ADQEstoqueDATAULTIMAVENDA: TDateField
      FieldName = 'DATAULTIMAVENDA'
      Origin = 'DATAULTIMAVENDA'
    end
    object ADQEstoqueDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'DATAHORACADASTRO'
      Origin = 'DATAHORACADASTRO'
    end
    object ADQEstoqueQTDEMINIMA: TBCDField
      FieldName = 'QTDEMINIMA'
      Origin = 'QTDEMINIMA'
      Precision = 18
    end
    object ADQEstoqueQTDEMAXIMA: TBCDField
      FieldName = 'QTDEMAXIMA'
      Origin = 'QTDEMAXIMA'
      Precision = 18
    end
    object ADQEstoqueQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
    object ADQEstoqueATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 3
    end
    object ADQEstoqueNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 50
    end
    object ADQEstoquePERCREDITOCICMS: TBCDField
      FieldName = 'PERCREDITOCICMS'
      Origin = 'PERCREDITOCICMS'
      Precision = 18
    end
    object ADQEstoqueUSAGRADE: TStringField
      FieldName = 'USAGRADE'
      Origin = 'USAGRADE'
      Size = 10
    end
    object ADQEstoqueUSASERIAL: TStringField
      FieldName = 'USASERIAL'
      Origin = 'USASERIAL'
      Size = 3
    end
    object ADQEstoqueORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 300
    end
    object ADQEstoqueCODTRIBUTACAOIPI: TStringField
      FieldName = 'CODTRIBUTACAOIPI'
      Origin = 'CODTRIBUTACAOIPI'
      Size = 4
    end
    object ADQEstoqueTRIBUTACAOIPI: TStringField
      FieldName = 'TRIBUTACAOIPI'
      Origin = 'TRIBUTACAOIPI'
      Size = 100
    end
    object ADQEstoqueCODTRIBUTACAOPIS: TStringField
      FieldName = 'CODTRIBUTACAOPIS'
      Origin = 'CODTRIBUTACAOPIS'
      Size = 4
    end
    object ADQEstoqueCODTRIBUTACAOCOFINS: TStringField
      FieldName = 'CODTRIBUTACAOCOFINS'
      Origin = 'CODTRIBUTACAOCOFINS'
      Size = 4
    end
    object ADQEstoqueTRIBUTACAOPIS: TStringField
      FieldName = 'TRIBUTACAOPIS'
      Origin = 'TRIBUTACAOPIS'
      Size = 300
    end
    object ADQEstoqueTRIBUTACAOCOFINS: TStringField
      FieldName = 'TRIBUTACAOCOFINS'
      Origin = 'TRIBUTACAOCOFINS'
      Size = 300
    end
    object ADQEstoqueTIPOTRIBUTACAO: TStringField
      FieldName = 'TIPOTRIBUTACAO'
      Origin = 'TIPOTRIBUTACAO'
      Size = 80
    end
    object ADQEstoquePERCICMSSTINTERNA: TFMTBCDField
      FieldName = 'PERCICMSSTINTERNA'
      Origin = 'PERCICMSSTINTERNA'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCMVAORIGINAL: TFMTBCDField
      FieldName = 'PERCMVAORIGINAL'
      Origin = 'PERCMVAORIGINAL'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePOSSUIICMSST: TStringField
      FieldName = 'POSSUIICMSST'
      Origin = 'POSSUIICMSST'
      Size = 3
    end
    object ADQEstoqueISENTO: TStringField
      FieldName = 'ISENTO'
      Origin = 'ISENTO'
      Size = 3
    end
    object ADQEstoquePERCICMSPROPRIOST: TFMTBCDField
      FieldName = 'PERCICMSPROPRIOST'
      Origin = 'PERCICMSPROPRIOST'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueIAT: TStringField
      FieldName = 'IAT'
      Origin = 'IAT'
      Required = True
      Size = 1
    end
    object ADQEstoqueIPPT: TStringField
      FieldName = 'IPPT'
      Origin = 'IPPT'
      Required = True
      Size = 1
    end
    object ADQEstoqueTRIBUTADO: TStringField
      FieldName = 'TRIBUTADO'
      Origin = 'TRIBUTADO'
      Required = True
      Size = 3
    end
    object ADQEstoqueCSOSN: TStringField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 3
    end
    object ADQEstoqueDESCRICAOCSOSN: TStringField
      FieldName = 'DESCRICAOCSOSN'
      Origin = 'DESCRICAOCSOSN'
      Size = 300
    end
    object ADQEstoquePESADO: TStringField
      FieldName = 'PESADO'
      Origin = 'PESADO'
      Required = True
      Size = 3
    end
    object ADQEstoqueBASECALCULOICMSSTRETIDO: TFMTBCDField
      FieldName = 'BASECALCULOICMSSTRETIDO'
      Origin = 'BASECALCULOICMSSTRETIDO'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueVALORICMSSTRETIDO: TFMTBCDField
      FieldName = 'VALORICMSSTRETIDO'
      Origin = 'VALORICMSSTRETIDO'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueALIQUOTAICMSECF: TFMTBCDField
      FieldName = 'ALIQUOTAICMSECF'
      Origin = 'ALIQUOTAICMSECF'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object ADQEstoqueMD5: TStringField
      FieldName = 'MD5'
      Origin = 'MD5'
      Size = 100
    end
    object ADQEstoqueMENSAGEMNFE: TStringField
      FieldName = 'MENSAGEMNFE'
      Origin = 'MENSAGEMNFE'
      Size = 500
    end
    object ADQEstoqueCODMENSAGEMNFE: TIntegerField
      FieldName = 'CODMENSAGEMNFE'
      Origin = 'CODMENSAGEMNFE'
    end
    object ADQEstoqueCODUNIDADEMEDIDA: TIntegerField
      FieldName = 'CODUNIDADEMEDIDA'
      Origin = 'CODUNIDADEMEDIDA'
      Required = True
    end
    object ADQEstoqueCODAPLICACAOPRODUTO: TStringField
      FieldName = 'CODAPLICACAOPRODUTO'
      Origin = 'CODAPLICACAOPRODUTO'
      Size = 2
    end
    object ADQEstoqueAPLICACAOPRODUTO: TStringField
      FieldName = 'APLICACAOPRODUTO'
      Origin = 'APLICACAOPRODUTO'
      Size = 100
    end
    object ADQEstoqueMD5E2: TStringField
      FieldName = 'MD5E2'
      Origin = 'MD5E2'
      Size = 80
    end
    object ADQEstoqueQTDEINICIAL: TBCDField
      FieldName = 'QTDEINICIAL'
      Origin = 'QTDEINICIAL'
      Precision = 18
    end
    object ADQEstoqueALIQUOTAISS: TBCDField
      FieldName = 'ALIQUOTAISS'
      Origin = 'ALIQUOTAISS'
      Precision = 18
    end
    object ADQEstoqueCODIMPOSTOMEDIO: TIntegerField
      FieldName = 'CODIMPOSTOMEDIO'
      Origin = 'CODIMPOSTOMEDIO'
    end
    object ADQEstoquePERCIMPOSTOMEDIO: TCurrencyField
      FieldName = 'PERCIMPOSTOMEDIO'
      Origin = 'PERCIMPOSTOMEDIO'
    end
    object ADQEstoqueCODCSTORIGEM: TIntegerField
      FieldName = 'CODCSTORIGEM'
      Origin = 'CODCSTORIGEM'
      Required = True
    end
    object ADQEstoqueCODIGOCSTORIGEM: TIntegerField
      FieldName = 'CODIGOCSTORIGEM'
      Origin = 'CODIGOCSTORIGEM'
    end
    object ADQEstoqueCODEMITENTE: TIntegerField
      FieldName = 'CODEMITENTE'
      Origin = 'CODEMITENTE'
    end
    object ADQEstoqueDIASVALIDADEPRODUTO: TIntegerField
      FieldName = 'DIASVALIDADEPRODUTO'
      Origin = 'DIASVALIDADEPRODUTO'
    end
    object ADQEstoqueFATORCONVERSAO: TStringField
      FieldName = 'FATORCONVERSAO'
      Origin = 'FATORCONVERSAO'
      Required = True
      Size = 2
    end
    object ADQEstoqueTRIBUTACAOSERVICO: TStringField
      FieldName = 'TRIBUTACAOSERVICO'
      Origin = 'TRIBUTACAOSERVICO'
      Size = 100
    end
    object ADQEstoqueREDUCAOBASECALCULOSERVICO: TFMTBCDField
      FieldName = 'REDUCAOBASECALCULOSERVICO'
      Origin = 'REDUCAOBASECALCULOSERVICO'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object ADQEstoqueDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Origin = 'DESCRICAOCOMPLEMENTAR'
      Size = 100
    end
    object ADQEstoqueREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 100
    end
    object ADQEstoquePRECOVENDAUSS: TFMTBCDField
      FieldName = 'PRECOVENDAUSS'
      Origin = 'PRECOVENDAUSS'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCMAXIMODESCONTO: TFMTBCDField
      FieldName = 'PERCMAXIMODESCONTO'
      Origin = 'PERCMAXIMODESCONTO'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueVALORCOMISSAOFIXO: TFMTBCDField
      FieldName = 'VALORCOMISSAOFIXO'
      Origin = 'VALORCOMISSAOFIXO'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCCOMISSAO: TFMTBCDField
      FieldName = 'PERCCOMISSAO'
      Origin = 'PERCCOMISSAO'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePRECOMINIMOUSS: TFMTBCDField
      FieldName = 'PRECOMINIMOUSS'
      Origin = 'PRECOMINIMOUSS'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePRECOMINIMO: TFMTBCDField
      FieldName = 'PRECOMINIMO'
      Origin = 'PRECOMINIMO'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Origin = 'CODCOMPRA'
    end
    object ADQEstoqueVALORCONVERSAO: TFMTBCDField
      FieldName = 'VALORCONVERSAO'
      Origin = 'VALORCONVERSAO'
      Precision = 18
    end
    object ADQEstoqueVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
      Precision = 18
    end
    object ADQEstoqueVALOROUTROS: TBCDField
      FieldName = 'VALOROUTROS'
      Origin = 'VALOROUTROS'
      Precision = 18
    end
    object ADQEstoqueVALORICMSST: TBCDField
      FieldName = 'VALORICMSST'
      Origin = 'VALORICMSST'
      Precision = 18
    end
    object ADQEstoqueVALORIPI: TBCDField
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
      Precision = 18
    end
    object ADQEstoqueVALORUNITARIOCOMPRA: TBCDField
      FieldName = 'VALORUNITARIOCOMPRA'
      Origin = 'VALORUNITARIOCOMPRA'
      Precision = 18
    end
    object ADQEstoquePERCPIS: TFMTBCDField
      FieldName = 'PERCPIS'
      Origin = 'PERCPIS'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCCOFINS: TFMTBCDField
      FieldName = 'PERCCOFINS'
      Origin = 'PERCCOFINS'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Origin = 'CAMPO1'
      Size = 100
    end
    object ADQEstoqueCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Origin = 'CAMPO2'
      Size = 100
    end
    object ADQEstoqueCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Origin = 'CAMPO3'
      Size = 100
    end
    object ADQEstoqueCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Origin = 'CAMPO4'
      Size = 100
    end
    object ADQEstoqueCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Origin = 'CAMPO5'
      Size = 100
    end
    object ADQEstoqueCAMPO6: TStringField
      FieldName = 'CAMPO6'
      Origin = 'CAMPO6'
      Size = 100
    end
    object ADQEstoqueCAMPO7: TStringField
      FieldName = 'CAMPO7'
      Origin = 'CAMPO7'
      Size = 100
    end
    object ADQEstoqueCAMPO8: TStringField
      FieldName = 'CAMPO8'
      Origin = 'CAMPO8'
      Size = 100
    end
    object ADQEstoqueCAMPO9: TStringField
      FieldName = 'CAMPO9'
      Origin = 'CAMPO9'
      Size = 100
    end
    object ADQEstoqueCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'CAMPO10'
      Size = 100
    end
    object ADQEstoqueMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 100
    end
    object ADQEstoquePERCREDUCAOBC: TFMTBCDField
      FieldName = 'PERCREDUCAOBC'
      Origin = 'PERCREDUCAOBC'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCREDUCAOBCST: TFMTBCDField
      FieldName = 'PERCREDUCAOBCST'
      Origin = 'PERCREDUCAOBCST'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'CODSUBGRUPO'
    end
    object ADQEstoqueSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 100
    end
    object ADQEstoqueCONTROLARVALIDADE: TStringField
      FieldName = 'CONTROLARVALIDADE'
      Origin = 'CONTROLARVALIDADE'
      Size = 3
    end
    object ADQEstoqueCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
      Origin = 'CODMARCA'
    end
    object ADQEstoquePRECOREVENDA: TFMTBCDField
      FieldName = 'PRECOREVENDA'
      Origin = 'PRECOREVENDA'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCIPI: TFMTBCDField
      FieldName = 'PERCIPI'
      Origin = 'PERCIPI'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object ADQEstoqueUNIDADECONVERSAOVENDA: TStringField
      FieldName = 'UNIDADECONVERSAOVENDA'
      Origin = 'UNIDADECONVERSAOVENDA'
      Size = 6
    end
    object ADQEstoqueVALORCONVERSAOVENDA: TFMTBCDField
      FieldName = 'VALORCONVERSAOVENDA'
      Origin = 'VALORCONVERSAOVENDA'
      Precision = 18
    end
    object ADQEstoqueCODTABELAPRECO: TIntegerField
      FieldName = 'CODTABELAPRECO'
      Origin = 'CODTABELAPRECO'
    end
    object ADQEstoqueNOMETABELAPRECO: TStringField
      FieldName = 'NOMETABELAPRECO'
      Origin = 'NOMETABELAPRECO'
      Size = 200
    end
    object ADQEstoquePERCIMPOSTOMEDIOESTADUAL: TFMTBCDField
      FieldName = 'PERCIMPOSTOMEDIOESTADUAL'
      Origin = 'PERCIMPOSTOMEDIOESTADUAL'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCIMPOSTOMEDIOMUNICIPAL: TFMTBCDField
      FieldName = 'PERCIMPOSTOMEDIOMUNICIPAL'
      Origin = 'PERCIMPOSTOMEDIOMUNICIPAL'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCODIGOENQUADRAMENTOIPI: TStringField
      FieldName = 'CODIGOENQUADRAMENTOIPI'
      Origin = 'CODIGOENQUADRAMENTOIPI'
      Size = 3
    end
    object ADQEstoqueCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
    object ADQEstoqueQTDEEMPRODUCAO: TBCDField
      FieldName = 'QTDEEMPRODUCAO'
      Origin = 'QTDEEMPRODUCAO'
      Precision = 18
    end
    object ADQEstoqueQTDEPEDIDOVENDA: TBCDField
      FieldName = 'QTDEPEDIDOVENDA'
      Origin = 'QTDEPEDIDOVENDA'
      Precision = 18
    end
    object ADQEstoqueQTDEPEDIDOCOMPRA: TBCDField
      FieldName = 'QTDEPEDIDOCOMPRA'
      Origin = 'QTDEPEDIDOCOMPRA'
      Precision = 18
    end
    object ADQEstoqueQTDERESERVADA: TBCDField
      FieldName = 'QTDERESERVADA'
      Origin = 'QTDERESERVADA'
      Precision = 18
    end
    object ADQEstoqueQTDEREAL: TBCDField
      FieldName = 'QTDEREAL'
      Origin = 'QTDEREAL'
      Precision = 18
    end
    object ADQEstoqueQTDEEMPRODUCAOMP: TBCDField
      FieldName = 'QTDEEMPRODUCAOMP'
      Origin = 'QTDEEMPRODUCAOMP'
      Precision = 18
    end
    object ADQEstoqueUNIDADEMEDIDAETIQUETA: TStringField
      FieldName = 'UNIDADEMEDIDAETIQUETA'
      Origin = 'UNIDADEMEDIDAETIQUETA'
      Size = 100
    end
    object ADQEstoqueFATORCONVERSAOETIQUETA: TFMTBCDField
      FieldName = 'FATORCONVERSAOETIQUETA'
      Origin = 'FATORCONVERSAOETIQUETA'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCODIGOANP: TStringField
      FieldName = 'CODIGOANP'
      Origin = 'CODIGOANP'
      Size = 10
    end
    object ADQEstoqueDESCRICAOANP: TStringField
      FieldName = 'DESCRICAOANP'
      Origin = 'DESCRICAOANP'
      Size = 95
    end
    object ADQEstoquePERCGLPCOMB: TBCDField
      FieldName = 'PERCGLPCOMB'
      Origin = 'PERCGLPCOMB'
      Precision = 18
    end
    object ADQEstoquePERCGNNCOMB: TBCDField
      FieldName = 'PERCGNNCOMB'
      Origin = 'PERCGNNCOMB'
      Precision = 18
    end
    object ADQEstoquePERCGNICOMB: TBCDField
      FieldName = 'PERCGNICOMB'
      Origin = 'PERCGNICOMB'
      Precision = 18
    end
    object ADQEstoqueVALORPARTIDACOMB: TFMTBCDField
      FieldName = 'VALORPARTIDACOMB'
      Origin = 'VALORPARTIDACOMB'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCNPJFABRICANTE: TStringField
      FieldName = 'CNPJFABRICANTE'
      Origin = 'CNPJFABRICANTE'
    end
    object ADQEstoqueCODBENEFICIOFISCAL: TStringField
      FieldName = 'CODBENEFICIOFISCAL'
      Origin = 'CODBENEFICIOFISCAL'
      Size = 10
    end
    object ADQEstoqueCODIGOANVISA: TStringField
      FieldName = 'CODIGOANVISA'
      Origin = 'CODIGOANVISA'
      Size = 13
    end
    object ADQEstoqueSELOIPI: TStringField
      FieldName = 'SELOIPI'
      Origin = 'SELOIPI'
      Size = 7
    end
    object ADQEstoqueALIQUOTAFCP: TFMTBCDField
      FieldName = 'ALIQUOTAFCP'
      Origin = 'ALIQUOTAFCP'
      Precision = 18
      Size = 2
    end
    object ADQEstoquePERCFCPST: TFMTBCDField
      FieldName = 'PERCFCPST'
      Origin = 'PERCFCPST'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCODUNIDADETRIBUTAVEL: TIntegerField
      FieldName = 'CODUNIDADETRIBUTAVEL'
      Origin = 'CODUNIDADETRIBUTAVEL'
    end
    object ADQEstoqueUNIDADETRIBUTAVEL: TStringField
      FieldName = 'UNIDADETRIBUTAVEL'
      Origin = 'UNIDADETRIBUTAVEL'
      Size = 6
    end
    object ADQEstoqueQTDETRIBUTAVEL: TBCDField
      FieldName = 'QTDETRIBUTAVEL'
      Origin = 'QTDETRIBUTAVEL'
      Precision = 18
    end
    object ADQEstoqueDESMONTARNAVENDA: TIntegerField
      FieldName = 'DESMONTARNAVENDA'
      Origin = 'DESMONTARNAVENDA'
    end
    object ADQEstoqueALIQUOTAICMSSTRET: TFMTBCDField
      FieldName = 'ALIQUOTAICMSSTRET'
      Origin = 'ALIQUOTAICMSSTRET'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueVALORBCICMSSTRET: TFMTBCDField
      FieldName = 'VALORBCICMSSTRET'
      Origin = 'VALORBCICMSSTRET'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueVALORICMSSTRET: TFMTBCDField
      FieldName = 'VALORICMSSTRET'
      Origin = 'VALORICMSSTRET'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueALIQUOTAICMSEFET: TBCDField
      FieldName = 'ALIQUOTAICMSEFET'
      Origin = 'ALIQUOTAICMSEFET'
      Precision = 18
    end
    object ADQEstoquePERCREDUCAOICMSEFET: TBCDField
      FieldName = 'PERCREDUCAOICMSEFET'
      Origin = 'PERCREDUCAOICMSEFET'
      Precision = 18
    end
    object ADQEstoqueVALORBCICMSEFET: TFMTBCDField
      FieldName = 'VALORBCICMSEFET'
      Origin = 'VALORBCICMSEFET'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueVALORICMSEFET: TFMTBCDField
      FieldName = 'VALORICMSEFET'
      Origin = 'VALORICMSEFET'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueVALORICMSSUBSTITUTO: TFMTBCDField
      FieldName = 'VALORICMSSUBSTITUTO'
      Origin = 'VALORICMSSUBSTITUTO'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueCODBARRASCAIXA: TStringField
      FieldName = 'CODBARRASCAIXA'
      Origin = 'CODBARRASCAIXA'
    end
    object ADQEstoqueENVIARDADOS: TIntegerField
      FieldName = 'ENVIARDADOS'
      Origin = 'ENVIARDADOS'
    end
    object ADQEstoqueVALORPMC: TFMTBCDField
      FieldName = 'VALORPMC'
      Origin = 'VALORPMC'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueMD5O: TStringField
      FieldName = 'MD5O'
      Origin = 'MD5O'
      Size = 32
    end
    object ADQEstoqueMD5S: TStringField
      FieldName = 'MD5S'
      Origin = 'MD5S'
      Size = 32
    end
    object ADQEstoqueVALORFCPST: TFMTBCDField
      FieldName = 'VALORFCPST'
      Origin = 'VALORFCPST'
      Precision = 18
      Size = 2
    end
    object ADQEstoqueLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 100
    end
    object ADQEstoqueVOLUME: TIntegerField
      FieldName = 'VOLUME'
      Origin = 'VOLUME'
    end
    object ADQEstoqueMOSTRARCOZINHA: TStringField
      FieldName = 'MOSTRARCOZINHA'
      Origin = 'MOSTRARCOZINHA'
      FixedChar = True
      Size = 1
    end
    object ADQEstoqueCODBARRASINTERNO: TStringField
      FieldName = 'CODBARRASINTERNO'
      Origin = 'CODBARRASINTERNO'
      Size = 30
    end
    object ADQEstoqueCODBARRASTRIB: TStringField
      FieldName = 'CODBARRASTRIB'
      Origin = 'CODBARRASTRIB'
      Size = 30
    end
  end
  object dtsEstoque: TDataSource
    DataSet = ADQEstoque
    Left = 64
    Top = 112
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConectaBase
    Left = 152
    Top = 112
  end
  object ADQValidade: TFDQuery
    Active = True
    AfterScroll = ADQEstoqueAfterScroll
    Connection = FDConectaBase
    SQL.Strings = (
      'select * from tvalidadeestoque')
    Left = 264
    Top = 48
    object ADQValidadeCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
    end
    object ADQValidadePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 100
    end
    object ADQValidadeLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 100
    end
  end
  object dtsValidade: TDataSource
    DataSet = ADQValidade
    Left = 328
    Top = 48
  end
end
