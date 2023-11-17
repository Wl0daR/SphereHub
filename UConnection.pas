unit UConnection;

interface

uses
  Forms, System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client;

type
  TDataModuleSphereHub = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure CheckDBAvailability;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSphereHub: TDataModuleSphereHub;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleSphereHub.DataModuleCreate(Sender: TObject);
begin
    FDPhysMySQLDriverLink1.VendorLib := ExtractFilePath(Application.ExeName) + 'libmySQL.dll';
end;

procedure TDataModuleSphereHub.CheckDBAvailability;
begin
    try
        DataModuleSphereHub.FDConnection.Connected := True;
    finally
        DataModuleSphereHub.FDConnection.Connected := False;
    end;
end;

end.

