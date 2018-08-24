unit controller;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, elemento;

type
  IController = interface
    ['{C0247D9C-4B9F-4DF4-97B8-E8AEE782D57C}']
    // Função para listar todos os elementos
    function Listar(lista: TList): integer;
    // Função para carregar o elemento
    function Get(id: integer; objeto: TElemento): boolean;
    // Função para inserir/atualizar o elemento
    function Put(objeto: TElemento): boolean;
    // Função para excluir o elemento
    function Delete(objeto: TElemento): boolean;

  end;

implementation

end.
