unit UCadastroPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    P1: TPanel;
    Label1: TLabel;
    dbedLogin: TDBEdit;
    P2: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dsPaises: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UDM;

{$R *.dfm}

end.
