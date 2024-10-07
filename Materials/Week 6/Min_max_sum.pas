program Hello;
const n =10;
var a:array[1..n] of integer=(2,0,34,-123,12,-9,2345,-98,45,10);
var i:integer;
var min,max,sum:integer;

begin
    max:=a[1];
    min:=a[1];
    sum:=0;
    for i:=1 to n do 
        Begin
            if min>a[i] then 
                min:=a[i];
            if a[i]>max then 
                max:=a[i];
            sum:= sum+a[i];
        end;
    writeln('Max = ', max);
    writeln('Min = ', min);
    writeln('Sum = ', sum);
   
    
    
end.
