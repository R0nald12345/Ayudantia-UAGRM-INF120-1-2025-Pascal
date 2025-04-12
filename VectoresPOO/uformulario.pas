unit UFormulario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  UCVector ;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private
     objetoVector: ClaseVector;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  objetoVector:= ClaseVector.crear;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
var
 a,b,c : Integer;
begin
   a:= StrToInt(Edit1.Text);
   b:= StrToInt(Edit2.Text);
   c:= StrToInt(Edit3.Text);
  objetoVector.cargarRandomico(a,b,c);
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Edit4.Text :=  objetoVector.mostrarVector();
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Edit3.Text := IntToStr(objetoVector.contarPar());
end;

end.

