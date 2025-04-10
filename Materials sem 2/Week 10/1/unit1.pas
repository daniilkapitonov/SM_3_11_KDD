unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;
type
  test = record
    t1: integer;
    t2:string[10];
  end;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public
    fileint:file of test;
  end;

var
  Form1: TForm1;

implementation
uses
              unit2

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var cash:integer;
begin
  if OpenDialog1.Execute then
  Begin
    Label1.Caption:=OpenDialog1.FileName;
    Assignfile(fileint,OpenDialog1.FileName);
    Reset(fileint);
    Read(fileint, cash);
    Edit1.Text:=IntToStr(cash);
    Closefile(fileint);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Begin
     Label1.Caption:=SaveDialog1.FileName;
     Assignfile(fileint,SaveDialog1.FileName);
     Rewrite(fileint);
     Write(fileint,666);
     Closefile(fileint);
     Form2.show;
  end;

end;

initialization
  {$I unit1.lrs}

end.

