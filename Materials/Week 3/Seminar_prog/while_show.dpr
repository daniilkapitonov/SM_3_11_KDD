program while_show;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var a,b:integer;
var x:integer;
begin
  a:=100;
  b:=2;
  x:=0;
  while (a>b) do
  Begin
    a:=a-b;
    Writeln('A - ',a);
    x:=x+1;
  end;
  Writeln('While has been ended, result of a - ',a);
  writeln('Count of iteration - ',x);
  readln;
end.
