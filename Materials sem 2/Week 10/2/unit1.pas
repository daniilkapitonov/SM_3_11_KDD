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
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses Unit2;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Hide;
  Form2.show;
end;

initialization
  {$I unit1.lrs}

end.

