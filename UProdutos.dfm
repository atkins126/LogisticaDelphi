object FProdutos: TFProdutos
  Left = 506
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Produtos'
  ClientHeight = 644
  ClientWidth = 752
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
    Width = 752
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
      Width = 714
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object P2: TPanel
    Left = 0
    Top = 595
    Width = 752
    Height = 49
    Align = alBottom
    Color = clGradientActiveCaption
    TabOrder = 1
    object btnIncluir: TBitBtn
      Left = 480
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TBitBtn
      Left = 568
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnExcluir: TBitBtn
      Left = 656
      Top = 16
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Excluir'
      TabOrder = 2
    end
  end
  object G1: TDBGrid
    Left = 0
    Top = 60
    Width = 752
    Height = 535
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsProdutos
    FixedColor = clSkyBlue
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PDT_ID'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDT_NOME'
        Title.Caption = 'Descri'#231#227'o'
        Width = 319
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDT_ESTOQUE'
        Title.Caption = 'Quantidade em estoque'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDT_VALOR'
        Title.Caption = 'Valor Unit'#225'rio'
        Width = 188
        Visible = True
      end>
  end
  object dsProdutos: TDataSource
    DataSet = DM.cdsProdutos
    Left = 8
    Top = 608
  end
end
