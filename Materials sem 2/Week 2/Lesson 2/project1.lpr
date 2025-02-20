program project1;
Type Room = object
  len,wid:single;
  function Sq:single; virtual;
  procedure Print;
  constructor Init(l,w:single);
end;

function Room.Sq:single;
Begin
     Result:=len*wid;
end;

procedure Room.Print;
Begin
     //writeln('Len - ',len:3:3, ' width - ', wid:3:3);
     writeln('Sq - ', Sq:3:2);
end;

constructor Room.Init(l,w:single);
Begin
     len:=l;
     wid:=w;
end;

Type RoomV = object(Room)
  hei:single;
  function Sq:single; virtual;
  constructor Init(l,w,h:single);
  //procedure Print;
end;

constructor RoomV.Init(l,w,h:single);
Begin
     inherited Init(l,w);
     //len:=l;
     //wid:=d;
     hei:=h;
end;

function RoomV.Sq:single;
Begin
     Sq:=(inherited Sq*hei);
end;

//procedure RoomV.Print;
//Begin
//     //writeln('Len - ',len:3:3, ' width - ', wid:3:3, ' height - ', hei:3:3);
//     writeln('Sq - ', Sq:3:2);
//end;

var R1:Room;
  R2:RoomV;

begin
  R1.Init(12.3,4.5);
  //writeln(R1.Sq:8:3);
  R1.Print();
  R2.Init(12.3,4.5,2);
  //writeln(R2.Sq:8:3);
  R2.Print();
end.

