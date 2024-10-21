

program Hello;

var mass:array[1..2000] of integer;
n,i,j,r,c:integer;
num:real;
begin

readln(n);
c:=0;
if n>2000 then
    Begin
    writeln('Err, max n = 2000');
    n:=2000;
end;

randomize;
for i:=1 to n do
    begin
    r:= random(30);
    if r < 8 then
            begin
            write(' step 3 ');
                mass[i]:=3;
                for j:=1 to r do
                    mass[i]:=mass[i]*3;
            end
        else
            mass[i]:=r;
        write(mass[i]:3);
    end;
    
    writeln();
    for i:=1 to n do
        begin
            num:=mass[i-c];
            //write(num:3:0);
            while num>1 do
                num:=num/3;
            
            if num=1 then
                Begin
                    for j:=i-c to n-c do
                        mass[j]:=mass[j+1];
                   // write(' - step 3 ok');
                    c:=c+1
                end;
        //    else
               //write(' - usual number');
            //writeln();
            //for j:=1 to n-c do
              //  write(mass[j]:5);
            //writeln();
        end;
    for i:=1 to n-c do
        write(mass[i]:5);
    writeln();
    writeln(n-c);
end.
