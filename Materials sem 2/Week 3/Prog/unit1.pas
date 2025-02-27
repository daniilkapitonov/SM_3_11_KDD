unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public
        counter:integer;
  end;

var
  Form1: TForm1;

implementation

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin
     Label1.Caption:=Edit1.Text;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
  counter:=1;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     counter:=counter+StrtoInt(Edit1.Text);
  Label1.Caption:='Считаем клики - '+Inttostr(counter);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;



initialization
  {$I unit1.lrs}

end.

