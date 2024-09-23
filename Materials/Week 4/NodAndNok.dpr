program NodAndNok;

{$APPTYPE CONSOLE}
//Search NOD and NOK of two input numbers
//NOD - max bouth delitel
//NOK - min bouth cratnoe
uses
  SysUtils;

var a,b,i:integer;
  var NOD, NOK:integer;

begin
  write('Enter A number - ');
  readln(a);
  write('Enter B number - ');
  readln(b);
  nok:=a*b;
  while (a>0) and (b>0) do
    Begin
      if a>b then a:=a mod b else b:=b mod a
    end;
  if a>b then nod:=a else nod:=b;
  writeln('NOD = ', nod);
  nok:=nok div nod; //(nok/nod)
  writeln('NOK = ', nok);
  readln;

end.
 