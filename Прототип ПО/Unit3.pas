unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, XPMan, StdCtrls, ExtCtrls, ComObj, Jpeg, Grids;

type
  TForm3 = class(TForm)
    XPManifest1: TXPManifest;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    Button1: TButton;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    Image2: TImage;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    GroupBox2: TGroupBox;
    StringGrid2: TStringGrid;
    GroupBox3: TGroupBox;
    StringGrid3: TStringGrid;
    GroupBox4: TGroupBox;
    StringGrid4: TStringGrid;
    GroupBox5: TGroupBox;
    StringGrid5: TStringGrid;
    GroupBox6: TGroupBox;
    StringGrid6: TStringGrid;
    GroupBox7: TGroupBox;
    StringGrid7: TStringGrid;
    GroupBox8: TGroupBox;
    StringGrid8: TStringGrid;
    Memo2: TMemo;
    Button2: TButton;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Memo3: TMemo;
    Label1: TLabel;
    Button3: TButton;
    StringGrid9: TStringGrid;
    StringGrid10: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  Sl: TstringList;
  W, Way: string;
  i : Word;
  s : string;
  J : Integer;
begin
  OpenDialog1.Execute;
  W:=OpenDialog1.FileName;
  Way :=ExtractFileDir(OpenDialog1.FileName);
  Way:=Way + '\preview.bmp';
  Sl := TstringList.Create;
  try
  sl.LoadFromFile(OpenDialog1.FileName);
  Memo1.SetSelTextBuf(PChar(sl.Text));
  finally
  sl.Free;
  Image1.Picture.LoadFromFile(Way);
  //Анизотропия или Изотропия
    if (ChangeFileExt(ExtractFileName(OpenDialog1.Filename),'')='Anisotropic Elasticity')  then
      begin
        GroupBox1.Visible:=False;
        GroupBox4.Visible:=True;
        GroupBox2.Visible:=True;
        GroupBox3.Visible:=True;
      end;
    if (ChangeFileExt(ExtractFileName(OpenDialog1.Filename),'')='Isotropic Elasticity')  then
      begin
        GroupBox1.Visible:=True;
        GroupBox4.Visible:=False;
        GroupBox2.Visible:=True;
        GroupBox3.Visible:=True;
      end;
  //Поиск материала
  s := 'Material Data ';
  for I:=0 to Memo1.Lines.Count-1 do
  if Memo1.Lines.Strings[I]=S then
    begin
      StringGrid1.Cells[0,0]:='Materials';
      StringGrid1.Cells[1,0]:=Memo1.Lines.Strings[I+1];
    end;
  //Поиск модуля Юнга
  s := 'Young';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Young', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid1.Cells[0,1]:='Young^s Modulus Pa';
      StringGrid1.Cells[1,1]:=Memo1.Lines.Strings[I+5];
    end;
  //Поиск вида модели (Изотропия/анизотропия)
  s := 'Poisson^s Ratio';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Poisson', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid1.Cells[0,2]:='Poisson^s Ratio';
      StringGrid1.Cells[1,2]:=Memo1.Lines.Strings[I+5];
    end;
  //Tensile Ultimate Strength Pa
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Tensile Ultimate Strength Pa', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid1.Cells[0,3]:='Tensile Ultimate Strength Pa';
      StringGrid1.Cells[1,3]:=Memo1.Lines.Strings[I+1];
    end;
  //Isotropic Instantaneous Coefficient of Thermal Expansion
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Isotropic Instantaneous Coefficient of Thermal Expansion', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid1.Cells[0,4]:='Isotropic Instantaneous Coefficient of Thermal Expansion';
      StringGrid1.Cells[1,4]:=Memo1.Lines.Strings[I+1];
    end;
  //Line Pressure
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Y Component', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid2.Cells[0,0]:='Line Pressure';
      StringGrid2.Cells[1,0]:=Memo1.Lines.Strings[I+2];
    end;
  //Magnitude
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Magnitude', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid2.Cells[0,1]:='Thermal  Condition';
      StringGrid2.Cells[1,1]:=Memo1.Lines.Strings[I+2];
    end;
  //Minimum
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Calculate Time History', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid3.Cells[0,0]:='Minimum';
      StringGrid3.Cells[1,0]:=Memo1.Lines.Strings[I+8];
    end;
  //Maximum
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Calculate Time History', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid3.Cells[0,1]:='Maximum';
      StringGrid3.Cells[1,1]:=Memo1.Lines.Strings[I+10];
    end;
  //Average
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Calculate Time History', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid3.Cells[0,2]:='Average';
      StringGrid3.Cells[1,2]:=Memo1.Lines.Strings[I+12];
    end;
  for I:=0 to 6 do
    for j:=0 to 6 do
      StringGrid4.Cells[I,J]:='0';

  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[0,0]:=Memo1.Lines.Strings[I+7];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[0,1]:=Memo1.Lines.Strings[I+13];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[1,1]:=Memo1.Lines.Strings[I+14];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[0,2]:=Memo1.Lines.Strings[I+19];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[1,2]:=Memo1.Lines.Strings[I+20];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[2,2]:=Memo1.Lines.Strings[I+21];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[3,3]:=Memo1.Lines.Strings[I+28];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[4,4]:=Memo1.Lines.Strings[I+35];
    end;
  for I:=0 to Memo1.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo1.Lines.Strings[I]) <> 0 then
    begin
      StringGrid4.Cells[5,5]:=Memo1.Lines.Strings[I+42];
    end;
