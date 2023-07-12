object FCadastroUsuarios: TFCadastroUsuarios
  Left = 913
  Top = 283
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 243
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
    Height = 202
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 31
      Height = 15
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 36
      Height = 15
      Caption = 'Senha'
    end
    object dbedLogin: TDBEdit
      Left = 16
      Top = 40
      Width = 169
      Height = 23
      CharCase = ecUpperCase
      DataField = 'LOGIN'
      DataSource = dsUsuarios
      TabOrder = 0
      OnChange = dbedLoginChange
    end
    object dbedSenha: TDBEdit
      Left = 16
      Top = 96
      Width = 169
      Height = 23
      CharCase = ecUpperCase
      DataField = 'SENHA'
      DataSource = dsUsuarios
      PasswordChar = '#'
      TabOrder = 1
    end
    object ckMaster: TDBCheckBox
      Left = 16
      Top = 136
      Width = 169
      Height = 17
      Caption = 'Master'
      DataField = 'MASTER'
      DataSource = dsUsuarios
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object P2: TPanel
    Left = 0
    Top = 202
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
  object dsUsuarios: TDataSource
    DataSet = DM.cdsUsuario
    Left = 152
    Top = 128
  end
  object qryUser: TSQLQuery
    DataSource = dsUsuarios
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from USUARIOS where LOGIN like '#39'PEDRO'#39)
    SQLConnection = DM.BDLogistica
    Left = 104
    Top = 128
    object qryUserUSR_CODIGO: TIntegerField
      FieldName = 'USR_CODIGO'
      Required = True
    end
    object qryUserLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 12
    end
    object qryUserSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 16
    end
    object qryUserMASTER: TStringField
      FieldName = 'MASTER'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
