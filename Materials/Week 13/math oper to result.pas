program Hello;
var s,s1,s2:String[255];
var n1,n2,n,c,r:integer;

begin
  readln(s);
  c:=0;
  val(s,n,c);
  writeln('Math operation is ', s[c]);
  s1:=s;
  s2:=s;
  Delete(s1,c,length(s)-c+1);
  Delete(s2,1,c);
  writeln('s1= ',s1,' s2= ',s2);
  val(s1,n1,r);
  val(s2,n2,r);
  writeln(s[c]);
  if s[c]='+' then 
    writeln(n1+n2)
  else if s[c]='-' then
    writeln(n1-n2)
    else if s[c]='*' then
        writeln(n1*n2)
    else if s[c]='/' then
        if n2<>0 then writeln(n1/n2) else writeln('err 0');
end.