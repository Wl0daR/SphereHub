unit UMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, UGetTickets, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TMainForm = class(TForm)
    dtgTickets: TDBGrid;
    btnAdd: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    FGetTickets: TGetTickets;
  public
    procedure LoadTicketsData;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnAddClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  LoadTicketsData;
end;

procedure TMainForm.LoadTicketsData;
var
  TicketsQuery: TFDQuery;
begin
  TicketsQuery := FGetTickets.GetAllTickets;
  try
    // Tutaj mo¿esz przetwarzaæ dane na temat biletów
    // np. u¿ywaæ TicketsQuery do wyœwietlenia danych w komponencie DBGrid
    dtgTickets.DataSource.DataSet := TicketsQuery; // Przyk³adowe ustawienie Ÿród³a danych dla DBGrid
  finally
    // TicketsQuery.Close; // Nie zamykaj TFDQuery, poniewa¿ mo¿e byæ u¿ywane do dalszej nawigacji po danych
  end;
end;

end.

