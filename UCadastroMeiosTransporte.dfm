object FCadastroMeiosTrans: TFCadastroMeiosTrans
  Left = 913
  Top = 400
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Meios de Transporte'
  ClientHeight = 126
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 85
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 15
      Caption = 'Pa'#237's'
    end
    object edDescricao: TDBEdit
      Left = 16
      Top = 40
      Width = 169
      Height = 23
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsMeiosTrans
      TabOrder = 0
    end
  end
  object P2: TPanel
    Left = 0
    Top = 85
    Width = 200
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clActiveCaption
    TabOrder = 1
    object btnSalvar: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object dsMeiosTrans: TDataSource
    DataSet = DM.cdsMeiosTransporte
    Left = 128
    Top = 8
  end
end
