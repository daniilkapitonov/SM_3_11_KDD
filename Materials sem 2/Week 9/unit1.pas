unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var f: text;
  cash:string;
begin
   if OpenDialog1.Execute then
   Begin
     //Label1.Caption:='File has been selected';
     Label1.Caption:= OpenDialog1.FileName;
     AssignFile(f,Label1.Caption);
     Reset(f);
     Memo1.Clear;
     while not eof(f) do
     Begin
       Readln(f,cash);
       Memo1.Append(cash);
     end;
     Close(f);
   end
   else
       Label1.Caption:='File was not selected';

end;


initialization
  {$I unit1.lrs}

end.

