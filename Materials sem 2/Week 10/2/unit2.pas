unit Unit2;

{$mode ObjFPC}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses Unit1;

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
     Form2.hide;
     Form1.show;
end;

initialization
  {$I unit2.lrs}

end.

