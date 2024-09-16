program repeat_untill;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c:integer;
begin
  a:=3;
  b:=3;
  c:=0;
  repeat write(1) until (a<>b);
  readln;
end.
