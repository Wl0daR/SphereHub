program SphereHub;

uses
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  UConnection in 'UConnection.pas' {DataModuleSphereHub: TDataModule},
  UGetTickets in 'UGetTickets.pas',
  UCreateTicket in 'UCreateTicket.pas' {CreateTicket},
  UEditTicket in 'UEditTicket.pas' {EditTicket},
  ULoginForm in 'ULoginForm.pas' {LoginForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TDataModuleSphereHub, DataModuleSphereHub);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
