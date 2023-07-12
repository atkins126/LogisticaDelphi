unit UCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TFCadastroProdutos = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDescricao: TDBEdit;
    edQTD: TDBEdit;
    P2: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dsProdutos: TDataSource;
    cbTipo: TComboBox;
    Label3: TLabel;
    edValor: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    lkFornecedor: TDBLookupComboBox;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroProdutos: TFCadastroProdutos;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadastroProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    close;
  if key = vk_return then
    Perform(WM_NEXTDLGCTL,0,0);
end;


end.
