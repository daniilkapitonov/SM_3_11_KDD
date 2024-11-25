program Hello;
var s:String[255];
var i,j,n,c,r:integer;
mass:array [1..10,1..10] of integer;

mass_s: array[1..5] of String;
begin
n:=5;
  for i:=1 to n do
    readln(mass_s[i]);
  writeln;
  for i:=1 to n do
    writeln(mass_s[i]);
    
  writeln(mass_s[1][4]);
end.