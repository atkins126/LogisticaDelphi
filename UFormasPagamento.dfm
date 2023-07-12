object FFormasPagamento: TFFormasPagamento
  Left = 514
  Top = 299
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Formas de Pagamento'
  ClientHeight = 644
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 60
    Align = alTop
    Color = clGradientActiveCaption
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 49
      Height = 15
      Caption = 'Localizar'
    end
    object edLocalizar: TEdit
      Left = 15
      Top = 24
      Width = 657
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edLocalizarChange
    end
  end
  object P2: TPanel
    Left = 0
    Top = 595
    Width = 689
    Height = 49
    Align = alBottom
    Color = clGradientActiveCaption
    TabOrder = 1
    object btnIncluir: TBitBtn
      Left = 416
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TBitBtn
      Left = 504
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 592
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object G1: TDBGrid
    Left = 0
    Top = 60
    Width = 689
    Height = 535
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsFormasPgto
    FixedColor = clSkyBlue
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = G1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 443
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_PARCELAS'
        Title.Caption = 'Qtd. Parcelas'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COND_PGTO'
        Title.Caption = 'Condi'#231#227'o Pagamento'
        Visible = True
      end>
  end
  object dsFormasPgto: TDataSource
    DataSet = DM.cdsFormasPgto
    Left = 32
    Top = 600
  end
end
