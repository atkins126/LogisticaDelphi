program Logistica;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  ULogin in 'ULogin.pas' {FLogin},
  UCadastroMeiosTransporte in 'UCadastroMeiosTransporte.pas' {FCadastroMeiosTrans},
  UProdutos in 'UProdutos.pas' {FProdutos},
  UCadProduto in 'UCadProduto.pas' {FCadastroProdutos},
  UFormasPagamento in 'UFormasPagamento.pas' {FFormasPagamento},
  UCadFormaPagamento in 'UCadFormaPagamento.pas' {FCadastroFormaPagamento},
  UMeiosTransporte in 'UMeiosTransporte.pas' {FMeiosTransporte},
  UUsuarios in 'UUsuarios.pas' {FUsuarios},
  UCadUsuario in 'UCadUsuario.pas' {FCadastroUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Logistica';
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
