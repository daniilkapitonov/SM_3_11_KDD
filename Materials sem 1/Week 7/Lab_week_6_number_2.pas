
{2. В массиве А после каждого отрицательного элемента вставить 
элемент с заданным значением.
}
program Hello;
const zn = 666;
const n=10;
var A:array[1..n*2] of integer;
var i,j,counter:integer;


begin
  i:=0;
  j:=0;
  counter:=0;
  randomize;
  for i:=1 to n do
    begin
        A[i]:= random(50)-30;
        write(A[i]:4);
    end;
  for i:=1 to n*2 do
     begin
        if A[i]<0 then
        begin  
            counter:=counter+1;
            for j:=n+counter downto i+2 do
                A[j]:= A[j-1];
            A[i+1]:= zn;
        end;
    end;
    writeln();
 for i:=1 to n+counter do
    begin
        //A[i]:= random(50)-30;
        write(A[i]:4);
    end;
end.
