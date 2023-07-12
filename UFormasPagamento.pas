unit UFormasPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFFormasPagamento = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    edLocalizar: TEdit;
    P2: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    G1: TDBGrid;
    dsFormasPgto: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edLocalizarChange(Sender: TObject);
    procedure G1DblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFormasPagamento: TFFormasPagamento;

implementation

uses UDM, UCadFormaPagamento;

{$R *.dfm}

procedure TFFormasPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    close;
end;

procedure TFFormasPagamento.btnIncluirClick(Sender: TObject);
begin
  self.Visible := false;
  dm.cdsFormasPgto.Append;
  dm.cdsFormasPgtoCOND_PGTO.AsString:='V';
  dm.CriarFormulario(TFCadastroFormaPagamento,FCadastroFormaPagamento);
  self.Visible :=true;
end;

procedure TFFormasPagamento.btnAlterarClick(Sender: TObject);
begin
  if dm.cdsFormasPgto.IsEmpty then
    exit;
  self.Visible := false;
  dm.cdsFormasPgto.Edit;
  dm.CriarFormulario(TFCadastroFormaPagamento,FCadastroFormaPagamento);
  self.Visible := true;
end;

procedure TFFormasPagamento.FormCreate(Sender: TObject);
begin
  dm.cdsFormasPgto.close;
  dm.cdsFormasPgto.Open;
end;

procedure TFFormasPagamento.edLocalizarChange(Sender: TObject);
begin
  if edLocalizar.Text <> '' then
    dm.cdsFormasPgto.Locate('DESCRICAO',edLocalizar.Text,[loPartialKey,loCaseInsensitive])
end;

procedure TFFormasPagamento.G1DblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TFFormasPagamento.btnExcluirClick(Sender: TObject);
begin
  if not dm.cdsFormasPgto.IsEmpty then
    begin
      if MessageDlg('Confirma exclusão?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        dm.cdsFormasPgto.Delete;
        dm.cdsFormasPgto.ApplyUpdates(0);
        ShowMessage('Forma de Pagamento Excluída!');
      end;
   end;
end;

end.
