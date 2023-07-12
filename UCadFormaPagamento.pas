unit UCadFormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, Buttons, ExtCtrls;

type
  TFCadastroFormaPagamento = class(TForm)
    P1: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dsFormasPgto: TDataSource;
    edDescricao: TDBEdit;
    Label1: TLabel;
    cbVista: TDBCheckBox;
    edQtdParcelas: TDBEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroFormaPagamento: TFCadastroFormaPagamento;

implementation

uses UDM;

{$R *.dfm}


procedure TFCadastroFormaPagamento.btnCancelarClick(Sender: TObject);
begin
  dm.cdsFormasPgto.Cancel;
  close;
end;

procedure TFCadastroFormaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  btnCancelar.click;
end;

procedure TFCadastroFormaPagamento.btnSalvarClick(Sender: TObject);
begin

  //Confere se campos foram preenchidos
  if (edDescricao.text = '') or (edQtdParcelas.text = '') then
  begin
    ShowMessage('Todos os campos devem ser preenchidos');
    exit;
  end;

  //Confere se parcela cont�m apenas n�meros
  if StrToIntDef(edQtdParcelas.Text,0) = 0then
  begin
    ShowMessage('Apenas n�meros s�o permitidos para parcelas');
    exit;
  end;

  //Confere se Condi��o e parcelas batem
  if (cbVista.Checked = true) and (StrToInt(edQtdParcelas.Text) > 1) then
  begin
    ShowMessage('Condi��es � vista devem ter no m�ximo uma parcela');
    exit;
  end;

  if dm.cdsFormasPgto.State=dsInsert then
  begin
    dm.qryGenIDFormasPgto.Close;
    dm.qryGenIDFormasPgto.Open;
    dm.cdsFormasPgtoPGTO_ID.AsInteger := dm.qryGenIDFormasPgtoID.AsInteger;
  end;
    dm.cdsFormasPgto.Post;
    dm.cdsFormasPgto.ApplyUpdates(0);
    ShowMessage('Informa��es armazenadas com Sucesso');
    Close;


end;

procedure TFCadastroFormaPagamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
    btnCancelar.click;
end;

end.
