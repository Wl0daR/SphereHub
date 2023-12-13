unit UEditTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEditTicket = class(TForm)
    txbDescription: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditTicket: TEditTicket;

implementation

uses UMainForm;
{$R *.dfm}

end.
