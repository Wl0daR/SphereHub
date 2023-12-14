program SphereHub;

uses
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  UConnection in 'UConnection.pas' {DataModuleSphereHub: TDataModule},
  UGetTickets in 'UGetTickets.pas',
  UCreateTicket in 'UCreateTicket.pas' {CreateTicket},
  UEditTicket in 'UEditTicket.pas' {EditTicket},
  ULoginForm in 'ULoginForm.pas' {LoginForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModuleSphereHub, DataModuleSphereHub);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.Run;
end.
