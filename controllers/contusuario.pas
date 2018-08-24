unit contUsuario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controller, elemento;

type

  { TUsuarioController }

  TUsuarioController = class(TInterfacedObject, IController)
  public
    /// Obtém uma lista de usuários do banco de dados
    function Listar(lista: TList): integer;
    function Get(id: integer; objeto: TElemento): boolean;
    function Put(objeto: TElemento): boolean;
    function Delete(objeto: TElemento): boolean;
    function HashSenha(senha: string): string;
    function Login: boolean;
    function IdUsuario: integer;
  private
    _idUsuario: integer;
  end;

var
  UsuarioController: TUsuarioController;

implementation

uses md5, Forms, Controls, frmLogin, Usuario;


{ TUsuarioController }

function TUsuarioController.Listar(lista: TList): integer;
var
  u: TUsuario;
begin
  if lista = nil then
    raise Exception.Create('Erro de parâmetro!');
  lista.Clear;

  u := TUsuario.Create;
  u.Id := 1;
  u.Nome := 'Guionardo';
  u.HashSenha := '81dc9bdb52d04dc20036dbd8313ed055'; // 1234
  lista.Add(u);

  u:=TUsuario.Create;
  u.Id:=2;
  u.Nome:='Djanio';
  u.HashSenha := '81dc9bdb52d04dc20036dbd8313ed055'; // 1234
  lista.Add(u);

  { TODO : Consultar o banco de dados e obter a lista de usuários }

  Result := lista.Count;
end;


function TUsuarioController.Get(id: integer; objeto: TElemento): boolean;
begin

end;

function TUsuarioController.Put(objeto: TElemento): boolean;
begin

end;

function TUsuarioController.Delete(objeto: TElemento): boolean;
begin

end;

function TUsuarioController.HashSenha(senha: string): string;
begin
  Result := MD5Print(MD5String(senha));
end;

function TUsuarioController.Login: boolean;
var
  fl: TfLogin;
begin
  fl := TfLogin.Create(Application);

  if fl.ShowModal = mrOk then
  begin
    _idUsuario := fl.IdUsuario;
    Result := True;
  end
  else
    Result := False;

  fl.Free;
end;

function TUsuarioController.IdUsuario: integer;
begin
  Result := _idUsuario;

end;

initialization
  UsuarioController := TUsuarioController.Create;

finalization
  UsuarioController.Free;

end.