end;
end;





procedure TForm3.FormCreate(Sender: TObject);
begin
  StringGrid1.ColWidths[0] := 250;
  StringGrid1.ColWidths[1] := 134;
  StringGrid2.ColWidths[0] := 250;
  StringGrid2.ColWidths[1] := 134;
  StringGrid3.ColWidths[0] := 250;
  StringGrid3.ColWidths[1] := 134;
  StringGrid6.ColWidths[0] := 250;
  StringGrid6.ColWidths[1] := 134;
  StringGrid7.ColWidths[0] := 250;
  StringGrid7.ColWidths[1] := 134;
  StringGrid8.ColWidths[0] := 250;
  StringGrid8.ColWidths[1] := 134;
  StringGrid9.ColWidths[0] := 250;
  StringGrid9.ColWidths[1] := 134;
  StringGrid10.ColWidths[0] := 250;
  StringGrid10.ColWidths[1] := 134;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  Sl: TstringList;
  W, Way: string;
  i : Word;
  s : string;
  J : Integer;
begin
  OpenDialog1.Execute;
  W:=OpenDialog1.FileName;
  Way :=ExtractFileDir(OpenDialog1.FileName);
  Way:=Way + '\preview.bmp';
  Sl := TstringList.Create;
  try
  sl.LoadFromFile(OpenDialog1.FileName);
  Memo2.SetSelTextBuf(PChar(sl.Text));
  finally
  sl.Free;
  Image2.Picture.LoadFromFile(Way);
  //Анизотропия или Изотропия
    if (ChangeFileExt(ExtractFileName(OpenDialog1.Filename),'')='Anisotropic Elasticity')  then
      begin
        GroupBox6.Visible:=False;
        GroupBox5.Visible:=True;
        GroupBox7.Visible:=True;
        GroupBox8.Visible:=True;
      end;
    if (ChangeFileExt(ExtractFileName(OpenDialog1.Filename),'')='Isotropic Elasticity')  then
      begin
        GroupBox6.Visible:=True;
        GroupBox5.Visible:=False;
        GroupBox7.Visible:=True;
        GroupBox8.Visible:=True;
      end;
  //Поиск материала
  s := 'Material Data ';
  for I:=0 to Memo2.Lines.Count-1 do
  if Memo2.Lines.Strings[I]=S then
    begin
      StringGrid6.Cells[0,0]:='Materials';
      StringGrid6.Cells[1,0]:=Memo2.Lines.Strings[I+1];
    end;
  //Поиск модуля Юнга
  s := 'Young';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Young', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid6.Cells[0,1]:='Young^s Modulus Pa';
      StringGrid6.Cells[1,1]:=Memo2.Lines.Strings[I+5];
    end;
  //Поиск вида модели (Изотропия/анизотропия)
  s := 'Poisson^s Ratio';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Poisson', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid6.Cells[0,2]:='Poisson^s Ratio';
      StringGrid6.Cells[1,2]:=Memo2.Lines.Strings[I+5];
    end;
  //Tensile Ultimate Strength Pa
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Tensile Ultimate Strength Pa', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid6.Cells[0,3]:='Tensile Ultimate Strength Pa';
      StringGrid6.Cells[1,3]:=Memo2.Lines.Strings[I+1];
    end;
  //Isotropic Instantaneous Coefficient of Thermal Expansion
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Isotropic Instantaneous Coefficient of Thermal Expansion', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid6.Cells[0,4]:='Isotropic Instantaneous Coefficient of Thermal Expansion';
      StringGrid6.Cells[1,4]:=Memo2.Lines.Strings[I+1];
    end;
  //Line Pressure
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Y Component', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid7.Cells[0,0]:='Line Pressure';
      StringGrid7.Cells[1,0]:=Memo2.Lines.Strings[I+2];
    end;
  //Magnitude
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Magnitude', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid7.Cells[0,1]:='Thermal  Condition';
      StringGrid7.Cells[1,1]:=Memo2.Lines.Strings[I+2];
    end;
  //Minimum
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Calculate Time History', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid8.Cells[0,0]:='Minimum';
      StringGrid8.Cells[1,0]:=Memo2.Lines.Strings[I+8];
    end;
  //Maximum
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Calculate Time History', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid8.Cells[0,1]:='Maximum';
      StringGrid8.Cells[1,1]:=Memo2.Lines.Strings[I+10];
    end;
  //Average
  s := 'Tensile Ultimate Strength Pa';
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Calculate Time History', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid8.Cells[0,2]:='Average';
      StringGrid8.Cells[1,2]:=Memo2.Lines.Strings[I+12];
    end;
  for I:=0 to 6 do
    for j:=0 to 6 do
      StringGrid5.Cells[I,J]:='0';

  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[0,0]:=Memo2.Lines.Strings[I+7];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[0,1]:=Memo2.Lines.Strings[I+13];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[1,1]:=Memo2.Lines.Strings[I+14];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[0,2]:=Memo2.Lines.Strings[I+19];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[1,2]:=Memo2.Lines.Strings[I+20];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[2,2]:=Memo2.Lines.Strings[I+21];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[3,3]:=Memo2.Lines.Strings[I+28];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[4,4]:=Memo2.Lines.Strings[I+35];
    end;
  for I:=0 to Memo2.Lines.Count-1 do
  if pos('Anisotropic Elasticity', Memo2.Lines.Strings[I]) <> 0 then
    begin
      StringGrid5.Cells[5,5]:=Memo2.Lines.Strings[I+42];
    end;
end;
end;

procedure TForm3.Button3Click(Sender: TObject);
var
  I, J : Integer;
begin
  for I:=0 to 2 do
    for J:=0 to 3 do
      begin
        StringGrid9.Cells[I,J]:=StringGrid3.Cells[I,J];
        StringGrid10.Cells[I,J]:=StringGrid8.Cells[I,J];
      end;
  Memo3.Lines.Add('Предельное значение деформации для неоднородной пластины ' + StringGrid10.Cells[1,1]);
  Memo3.Lines.Add('по сравнению с предельным значением деформации однородной пластины ' + StringGrid9.Cells[1,1] + ' , говорит о пользе армирования пластины.') ;
  Memo3.Lines.Add('Полученные численные результаты показывают, что за счет выбора типа структуры, геометрии армирования,');
  Memo3.Lines.Add('комбинации материалов возможно создание конструкции с заранее заданными прочностными характеристиками.');
end;

end.
