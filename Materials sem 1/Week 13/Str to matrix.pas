program Hello;
var s:String[255];
var i,j,n,c,r:integer;
mass:array [1..10,1..10] of integer;
begin
  c:=1;
  writeln('enter str of mass');
  readln(s);
  n:=trunc(sqrt(length(s)))+1;
  writeln('Mass matrix is ', n);
  for i:=1 to n do
  Begin
    for j:=1 to n do
    begin
      Val(s[c],mass[i][j],r);
      if r<>0 then
        writeln('R= ',r,' val= ',s[c]);
      c:=c+1;
      write(mass[i][j]:3)
    end;
  writeln;
  end;
end.