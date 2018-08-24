unit frmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TForm2 }

  TForm2 = class(TForm)
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

uses contUsuario, frmLogin;

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormShow(Sender: TObject);
begin
  if ((UsuarioController.IdUsuario < 1) and (not UsuarioController.Login)) then
    Close;
end;

end.

