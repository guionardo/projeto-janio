unit documento;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Elemento;

type
  TDocumento = class(Elemento)
  public
    IdPessoa: integer;
    Tipo: string;
    DataExpedicao: TDateTime;
    OrgaoExpeditor: string;
    DataValidade: TDateTime;

  end;

implementation

end.

