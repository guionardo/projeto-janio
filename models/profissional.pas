unit Profissional;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Elemento;

type
  TProfissional = class(TElemento)
  public
    IdPessoa: integer;   // Vinculado a pessoa física
    IdEspecialidade: integer;         // Vinculado a tabela de especialidades
  end;

implementation

end.
