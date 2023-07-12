unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFUsuarios = class(TForm)
    P1: TPanel;
    P2: TPanel;
    G1: TDBGrid;
    edLocalizar: TEdit;
    Label1: TLabel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    dsUsuarios: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edLocalizarChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure G1DblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation

uses UDM, UCadUsuario, UProdutos;

{$R *.dfm}

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Close;
end;


procedure TFUsuarios.edLocalizarChange(Sender: TObject);
begin
  if edLocalizar.Text <> '' then
    dm.cdsUsuario.Locate('LOGIN',edLocalizar.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFUsuarios.btnIncluirClick(Sender: TObject);
begin
  self.Visible := false;
  dm.cdsUsuario.Append;
  dm.cdsUsuarioMASTER.AsString:='N';
  dm.CriarFormulario(TFCadastroUsuarios,FCadastroUsuarios);
  self.Visible :=true;
end;

procedure TFUsuarios.btnAlterarClick(Sender: TObject);
begin
  if not dm.cdsUsuario.IsEmpty then
  begin
    self.Visible := false;
    dm.cdsUsuario.Edit;
    dm.CriarFormulario(TFCadastroUsuarios,FCadastroUsuarios);
    self.Visible :=true;
  end;
end;

procedure TFUsuarios.G1DblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TFUsuarios.btnExcluirClick(Sender: TObject);
begin
    if not dm.cdsUsuario.IsEmpty then
    begin
      if MessageDlg('Confirma exclusão?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        dm.cdsUsuario.Delete;
        dm.cdsUsuario.ApplyUpdates(0);
        ShowMessage('Usuário Excluído!');
      end;
   end;
end;

end.
