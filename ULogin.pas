unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, FMTBcd, SqlExpr;

type
  TFLogin = class(TForm)
    P1: TPanel;
    P2: TPanel;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label1: TLabel;
    edSenha: TEdit;
    Label2: TLabel;
    dsUsuarios: TDataSource;
    edUsuario: TEdit;
    qUsuarios: TSQLQuery;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses UDM;

{$R *.dfm}

procedure TFLogin.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = VK_ESCAPE then
    BtnCancelar.Click;

  if key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  DM.cdsUsuario.Close;
  dm.cdsUsuario.Open;
end;

procedure TFLogin.BtnConfirmarClick(Sender: TObject);
begin


  //Confere se usu�rio foi preenchido
  if edUsuario.Text = '' then
  begin
      ShowMessage('Usu�rio inv�lido');
      exit;
  end;

  //Realiza a consulta pelo usu�rio
  qUsuarios.Close;
  qUsuarios.SQL.Clear;
  qUsuarios.SQL.Add('select * from USUARIOS where LOGIN like '''+edUsuario.Text+'''');
  qUsuarios.Open;

  //Realiza a verifica��o da senha
  if edSenha.Text <> qUsuarios.FieldByName('SENHA').AsString then
    begin
      ShowMessage('Usu�rio ou senha inv�lidos');
    end
  else
  begin
    dm.vLogin := true;
    Close;
  end;
end;

end.
