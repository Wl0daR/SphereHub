unit UMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, UGetTickets, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UConnection;

type
  TMainForm = class(TForm)
    dtgTickets: TDBGrid;
    btnAdd: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    FGetTickets: TGetTickets;
    dsTickets: TDataSource;
  public
    TicketsQuery: TFDQuery;
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
     FGetTickets := TGetTickets.Create;
     LoadTicketsData;
end;

procedure TMainForm.LoadTicketsData;
begin
     Self.dsTickets := TDataSource.Create(Self);
     dsTickets.DataSet := FGetTickets.GetAllTickets;
     dtgTickets.DataSource := Self.dsTickets;
end;

end.

