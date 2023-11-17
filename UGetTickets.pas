unit UGetTickets;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, Data.DB, UConnection;

type
  TGetTickets = class
  private
    FQuery: TFDQuery;
  public
    constructor Create(AConnection: TFDConnection);
    function GetAllTickets: TFDQuery;
  end;

implementation

constructor TGetTickets.Create(AConnection: TFDConnection);
begin
  AConnection := UConnection.DataModuleSphereHub.FDConnection;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := AConnection;
end;

function TGetTickets.GetAllTickets: TFDQuery;
const
  SQL = 'SELECT * FROM reports';
begin
  FQuery.SQL.Text := SQL;
  FQuery.Open;
  Result := FQuery;
end;

end.

