unit UCVector;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

const
  MaxE = 50;

type
  ClaseVector = class
    private
      dimension:Integer;
      vector: array[1..MaxE] of Integer;
    public
      constructor Crear; //Este es mi Constructor
      procedure cargarRandomico(a,b,cantidad:integer);
      function mostrarVector:string;
      function contarPar():Integer;
  end;

implementation

  constructor ClaseVector.Crear; //Este es mi Constructor
  begin
    dimension:= 0;
  end;

  procedure ClaseVector.cargarRandomico(a,b,cantidad:integer);
  var
    i:Integer;
  begin
    Randomize; //datos randomicos
    dimension:= cantidad;
    for i:= 1 to dimension do
    begin
      vector[i]:= Random(b - a +1) + a;
    end;
  end;

  function ClaseVector.mostrarVector:string;
  var
    resultado: String;
    i:integer;
  begin
    resultado:= '|';
    for i:= 1 to dimension do
    begin
       resultado:= resultado + IntToStr(vector[i]) + '|';
    end;
    result:= resultado;
  end;

  function ClaseVector.contarPar():Integer;
  var
    contador:Integer;
    i:Integer;
  begin
    contador:= 0;
    for i:= 1 to dimension do
    begin
       if ((vector[i] mod 2 ) = 0 ) then
       begin
         //contador := contador + 1;
         inc(contador);
         //contador++;
       end;
       result:= contador;
    end;
  end;

end.

