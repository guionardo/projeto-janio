unit frmLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mssqlconn, sqldb, FileUtil, Forms, Controls, Graphics,
  Dialogs;

type

  { TForm1 }

  TForm1 = class(TForm)
    MSSQLConnection1: TMSSQLConnection;
    SQLConnector1: TSQLConnector;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

