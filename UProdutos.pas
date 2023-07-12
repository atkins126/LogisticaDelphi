unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFProdutos = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    edLocalizar: TEdit;
    P2: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    G1: TDBGrid;
    dsProdutos: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

uses UDM, UCadProduto;

{$R *.dfm}

procedure TFProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    Close;
end;


procedure TFProdutos.FormCreate(Sender: TObject);
begin
  dm.cdsProdutos.close;
  dm.cdsProdutos.Open;
end;

procedure TFProdutos.btnIncluirClick(Sender: TObject);
begin
  self.Visible := false;
  dm.cdsProdutos.Append;
  dm.cdsProdutosPDT_ESTOQUE.AsInteger:=0;
  dm.cdsProdutosPDT_VALOR.AsFloat    :=0;
  dm.cdsProdutosPDT_TIPO.AsString    :='T';
  dm.CriarFormulario(TFCadastroProdutos,FCadastroProdutos);
  self.Visible :=true;
end;

end.
