unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


    procedure Edit2Click(Sender: TObject);

    procedure Edit3Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
begin
  randomize;
  ListBox1.Clear;
  for i:=0 to 9 do
      ListBox1.Items.add(Inttostr(random(100)+1));
end;

procedure TForm1.Button2Click(Sender: TObject);
var arr: array [0..9] of integer;
var i,j,cash:integer;
begin
     for i:=0 to 9 do
         arr[i] := Strtoint(Listbox1.Items[i]);
     for i:=0 to 9 do
         for j:=0 to 9 do
             Begin
               if arr[i]>arr[j] then
                  Begin
                    cash:=arr[i];
                    arr[i]:=arr[j];
                    arr[j]:=cash;
                  end;
             end;
     label1.caption:='';
      for i:=0 to 9 do
          Label1.caption := Label1.caption + InttoStr(arr[i]) + ' ';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     StringGrid1.RowCount:=StringGrid1.RowCount+1;
     StringGrid1.Cells[0,StringGrid1.RowCount-1]:=IntToStr(StringGrid1.RowCount-1);
     StringGrid1.Cells[1,StringGrid1.RowCount-1]:=Edit2.Text;
     StringGrid1.Cells[2,StringGrid1.RowCount-1]:=Edit3.Text;
     StringGrid1.Cells[3,StringGrid1.RowCount-1]:=ComboBox1.Text;
end;



procedure TForm1.Edit2Click(Sender: TObject);
begin
  Edit2.Text:='';
end;

procedure TForm1.Edit3Click(Sender: TObject);
begin
   Edit3.Text:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount:=1;
end;




procedure TForm1.ListBox1Click(Sender: TObject);
begin
   Label1.Caption:= (IntToStr(ListBox1.ItemIndex));
end;

initialization
  {$I unit1.lrs}

end.

