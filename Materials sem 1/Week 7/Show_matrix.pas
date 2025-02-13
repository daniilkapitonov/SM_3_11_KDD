

program Hello;
var mass:array[1..5,1..3] of integer = ((1,2,3),
                                        (4,5,6),
                                        (7,8,9),
                                        (10,11,12),
                                        (13,14,15));
var i,j:integer;

begin
  i:=0;
  j:=0;
  for i:=1 to 5 do
    begin
        for j:=1 to 3 do
            begin
                write(mass[i,j]:3);
            end;
        writeln();
    end;
    {переворот матрицы на 90*
    for j:=1 to 3 do
    begin
        for i:=1 to 5 do
            begin
                write(mass[i,j]:3);
            end;
        writeln();
    end;}
            
end.
