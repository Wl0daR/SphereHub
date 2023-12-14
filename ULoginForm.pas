unit ULoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    btnLogin: TButton;
    txtLogin: TEdit;
    txtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    function GetCurrentUserName: string;
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}


procedure TLoginForm.FormCreate(Sender: TObject);
var
   login: String;
begin
     Login := GetCurrentUserName;

     txtLogin.Text := Login;
end;

function TLoginForm.GetCurrentUserName: string;
var
  UserName: array[0..255] of Char;
  Size: DWORD;
begin
  Size := 256;
  if GetUserName(UserName, Size) then
    Result := StrPas(UserName)
  else
    Result := '';
end;

end.
