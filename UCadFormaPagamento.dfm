object FCadastroFormaPagamento: TFCadastroFormaPagamento
  Left = 620
  Top = 308
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 191
  ClientWidth = 429
  Color = clWhite
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
  object Label1: TLabel
    Left = 22
    Top = 16
    Width = 56
    Height = 15
    Caption = 'Descri'#231#227'o'
  end
  object Label2: TLabel
    Left = 206
    Top = 72
    Width = 49
    Height = 15
    Caption = 'Parcelas'
  end
  object P1: TPanel
    Left = 0
    Top = 150
    Width = 429
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    TabOrder = 0
    DesignSize = (
      429
      41)
    object btnSalvar: TBitBtn
      Left = 249
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TBitBtn
      Left = 331
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object edDescricao: TDBEdit
    Left = 22
    Top = 40
    Width = 385
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = dsFormasPgto
    TabOrder = 1
  end
  object cbVista: TDBCheckBox
    Left = 22
    Top = 96
    Width = 97
    Height = 23
    Caption = #192' Vista'
    DataField = 'COND_PGTO'
    DataSource = dsFormasPgto
    TabOrder = 2
    ValueChecked = 'V'
    ValueUnchecked = 'P'
  end
  object edQtdParcelas: TDBEdit
    Left = 206
    Top = 96
    Width = 201
    Height = 23
    Hint = 'Quantidade de parcelas que essa condi'#231#227'o de pagamento ir'#225' ter'
    DataField = 'QTD_PARCELAS'
    DataSource = dsFormasPgto
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object dsFormasPgto: TDataSource
    DataSet = DM.cdsFormasPgto
    Left = 16
    Top = 149
  end
end
