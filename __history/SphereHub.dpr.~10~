program SphereHub;

uses
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  UConnection in 'UConnection.pas' {DataModuleSphereHub: TDataModule},
  UGetTickets in 'UGetTickets.pas',
  UCreateTicket in 'UCreateTicket.pas' {CreateTicket},
  UEditTicket in 'UEditTicket.pas' {EditTicket};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModuleSphereHub, DataModuleSphereHub);
  Application.CreateForm(TMainForm, MainForm);
  //Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCreateTicket, CreateTicket);
  Application.CreateForm(TEditTicket, EditTicket);
  Application.Run;
end.
