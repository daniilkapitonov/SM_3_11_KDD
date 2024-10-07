program Hello;
const n =10;
var a:array[1..n] of integer=(2,0,34,-123,12,-9,2345,-98,45,10);
var m:array[1..5] of integer=(1,4,8,2,10);
var i,j,cash:integer;
var min,max,sum:integer;

begin
    for i:=1 to 5 do
    begin  
        for j:=1 to 5 do
        begin
            if m[i]>m[j] then
                Begin
                    cash:=m[i];
                    m[i]:=m[j];
                    m[j]:=cash;
                end;
        end;
    end;
    for i:=1 to 5 do writeln(m[i]);
    
    
    
end.
