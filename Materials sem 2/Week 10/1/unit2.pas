unit Unit2;

{$mode ObjFPC}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs;

type

  { TForm2 }

  TForm2 = class(TForm)
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{ TForm2 }

procedure TForm2.FormActivate(Sender: TObject);
begin

end;

initialization
  {$I unit2.lrs}

end.

