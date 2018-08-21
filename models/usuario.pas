unit Usuario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, elemento;

type
  TUsuario = class(TElemento)
  public
    Identidade: string;
    Nome: string;
    DataNascimento: TDateTime;
    DataValidade: TDateTime;
    Ativo: boolean;
    HashSenha: string;
  end;

implementation

end.

