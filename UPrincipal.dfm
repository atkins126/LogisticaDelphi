object FPrincipal: TFPrincipal
  Left = 559
  Top = 183
  Width = 1305
  Height = 675
  Caption = 'Sistema de Log'#237'stica'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = Menu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object Menu: TMainMenu
    Left = 8
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Usurios1: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Usurios2: TMenuItem
        Caption = 'Produtos'
        OnClick = Usurios2Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
      object Compras1: TMenuItem
        Caption = 'Compras'
      end
      object Estoque1: TMenuItem
        Caption = 'Estoque'
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      object Caixa1: TMenuItem
        Caption = 'Caixa'
      end
      object Despesas1: TMenuItem
        Caption = 'Despesas'
      end
      object Receitas1: TMenuItem
        Caption = 'Receitas'
      end
    end
    object Administrativo1: TMenuItem
      Caption = 'Administrativo'
      object Usurios3: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = Usurios3Click
      end
      object FormasdePagamento1: TMenuItem
        Caption = 'Formas de Pagamento'
        OnClick = FormasdePagamento1Click
      end
      object MeiosdeTransporte1: TMenuItem
        Caption = 'Meios de Transporte'
        OnClick = MeiosdeTransporte1Click
      end
      object Pases1: TMenuItem
        Caption = 'Pa'#237'ses'
        OnClick = Pases1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
