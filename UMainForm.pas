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
    procedure AdjustColumnWidths(Grid: TDBGrid);
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
  AdjustColumnWidths(dtgTickets);
end;

procedure TMainForm.AdjustColumnWidths(Grid: TDBGrid);
var
  i: Integer;
  MaxWidth, TextWidth: Integer;
  Canvas: TCanvas;
begin
  if Assigned(Grid.DataSource) and Assigned(Grid.DataSource.DataSet) then
  begin
    Canvas := Grid.Canvas;


    for i := 0 to Grid.Columns.Count - 1 do
    begin

      MaxWidth := Canvas.TextWidth(Grid.Columns[i].Title.Caption);


      Grid.DataSource.DataSet.First;
      while not Grid.DataSource.DataSet.EOF do
      begin
        TextWidth := Canvas.TextWidth(Grid.Columns[i].Field.AsString);
        if TextWidth > MaxWidth then
          MaxWidth := TextWidth;
        Grid.DataSource.DataSet.Next;
      end;


      MaxWidth := MaxWidth + 10;


      Grid.Columns[i].Width := MaxWidth;
    end;
  end;
end;

end.

