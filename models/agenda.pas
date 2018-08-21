unit Agenda;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Elemento;

type
  TAgenda = class(TElemento)
  public
    DataHora: TDateTime;
    IdEspecialidade: integer;
    IdProfissional: integer;
    Presenca: boolean;
  end;

implementation

end.
