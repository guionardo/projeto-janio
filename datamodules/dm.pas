unit DM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, ZConnection, ZDataset;

type

  { Tdm1 }

  Tdm1 = class(TDataModule)
    ZConn: TZConnection;
  private

  public
    function Conectar: boolean;
    function GetQuery: TZQuery;
  end;

var
  dm1: Tdm1;

implementation

{$R *.lfm}

{ Tdm1 }

function Tdm1.Conectar: boolean;
begin
  if ZConn.Connected then
    Exit(True);
  Result := False;
  try
    // Ajustar a configuração do banco de dados
    ZConn.HostName := 'localhost\SQLEXPRESS';
    ZConn.Database := 'TesteJanio';
    ZConn.Connect;
    Result := ZConn.Connected;
  finally
  end;
end;

function Tdm1.GetQuery: TZQuery;
var
  zq: TZQuery;
begin
  zq := TZQuery.Create(self);
  zq.Connection := ZConn;
  Result := zq;
end;

end.
