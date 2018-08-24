program janio;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, Usuario, elemento, Profissional, especialidade, Agenda,
  contUsuario, frmPrincipal, frmlogin, DM;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tdm1, dm1);
//  Application.CreateForm(TfLogin, fLogin);
  Application.Run;
end.

