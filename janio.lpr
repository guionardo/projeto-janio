program janio;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Usuario, elemento, Profissional, especialidade, Agenda,
  contUsuario, frmPrincipal, frmlogin;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
//  Application.CreateForm(TfLogin, fLogin);
  Application.Run;
end.

