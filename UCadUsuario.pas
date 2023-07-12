unit UCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, FMTBcd, SqlExpr;

type
  TFCadastroUsuarios = class(TForm)
    P1: TPanel;
    P2: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dbedLogin: TDBEdit;
    dbedSenha: TDBEdit;
    ckMaster: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    dsUsuarios: TDataSource;
    qryUser: TSQLQuery;
    qryUserUSR_CODIGO: TIntegerField;
    qryUserLOGIN: TStringField;
    qryUserSENHA: TStringField;
    qryUserMASTER: TStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbedLoginChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroUsuarios: TFCadastroUsuarios;

implementation

uses UDM;

{$R *.dfm}

procedure TFCadastroUsuarios.btnCancelarClick(Sender: TObject);
begin
  dm.cdsUsuario.Cancel;
  Close;
end;

procedure TFCadastroUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    begin
    dm.cdsUsuario.Cancel;
    Close;
    end;
  if key = VK_RETURN then
    Perform(WM_NEXTDLGCTL,0,0);

end;

procedure TFCadastroUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.cdsUsuario.State in [dsInsert,dsEdit] then
  dm.cdsUsuario.Cancel;
end;

procedure TFCadastroUsuarios.btnSalvarClick(Sender: TObject);
begin

  if dbedLogin.text = '' then
  begin
    ShowMessage('Informe o Login');
    exit;
  end;
  if dbedSenha.text = '' then
  begin
    ShowMessage('Informe a senha');
    exit;
  end;
  qryUser.Close;
  qryUser.SQL.Clear;
  qryUser.SQL.Add('select * from USUARIOS where LOGIN like '''+dbedLogin.text+'''');
  qryUser.open;
  if qryUser.FieldByName('LOGIN').AsString <> '' then
  begin
    ShowMessage('Já existe um usuário com esse login');
    exit;
  end;


  if dm.cdsUsuario.State=dsInsert then
  begin
    dm.qryGenIDUsuario.Close;
    dm.qryGenIDUsuario.Open;
    dm.cdsUsuarioUSR_CODIGO.AsInteger := dm.qryGenIDUsuarioID.AsInteger;
  end;
    dm.cdsUsuario.Post;
    dm.cdsUsuario.ApplyUpdates(0);
    ShowMessage('Informações armazenadas com Sucesso');
    Close;

end;

procedure TFCadastroUsuarios.dbedLoginChange(Sender: TObject);
begin
  qryUser.SQL.clear;
end;

end.
