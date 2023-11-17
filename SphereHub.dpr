program SphereHub;

uses
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {MainForm},
  UConnection in 'UConnection.pas' {DataModuleSphereHub: TDataModule},
  UGetTickets in 'UGetTickets.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModuleSphereHub, DataModuleSphereHub);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
