unit UCadastroMeiosTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, FMTBcd, SqlExpr;

type
  TFCadastroMeiosTrans = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    edDescricao: TDBEdit;
    Label1: TLabel;
    dsMeiosTrans: TDataSource;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroMeiosTrans: TFCadastroMeiosTrans;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadastroMeiosTrans.btnCancelarClick(Sender: TObject);
begin
  dm.cdsMeiosTransporte.Cancel;
  Close;
end;

procedure TFCadastroMeiosTrans.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    begin
    dm.cdsMeiosTransporte.Cancel;
    Close;
    end;
  if key = VK_RETURN then
    Perform(WM_NEXTDLGCTL,0,0);

end;

procedure TFCadastroMeiosTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.cdsMeiosTransporte.State in [dsInsert,dsEdit] then
  dm.cdsPais.Cancel;
end;

procedure TFCadastroMeiosTrans.btnSalvarClick(Sender: TObject);
begin

  if edDescricao.text = '' then
  begin
    ShowMessage('Informe a descrição do meio de transporte');
    exit;
  end;

  if dm.cdsMeiosTransporte.State=dsInsert then
  begin
    dm.qryGenIDMeiosTransporte.Close;
    dm.qryGenIDMeiosTransporte.Open;
    dm.qryGenIDMeiosTransporteID.AsInteger := dm.qryGenIDMeiosTransporteID.AsInteger;
  end;
    dm.cdsMeiosTransporte.Post;
    dm.cdsMeiosTransporte.ApplyUpdates(0);
    ShowMessage('Informações armazenadas com Sucesso');
    Close;

end;

end.
