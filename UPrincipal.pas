unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastro1: TMenuItem;
    Usurios1: TMenuItem;
    Fornecedores1: TMenuItem;
    Usurios2: TMenuItem;
    Consulta1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    Vendas2: TMenuItem;
    Compras1: TMenuItem;
    Estoque1: TMenuItem;
    Financeiro1: TMenuItem;
    Caixa1: TMenuItem;
    Despesas1: TMenuItem;
    Receitas1: TMenuItem;
    Administrativo1: TMenuItem;
    Usurios3: TMenuItem;
    FormasdePagamento1: TMenuItem;
    MeiosdeTransporte1: TMenuItem;
    Pases1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Sair1Click(Sender: TObject);
    procedure Usurios3Click(Sender: TObject);
    procedure Usurios2Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure Pases1Click(Sender: TObject);
    procedure MeiosdeTransporte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vLogin: Boolean;
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UUsuarios, UDM, UProdutos, UFormasPagamento, UPaises,
  UMeiosTransporte;

{$R *.dfm}

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key=VK_ESCAPE then
  Application.Terminate;
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrincipal.Usurios3Click(Sender: TObject);
begin
   dm.CriarFormulario(TFUsuarios, FUsuarios);
end;

procedure TFPrincipal.Usurios2Click(Sender: TObject);
begin
  dm.CriarFormulario(TFProdutos, FProdutos);
end;

procedure TFPrincipal.FormasdePagamento1Click(Sender: TObject);
begin
  dm.CriarFormulario(TFFormasPagamento, FFormasPagamento);
end;


procedure TFPrincipal.Pases1Click(Sender: TObject);
begin
  dm.CriarFormulario(TFPaises,FPaises);
end;

procedure TFPrincipal.MeiosdeTransporte1Click(Sender: TObject);
begin
  dm.CriarFormulario(TFMeiosTransporte, FMeiosTransporte);
end;

end.
