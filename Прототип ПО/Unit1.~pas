unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Menus, Math, XPMan;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SaveDialog1: TSaveDialog;
    XPManifest1: TXPManifest;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.N4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, J: Integer;
begin
  for I:=0 to 5 do
    for J:=0 to 5 do
      StringGrid1.Cells[I,J]:='0';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  W1,W2,V,F1,F2,E,E1,E2,Y1,Y2,Y: Real;
  I,J: Integer;
begin
  for I:=0 to 5 do
    for J:=0 to 5 do
      StringGrid1.Cells[I,J]:='0';
  W1:=StrToFloat(Edit1.Text);
  W2:=StrToFloat(Edit2.Text);
  V:=StrToFloat(Edit3.Text);
  F1:=StrToFloat(Edit4.Text);
  F2:=StrToFloat(Edit5.Text);
  E:=StrToFloat(Edit6.Text);
  E1:=StrToFloat(Edit7.Text);
  E2:=StrToFloat(Edit8.Text);
  Y:=StrToFloat(Edit9.Text);
  Y1:=StrToFloat(Edit10.Text);
  Y2:=StrToFloat(Edit11.Text);
  StringGrid1.Cells[0,0]:=FloatToStr(((1-W1-W2)*(E/(1-V*V)))+ E1*W1*Power((Cos(F1)),4) + E2*W2*Power((Cos(F2)),4));
  StringGrid1.Cells[1,1]:=FloatToStr(((1-W1-W2)*(E/(1-V*V)))+ E1*W1*Power((Sin(F1)),4) + E2*W2*Power((Sin(F2)),4));
  StringGrid1.Cells[0,1]:=FloatToStr(((1-W1-W2)*(E/(1-V*V)))+ E1*W1*Power((Cos(F1)),2)*Power((Sin(F1)),2) + E2*W2*Power((Cos(F1)),2)*Power((Sin(F1)),2));
  StringGrid1.Cells[2,2]:=FloatToStr(((1-W1-W2)*(E/(2*(1+V))))+ E1*W1*Power((Cos(F1)),2)*Power((Sin(F1)),2) + E2*W2*Power((Cos(F2)),2));
  StringGrid1.Cells[0,2]:=FloatToStr(E1*W1*Power(Cos(F1),3)*Sin(F1)+E2*W2*Power(Cos(F2),3)*Sin(F2));
  StringGrid1.Cells[1,2]:=FloatToStr(E1*W1*Cos(F1)*Power(Sin(F1),3)+E2*W2*Cos(F2)*Power(Sin(F2),3));
  StringGrid1.Cells[3,3]:=FloatToStr((1-W1-W2)*((Y1*E)/(1-V))+E1*W1*Y1*Power(Cos(F1),2)+E2*W2*Y2*Power(Cos(F2),2));
  StringGrid1.Cells[4,4]:=FloatToStr((1-W1-W2)*((Y1*E)/(1-V))+E1*W1*Y1*Power(Sin(F1),2)+E2*W2*Y2*Power(Sin(F2),2));
  StringGrid1.Cells[5,5]:=FloatToStr(E1*W1*Y1*Cos(F1)*Sin(F1)+E2*W2*Y2*Power(Cos(F2),2));
end;

procedure TForm1.N3Click(Sender: TObject);
var
  S1: string;
  F: TextFile;
  I,J: Integer;
begin
  if SaveDialog1.Execute then
    begin
      AssignFile(F,SaveDialog1.FileName+'.txt');
      Rewrite(F);
      Append(F);
      for I:=0 to 5 do
        begin
          for J:=0 to 5 do
            begin
              S1:= S1 + StringGrid1.Cells[J,I] + #9;
            end;
        Writeln(F,S1);
        S1:='';
        end;
    end;
  CloseFile(F);
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
