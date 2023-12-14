unit UMainForm;

interface

uses
  Winapi.Windows, Math, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, UGetTickets, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UConnection, Vcl.Buttons;

type
  TMainForm = class(TForm)
    dtgTickets: TDBGrid;
    btnAdd: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure dtgTicketsDblClick(Sender: TObject);
  private
    FGetTickets: TGetTickets;
    dsTickets: TDataSource;
    procedure AdjustColumnWidths(Grid: TDBGrid);
  public
    TicketsQuery: TFDQuery;
    procedure LoadTicketsData;
  end;

var
  MainForm: TMainForm;

implementation

uses UCreateTicket, UEditTicket;
{$R *.dfm}

procedure TMainForm.btnAddClick(Sender: TObject);
begin
  CreateTicket := TCreateTicket.Create(Self);
  try
      CreateTicket.ShowModal;
  finally
      CreateTicket.Free;
  end;
end;

procedure TMainForm.dtgTicketsDblClick(Sender: TObject);
var
  EditTicket: TEditTicket;
begin
  if dtgTickets.SelectedRows.Count > 0 then
  begin
    EditTicket := TEditTicket.Create(Self);
    try
      dtgTickets.DataSource.DataSet.GotoBookmark(dtgTickets.SelectedRows[0]);
      EditTicket.txbDescription.Text := dtgTickets.DataSource.DataSet.FieldByName('description').AsString;
      EditTicket.ShowModal;
    finally
      EditTicket.Free;
    end;
  end;
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
  AdjustColumnWidths(dtgTickets);
end;

procedure TMainForm.AdjustColumnWidths(Grid: TDBGrid);
var
  i, j, MaxWidth: Integer;
  Canvas: TCanvas;
begin
  Canvas := Grid.Canvas;

  Grid.DataSource.DataSet.DisableControls;
  try
    for i := 0 to Grid.Columns.Count - 1 do
    begin
      MaxWidth := 0;
      Grid.DataSource.DataSet.First;
      while not Grid.DataSource.DataSet.Eof do
      begin
        Canvas.Font := Grid.Font;
        MaxWidth := Max(MaxWidth, Canvas.TextWidth(Grid.Columns[i].Field.AsString));
        Grid.DataSource.DataSet.Next;
      end;

      if MaxWidth > 0 then
        Grid.Columns[i].Width := MaxWidth + 10;
    end;
  finally
    Grid.DataSource.DataSet.EnableControls;
    Grid.DataSource.DataSet.First;
  end;
end;

end.

