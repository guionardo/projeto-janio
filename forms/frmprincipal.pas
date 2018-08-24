unit frmPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    btnTeste: TButton;
    procedure btnTesteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

uses contUsuario, frmLogin, Usuario;

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormShow(Sender: TObject);
begin
  if ((UsuarioController.IdUsuario < 1) and (not UsuarioController.Login)) then
    Close;
end;

procedure TForm2.btnTesteClick(Sender: TObject);
var u: TUsuario;
begin
  u:=TUsuario.Create;
  UsuarioController.Get(1,u);
  ShowMessageFmt('Id: %d Nome: %s',[u.Id,u.Nome]);
  u.Free;
end;

end.

