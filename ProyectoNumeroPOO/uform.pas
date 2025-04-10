unit UForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  Buttons, UClaseNumero;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;


    procedure FormCreate(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private
     num1: PracticoU1;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.MenuItem2Click(Sender: TObject);
begin
   num1.setCambiar(StrToInt( Edit1.Text));
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
   Edit2.Text := IntToStr(num1.getObtener());
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Edit2.Text :=  IntToStr(num1.getContarDigitos());
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
   Edit2.Text :=  IntToStr(num1.getSumarDigitos());
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Edit2.Text:= IntToStr(num1.getMostrarDigitosPares());
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
var
 b: boolean;
begin
  b:= num1.getVerficarPrimo();
  if(b=true) then
    Edit2.Text:= 'Es primo'
  else
    Edit2.Text:= 'No es primo';
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
var
 b:boolean;
begin
  b := num1.verificarCapicua();
  if (b = true) then
    Edit2.Text:= 'Si es Capicua'
  else
    Edit2.Text:= 'No es Capicua';
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Edit2.Text:= num1.convertirNumeroRomano();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  num1:= PracticoU1.create();
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  Edit2.Text:= num1.convertirLiteral();
end;







end.

