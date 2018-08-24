unit frmlogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfLogin }

  TfLogin = class(TForm)
    btnOk: TButton;
    btnSair: TButton;
    cmbUsuario: TComboBox;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    IdUsuario:Integer;

  end;

var
  fLogin: TfLogin;

implementation

uses contUsuario, Usuario;

{$R *.lfm}

{ TfLogin }

procedure TfLogin.FormCreate(Sender: TObject);
var
  lista: TList;
  i: integer;

begin
  IdUsuario := -1;
  lista := TList.Create;

  if UsuarioController.Listar(lista) > 0 then
  begin
    for i := 0 to lista.Count-1 do
    begin
      cmbUsuario.AddItem(TUsuario(lista[i]).Nome, TObject(lista[i]));
    end;
  end;
  cmbUsuario.Enabled := cmbUsuario.Items.Count > 0;
end;

procedure TfLogin.btnOkClick(Sender: TObject);
var
  usuario: TUsuario;
begin
  if cmbUsuario.ItemIndex < 0 then
    Exit;
  usuario := TUsuario(cmbUsuario.Items.Objects[cmbUsuario.ItemIndex]);
  if (usuario.HashSenha = UsuarioController.HashSenha(edtSenha.Text)) then
  begin
    IdUsuario := usuario.Id;
    ModalResult := mrOk;
  end;
end;

end.

