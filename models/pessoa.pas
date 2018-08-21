unit pessoa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, elemento;

type
  TPessoa = class(Elemento)
  public
    Nome: string;
    DataNascimento: TDateTime;
    Endereco: string;
    Ativo: boolean;
  end;

implementation

end.
