program piramida;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,i,j:integer;
begin
{a=5
    *
  * * *
* * * * *
}
  randomize();
  write('enter a - ');
  readln(a);
  for i:=1 to a div 2 +1 do
    Begin
      for j:=1 to (a div 2)+1-i do write(' ');
      for j:=1 to i*2-1 do write('*');
      writeln;
    end;
  readln;
end.
