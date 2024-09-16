program Good_show;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c,d:integer;
begin

  //Readln(a,b,c,d);
  Write('Enter 1 number - ');
  Readln(a);
  Write('Enter 2 number - ');
  Readln(b);
  Write('Enter 3 number - ');
  Readln(c);
  Write('Enter 4 number - ');
  Readln(d);
  Writeln('Your numbers: ',a,', ',b,', ',c,', ',d);
  readln; 
end.
