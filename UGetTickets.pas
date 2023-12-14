unit UGetTickets;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Comp.Client, Data.DB, UConnection;

type
  TGetTickets = class
  private
    FQuery : TFDQuery;
  public
    function GetAllTickets: TFDQuery;
  end;

implementation


function TGetTickets.GetAllTickets: TFDQuery;
begin
     FQuery := TFDQuery.Create(nil);
     try
        DataModuleSphereHub.FDConnection.Online;
        self.FQuery.Connection := DataModuleSphereHub.FDConnection;
        self.FQuery.Close;
        FQuery.SQL.Text := 'SELECT * FROM reports;';
        FQuery.Open;
        Result := self.FQuery;
        finally
        DataModuleSphereHub.FDConnection.Offline;
     end;
end;

end.

