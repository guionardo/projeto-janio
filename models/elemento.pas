unit elemento;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TElemento = class
  public
    Id: integer;
    DatHorInclusao: TDateTime;
    DatHorAlteracao: TDateTime;
    IdUsuarioInclusao: integer;
    IdUsuarioAlteracao: integer;
  end;

implementation

end.
