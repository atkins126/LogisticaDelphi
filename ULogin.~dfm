object FLogin: TFLogin
  Left = 705
  Top = 390
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 201
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 160
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 32
      Width = 44
      Height = 15
      Caption = 'Usu'#225'rio'
    end
    object Label2: TLabel
      Left = 30
      Top = 96
      Width = 36
      Height = 15
      Caption = 'Senha'
    end
    object edSenha: TEdit
      Left = 30
      Top = 112
      Width = 291
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 16
      ParentFont = False
      PasswordChar = '#'
      TabOrder = 1
    end
    object edUsuario: TEdit
      Left = 30
      Top = 56
      Width = 291
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 0
    end
  end
  object P2: TPanel
    Left = 0
    Top = 160
    Width = 347
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clActiveCaption
    TabOrder = 1
    object BtnConfirmar: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = BtnConfirmarClick
    end
    object BtnCancelar: TBitBtn
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object dsUsuarios: TDataSource
    DataSet = DM.cdsUsuario
    Left = 8
    Top = 168
  end
  object qUsuarios: TSQLQuery
    DataSource = dsUsuarios
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.BDLogistica
    Left = 48
    Top = 168
  end
end
