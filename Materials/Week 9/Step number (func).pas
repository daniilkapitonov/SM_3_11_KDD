

program Hello;

var n,s,i,j,cash:integer;

Function step(number:integer;s:integer):integer;
    var i,cash:integer;
    begin
        cash:=1;
        for i:=1 to s do
            cash:=cash*number;
        step:=cash;
    end;

begin
  readln(n,s);
  writeln('Result of = ',step(n,s));
  
  for i:=1 to 9 do
    writeln('3 v step ',i,' = ', step(n,i))
    

end.
