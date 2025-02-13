program GameOfNumber;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  var a,b:integer;
begin
  b:=0;
  randomize();
  a:=random(100)+1;
  writeln(a);
  {
  while b<>a do
    Begin
      write('Enter number - ');
      readln(b);
      if a<>b then writeln('Incorrect, err of desiztki - ', (a-b) div 10);
    end;
    }
  repeat
    Begin
     write('Enter number - ');
     readln(b);
     if a<>b then writeln('Incorrect, err of desiztki - ', (a-b) div 10);
     end;
  until a=b;
  writeln('You win!');
  readln;

end.
