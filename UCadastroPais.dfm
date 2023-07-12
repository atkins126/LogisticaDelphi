object Form1: TForm1
  Left = 327
  Top = 272
  Width = 211
  Height = 158
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 203
    Height = 86
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Login'
    end
    object dbedLogin: TDBEdit
      Left = 16
      Top = 40
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LOGIN'
      DataSource = dsPaises
      TabOrder = 0
    end
  end
  object P2: TPanel
    Left = 0
    Top = 86
    Width = 203
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
    end
    object btnCancelar: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
    end
  end
  object dsPaises: TDataSource
    DataSet = DM.dtsPais
    Left = 136
    Top = 8
  end
end
