program Calc;

{$APPTYPE CONSOLE}

//Разработать программу, которая для двух введенных
//чисел позволяет выполнять одно из
//четырех арифметических действий (использовать оператор выбора).
uses
  SysUtils;

var a,b,z:integer;
var res:Real;

begin

    Writeln('Enter 2 numbers');
    read(a,b);
    Writeln('Your numbers: ',a,' ',b);
    Writeln('Enter number for arif. oper.: 1-plus 2-minus 3-umn 4-del');
    Readln(z);
    if (z=1) then res:=a+b;
    if (z=2) then res:=a-b;
    if (z=3) then res:=a*b;
    if (z=4) then Begin
      if (b<>0) then res:=a/b else Begin
        Writeln('Del na 0');
        res:=0;
      end;
    end;
    writeln('Your result - ',res:3:2);
    readln;
end.
