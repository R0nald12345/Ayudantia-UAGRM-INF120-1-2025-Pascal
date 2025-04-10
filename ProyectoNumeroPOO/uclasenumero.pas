unit UClaseNumero;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

Type
  PracticoU1 = Class
    private
      valorNum: Integer;
    public
      constructor create();
      procedure setCambiar(nuevoValor: Integer);
      function getObtener():Integer;
      function getContarDigitos():Integer;
      function getSumarDigitos():Integer;
      function getMostrarDigitosPares():Integer;
      function getVerficarPrimo():Boolean;
      function verificarCapicua():Boolean;
      function convertirNumeroRomano():string;
      function convertirLiteral():string;

  end;

implementation
   //Constructor
   Constructor PracticoU1.create();
   begin
     valorNum := 0;
   end;

   procedure PracticoU1.setCambiar(nuevoValor: Integer);
   begin
     valorNum :=  nuevoValor;
   end;

   function PracticoU1.getObtener():integer;
   begin
     result:= valorNum;
   end;

   function PracticoU1.getContarDigitos():integer;
   var
     aux:Integer;
     contador:Integer;
   begin
     contador:=0;
     aux:= valorNum;
     while(aux > 0 ) do
     begin
        aux :=aux div 10;
        contador:=contador+1;
     end;
     result:= contador;
   end;

   function PracticoU1.getSumarDigitos():integer;
   var
     suma:Integer;
     re: Integer;
     aux:Integer;
   begin
     suma:=0;
     aux:= valorNum;

     while(aux > 0) do
     begin
       re:= aux mod 10;
       suma := suma + re;
       aux := aux div 10;
     end;
     result:= suma;
   end;

   function PracticoU1.getMostrarDigitosPares():integer;
   var
    aux: Integer;
    re: Integer;
    numeroNuevo:Integer;
    potencia: Integer;
   begin
      aux:= valorNum;
      potencia:=1;
      numeroNuevo:=0;
      while(aux > 0) do
      begin
        re := aux mod 10;
        if(re mod 2 = 0) then
        Begin
          numeroNuevo := (re * potencia ) +  numeroNuevo;
          potencia:= potencia *10;
        end;
        aux:= aux div 10;
      end;
      result:= numeroNuevo;
   end;

   function PracticoU1.getVerficarPrimo():Boolean;
   var
      residuo:Integer;
      bandera : boolean;
      i:Integer;
   begin
      for i:=2 to valorNum do
      begin
        residuo:= valorNum mod i;
        if(residuo = 0) then
          begin
             if( valorNum = i) then
              begin
                bandera:= true;
              end
             else
              begin
                bandera:= false;
              end;
              break;
          end

      end;
      result:= bandera;
   end;

   function PracticoU1.verificarCapicua():Boolean;
   var
      aux,re:Integer;
      nuevoValor : integer;
      b:boolean;

   begin
      aux:=valorNum;
      nuevoValor:=0;
      while(aux>0) do
      begin
        re:= aux mod 10;
        aux:= aux div 10;
        //Izquierda hacia la Derecha
        nuevoValor:= (nuevoValor * 10) + re;
      end;
      if(nuevoValor = valorNum )then
        b:= true
      else
        b:= false;

      result:= b;
   end;


function PracticoU1.ConvertirNumeroRomano():string;
  const
  valores: array[1..13] of Integer = (1000, 900, 500, 400, 100,
  90, 50, 40, 10, 9, 5, 4, 1);

  romanos: array[1..13] of String  = ('M', 'CM', 'D', 'CD', 'C',
  'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I');
var
  i: Integer;
  resultado: String;
  aux:integer;
begin
  resultado := '';
  aux:= valorNum;
  for i := 1 to 13 do
   begin

    while (aux >= valores[i]) do
      begin
        resultado := resultado + romanos[i];
        aux := aux - valores[i];
      end;

   end;

  result:= resultado;
end;


function PracticoU1.ConvertirLiteral():string;

 const
  unidades: array[1..9] of String = ('uno', 'dos', 'tres', 'cuatro', 'cinco',
   'seis', 'siete', 'ocho', 'nueve');
  decenas: array[1..9] of String = ('diez', 'veinte', 'treinta', 'cuarenta',
   'cincuenta', 'sesenta', 'setenta', 'ochenta', 'noventa');
  especiales: array[1..9] of String = ('once', 'doce', 'trece', 'catorce',
   'quince', 'dieciséis', 'diecisiete', 'dieciocho', 'diecinueve');

var
  d, u: Integer;
  numeroEnLetras: string;
  aux:Integer;
begin
  if (valorNum = 0) then
    NumeroEnLetras := 'cero'
  else if (valorNum <= 9) then
    NumeroEnLetras := unidades[valorNum]
  else if (valorNum = 10) then
    NumeroEnLetras := 'diez'
  else if (valorNum > 10) and (valorNum < 20) then
    NumeroEnLetras := especiales[valorNum - 10]
  else
  begin
    aux:= valorNum;
    //d=8
    d := aux div 10;  //8
    //u = 2
    u := aux mod 10;  //2
    NumeroEnLetras := decenas[d];
    if (u > 0) then
    begin
      if (d = 2) then
        NumeroEnLetras := 'veinti' + unidades[u]  // veintiuno, veintidós, etc.
      else
        NumeroEnLetras := NumeroEnLetras + ' y ' + unidades[u];
    end;

  end;
  result:=  NumeroEnLetras;
end;


end.

