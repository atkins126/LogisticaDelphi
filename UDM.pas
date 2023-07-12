unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Forms, Dialogs, FMTBcd,
  DBClient, Provider;

type
  TDM = class(TDataModule)
    BDLogistica: TSQLConnection;
    dtsUsuarios: TSQLDataSet;
    dtsUsuariosUSR_CODIGO: TIntegerField;
    dtsUsuariosLOGIN: TStringField;
    dtsUsuariosSENHA: TStringField;
    dtsUsuariosMASTER: TStringField;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuarioUSR_CODIGO: TIntegerField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioMASTER: TStringField;
    qryGenIDUsuario: TSQLQuery;
    qryGenIDUsuarioID: TFMTBCDField;
    dtsProdutos: TSQLDataSet;
    dpsProduto: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    qryGenIDProduto: TSQLQuery;
    FMTBCDField1: TFMTBCDField;
    dtsProdutosPDT_ID: TIntegerField;
    dtsProdutosPDT_NOME: TStringField;
    dtsProdutosPDT_ESTOQUE: TIntegerField;
    dtsProdutosCLN_ID: TIntegerField;
    dtsProdutosPDT_VALOR: TFMTBCDField;
    dtsProdutosPDT_TIPO: TStringField;
    cdsProdutosPDT_ID: TIntegerField;
    cdsProdutosPDT_NOME: TStringField;
    cdsProdutosPDT_ESTOQUE: TIntegerField;
    cdsProdutosCLN_ID: TIntegerField;
    cdsProdutosPDT_VALOR: TFMTBCDField;
    cdsProdutosPDT_TIPO: TStringField;
    dtsClientes: TSQLDataSet;
    dpsClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    qryGenIDCliente: TSQLQuery;
    FMTBCDField4: TFMTBCDField;
    dtsClientesCLN_ID: TIntegerField;
    dtsClientesCLN_NOME: TStringField;
    dtsClientesCLN_DOCUMENTO: TStringField;
    dtsClientesCLN_TELEFONE: TStringField;
    dtsClientesTIPO: TStringField;
    dtsClientesPAIS_ID: TIntegerField;
    cdsClientesPDT_ID: TIntegerField;
    cdsClientesPDT_NOME: TStringField;
    cdsClientesPDT_ESTOQUE: TIntegerField;
    cdsClientesCLN_ID: TIntegerField;
    cdsClientesPDT_VALOR: TFMTBCDField;
    cdsClientesPDT_TIPO: TStringField;
    dtsFormasPgto: TSQLDataSet;
    dspFormasPgto: TDataSetProvider;
    cdsFormasPgto: TClientDataSet;
    qryGenIDFormasPgto: TSQLQuery;
    dtsFormasPgtoPGTO_ID: TIntegerField;
    dtsFormasPgtoDESCRICAO: TStringField;
    dtsFormasPgtoQTD_PARCELAS: TSmallintField;
    dtsFormasPgtoCOND_PGTO: TStringField;
    cdsFormasPgtoPGTO_ID: TIntegerField;
    cdsFormasPgtoDESCRICAO: TStringField;
    cdsFormasPgtoQTD_PARCELAS: TSmallintField;
    cdsFormasPgtoCOND_PGTO: TStringField;
    qryGenIDFormasPgtoID: TFMTBCDField;
    dtsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    qryGenIDPais: TSQLQuery;
    dtsPaisPAIS_ID: TIntegerField;
    dtsPaisNOME: TStringField;
    cdsPaisPAIS_ID: TIntegerField;
    cdsPaisNOME: TStringField;
    qryGenIDPaisID: TFMTBCDField;
    dsMeiosTransporte: TSQLDataSet;
    dspMeiosTransporte: TDataSetProvider;
    cdsMeiosTransporte: TClientDataSet;
    qryGenIDMeiosTransporte: TSQLQuery;
    dsMeiosTransporteTRANS_ID: TIntegerField;
    dsMeiosTransporteDESCRICAO: TStringField;
    cdsMeiosTransporteTRANS_ID: TIntegerField;
    cdsMeiosTransporteDESCRICAO: TStringField;
    qryGenIDMeiosTransporteID: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CriarFormulario(T: TFormClass; F: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
    vLogin: Boolean;
  end;

var
  DM: TDM;

implementation

uses ULogin, UPrincipal;

{$R *.dfm}


procedure Tdm.CriarFormulario(T:TFormClass; F:TForm);
begin
  try
    Application.CreateForm(T, F);
    F.ShowModal;
  finally
    F.Free;
  end;
end;


procedure TDM.DataModuleCreate(Sender: TObject);

  var
  vPath: String;
begin
  vPath:=ExtractFilePath(Application.ExeName)+'start.txt';

  try
    //Conectando ao BD
    BDLogistica.Close;
    BDLogistica.Params.LoadFromFile(vPath);
    BDLogistica.Open;

    //Criando formulário login
    Application.CreateForm(TFLogin, FLogin);
    FLogin.ShowModal;
    FLogin.Free;

    //Leva à tela principal se estiver logado
    if vLogin then
    begin
      Application.CreateForm(TFPrincipal, FPrincipal);
      FPrincipal.ShowModal;
      FPrincipal.Free;
    end
    else
      Application.Terminate;

  except
    on E: exception do
      ShowMessage(E.Message);
    end;
end;

end.
