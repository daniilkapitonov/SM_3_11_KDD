


program Hello;

//пользователь даёт нам размеры массива (x,y) и сумму элементов массива, выше которого 
//должен быть сам массив
//на выходе необходимо выдать матрицу для копирования самим пользователем

Type mass_type = array[1..2000,1..2000] of integer;
var mas:mass_type;

i,j,x,y:integer;
summ:integer;
mass_sum:integer;
check_f:integer;
flag:boolean;

Function mas_count(x,y:integer;summ:integer):mass_type;
var i,j,mass_sum:integer;
flag:integer;
begin  
mass_sum:=0;
    for i:=1 to x do
       begin
       for j:=1 to y do
        Begin
            mas[i,j]:=random(200)-100;
            mass_sum:=mass_sum+mas[i,j];
        end;
        end;
      if mass_sum>=summ then
      Begin
        writeln('Massive is correct', mass_sum);
            for i:=1 to x do
             begin
                for j:=1 to y do
                    Begin
                    write(mas[i,j]:4);
                    end;
            writeln();
            end;
        end
    else
        Begin
            writeln('Mass is incorrect');
            writeln('Try gen new mass again? 1-yes, 0-no');
            readln(flag);
            if flag=1 then
                mas_count:=mas_count(x,y,summ);
        end;
    mas_count:=mas;
end;

begin

flag:=true;
    while flag do
    Begin
      writeln('Enter 1-gen new mass, 2- end program');
      readln(check_f);
      if check_f=1 then
      Begin
          readln(x,y,summ);
          randomize;
          mas:=mas_count(x,y,summ);
        end
        else if check_f=2 then
            Begin
                flag:=false;
                writeln('end program')
            end
        else writeln('err of value enter again');
    end;

    
  
end.
