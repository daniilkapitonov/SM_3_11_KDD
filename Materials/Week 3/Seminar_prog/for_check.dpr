program for_check;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var i:integer;
begin
  for i:=1 to 10 do
  Begin
    writeln(i);

  end;
  for i:=10 downto 1 do
    writeln(i);
  readln;
end.
