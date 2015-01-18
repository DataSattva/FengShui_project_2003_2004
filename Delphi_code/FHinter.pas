unit FHinter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, FH, MyType;

type
  TFormFHInter = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SaveDialog1: TSaveDialog;
    RichEdit1: TRichEdit;
    OpenDialog1: TOpenDialog;
    N5: TMenuItem;
    StatusBar1: TStatusBar;
    N3: TMenuItem;
    Close1: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure CalcRich;
    procedure CalcGoro;
    procedure FormShow(Sender: TObject);
    procedure StyleTitl;
    procedure StyleTitl2;
    procedure StyleText;
    procedure StyleRed;
    procedure FormCreate(Sender: TObject);
    procedure Obshee;
    function SpecialCombes: string;
    function LicoDir (lico:Single):TDirect;
    function StarInMen_1 (dir:TGua) : shortint;
    function StarInMen_2 (dir:TGua) : shortint;
    function ChecSpecial_10 (F_Lico, M_Lico, F_Gora, M_Gora, Lico_20, Gora_20:shortint):string;
    procedure Close1Click(Sender: TObject);
    function ChecSpecial_3_1 (F_Lico, M_Lico, F_Gora, M_Gora:shortint):string;
    function ChecSpecial_3_2 (F_Lico, M_Lico:shortint):string;
    function ShaYString (vetv:shortint; direct:integer):string;
    function ShaMString (vetv:shortint; direct:integer):string;
    function TaiSuiString (F_Lico, FH_JungV,vetv:shortint; direct:integer):string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFHInter: TFormFHInter;
  MyStrings:TStringList;
  MyDirect:integer;
  z1:shortint;

implementation
uses FhCalc, FhUnit, preference, callform, people, calendar, my_moon, main;
{$R *.dfm}

function TFormFHInter.TaiSuiString (F_Lico, FH_JungV,vetv:shortint; direct:integer):string;
begin
result:='��� ��� � ����� '+IntToZhu(vetv)+'. �������� ������� ����. ';
if F_Lico=FH_JungV then
case DirectToGua(direct) of
 gua_Kan: if vetv=1 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� --  ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Gen: if (vetv=2) or (vetv=3) then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Zhen: if vetv=4 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Xun: if (vetv=5) or (vetv=6) then  result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Li: if vetv=7 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Kun: if (vetv=8) or (vetv=9) then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Dui: if vetv=10 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
 gua_Qian: if (vetv=11) or (vetv=12)then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, ��� ��� ������� ������ ����������� � ��������.';
end else
case DirectToGua(direct) of
 gua_Kan: if vetv=1 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Gen: if (vetv=2) or (vetv=3) then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Zhen: if vetv=4 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Xun: if (vetv=5) or (vetv=6) then  result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Li: if vetv=7 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Kun: if (vetv=8) or (vetv=9) then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Dui: if vetv=10 then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
 gua_Qian: if (vetv=11) or (vetv=12)then result:=result+'� ���� ���� ��� ������ �������� �� ���������� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������, �������� ��� ����� � ������ ������ '+VetvToStr(vetv,false)+' �� ���� ��������. ';
end;
end;

function TFormFHInter.ShaYString (vetv:shortint; direct:integer):string;
begin
 case vetv of
 1,5,9: begin
         result:='��� ����������� �� ���� �� ���. ';
         if direct<46 then
            result:=result+'� ���� ���� ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
         if direct>315 then
            result:=result+'� ���� ���� ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 2,6,10:begin
         result:='��� ����������� �� ���� �� �������. ';
         if direct>225 then if direct<316 then
            result:=result+'� ���� ���� ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 3,7,11:begin
         result:='��� ����������� �� ���� �� ������. ';
         if direct>135 then if direct<226 then
            result:=result+'� ���� ���� ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 4,8,12:begin
         result:='��� ����������� �� ���� �� ������. ';
         if direct>45 then if direct<136 then
            result:=result+'� ���� ���� ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 end;
end;

function TFormFHInter.ShaMString (vetv:shortint; direct:integer):string;
begin
 case vetv of
 1,5,9: begin
         result:='��� ����������� �� ������ �� ���. ';
          if direct<46 then
           result:=result+'� ���� ������ ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
          if direct>326 then
           result:=result+'� ���� ������ ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 2,6,10:begin
         result:='��� ����������� �� ������ �� �������. ';
         if direct>225 then if direct<316 then
            result:=result+'� ���� ������ ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 3,7,11:begin
         result:='��� ����������� �� ������ �� ������. ';
         if direct>135 then if direct<226 then
            result:=result+'� ���� ������ ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 4,8,12:begin
         result:='��� ����������� �� ������ �� ������. ';
         if direct>45 then if direct<136 then
            result:=result+'� ���� ������ ��� ����������� �������� �� ���� -- ������ �������, ������ ������ ��� ���������� � ������ � ������ ���������.';
        end;
 end
end;

function TFormFHInter.ChecSpecial_3_2 (F_Lico, M_Lico:shortint):string;
begin
result:='������������� ���� ��������� -- ���.';

if  F_Lico=M_Lico then
begin
 if (LicoDir(MyFHDirect)=d_S) or (LicoDir(MyFHDirect)=d_E) or (LicoDir(MyFHDirect)=d_NW) then
 begin
  if (SanGua (StrToInt(FormFH.LabelLiG.Caption), StrToInt(FormFH.LabelZhenG.Caption), StrToInt(FormFH.LabelQianG.Caption)))
      and
     (SanGua (StrToInt(FormFH.LabelLiN.Caption), StrToInt(FormFH.LabelZhenN.Caption), StrToInt(FormFH.LabelQianN.Caption)))
  then result:='������������� ���� ��������� ���� ��.';
 end;

 if (LicoDir(MyFHDirect)=d_N) or (LicoDir(MyFHDirect)=d_W) or (LicoDir(MyFHDirect)=d_SE) then
 begin
  if (SanGua (StrToInt(FormFH.LabelKanG.Caption), StrToInt(FormFH.LabelXunG.Caption), StrToInt(FormFH.LabelDuiG.Caption)))
      and
     (SanGua (StrToInt(FormFH.LabelKanN.Caption), StrToInt(FormFH.LabelXunN.Caption), StrToInt(FormFH.LabelDuiN.Caption)))
  then result:='������������� ���� ��������� ���� ����.';
 end;
end;

if (SanGua (StrToInt(FormFH.LabelGenG.Caption), StrToInt(FormFH.LabelGenN.Caption), StrToInt(FormFH.LabelGen20.Caption)))
      and
   (SanGua (StrToInt(FormFH.LabelCentrG.Caption), StrToInt(FormFH.LabelCentrN.Caption), StrToInt(FormFH.LabelCentr20.Caption)))
      and
   (SanGua (StrToInt(FormFH.LabelKunG.Caption), StrToInt(FormFH.LabelKunN.Caption), StrToInt(FormFH.LabelKun20.Caption)))
  then result:='������� ������������� ���� ���������. ������� �� ���� ������.';

end;

function TFormFHInter.ChecSpecial_3_1(F_Lico, M_Lico, F_Gora, M_Gora:shortint):string;
begin
result:='������������� ���� ����������� ����� -- ���.';

if F_Lico=M_lico then
begin
  if ((F_Lico=1) and (M_Gora=2) and(F_Gora=3)) or
     ((F_Lico=1) and (F_Gora=2) and(M_Gora=3)) or
     ((F_Lico=1) and (M_Gora=2) and(F_Gora=9)) or
     ((F_Lico=1) and (F_Gora=2) and(M_Gora=9)) or
     ((F_Lico=1) and (M_Gora=9) and(F_Gora=8)) or
     ((F_Lico=1) and (F_Gora=9) and(M_Gora=8)) or

     ((F_Lico=2) and (M_Gora=3) and(F_Gora=4)) or
     ((F_Lico=2) and (F_Gora=3) and(M_Gora=4)) or
     ((F_Lico=2) and (M_Gora=3) and(F_Gora=1)) or
     ((F_Lico=2) and (F_Gora=3) and(M_Gora=1)) or
     ((F_Lico=2) and (M_Gora=1) and(F_Gora=9)) or
     ((F_Lico=2) and (F_Gora=1) and(M_Gora=9)) or

     ((F_Lico=3) and (M_Gora=4) and(F_Gora=5)) or
     ((F_Lico=3) and (F_Gora=4) and(M_Gora=5)) or
     ((F_Lico=3) and (M_Gora=4) and(F_Gora=2)) or
     ((F_Lico=3) and (F_Gora=4) and(M_Gora=2)) or
     ((F_Lico=3) and (M_Gora=2) and(F_Gora=1)) or
     ((F_Lico=3) and (F_Gora=2) and(M_Gora=1)) or

     ((F_Lico=4) and (M_Gora=5) and(F_Gora=6)) or
     ((F_Lico=4) and (F_Gora=5) and(M_Gora=6)) or
     ((F_Lico=4) and (M_Gora=5) and(F_Gora=3)) or
     ((F_Lico=4) and (F_Gora=5) and(M_Gora=3)) or
     ((F_Lico=4) and (M_Gora=3) and(F_Gora=2)) or
     ((F_Lico=4) and (F_Gora=3) and(M_Gora=2)) or

     ((F_Lico=5) and (M_Gora=6) and(F_Gora=7)) or
     ((F_Lico=5) and (F_Gora=6) and(M_Gora=7)) or
     ((F_Lico=5) and (M_Gora=6) and(F_Gora=4)) or
     ((F_Lico=5) and (F_Gora=6) and(M_Gora=4)) or
     ((F_Lico=5) and (M_Gora=4) and(F_Gora=3)) or
     ((F_Lico=5) and (F_Gora=4) and(M_Gora=3)) or

     ((F_Lico=6) and (M_Gora=7) and(F_Gora=8)) or
     ((F_Lico=6) and (F_Gora=7) and(M_Gora=8)) or
     ((F_Lico=6) and (M_Gora=7) and(F_Gora=5)) or
     ((F_Lico=6) and (F_Gora=7) and(M_Gora=5)) or
     ((F_Lico=6) and (M_Gora=5) and(F_Gora=4)) or
     ((F_Lico=6) and (F_Gora=5) and(M_Gora=4)) or

     ((F_Lico=7) and (M_Gora=8) and(F_Gora=9)) or
     ((F_Lico=7) and (F_Gora=8) and(M_Gora=9)) or
     ((F_Lico=7) and (M_Gora=8) and(F_Gora=6)) or
     ((F_Lico=7) and (F_Gora=8) and(M_Gora=6)) or
     ((F_Lico=7) and (M_Gora=6) and(F_Gora=5)) or
     ((F_Lico=7) and (F_Gora=6) and(M_Gora=5)) or

     ((F_Lico=8) and (M_Gora=9) and(F_Gora=1)) or
     ((F_Lico=8) and (F_Gora=9) and(M_Gora=1)) or
     ((F_Lico=8) and (M_Gora=9) and(F_Gora=7)) or
     ((F_Lico=8) and (F_Gora=9) and(M_Gora=7)) or
     ((F_Lico=8) and (M_Gora=7) and(F_Gora=6)) or
     ((F_Lico=8) and (F_Gora=7) and(M_Gora=6)) or

     ((F_Lico=9) and (M_Gora=1) and(F_Gora=2)) or
     ((F_Lico=9) and (F_Gora=1) and(M_Gora=2)) or
     ((F_Lico=9) and (M_Gora=1) and(F_Gora=8)) or
     ((F_Lico=9) and (F_Gora=1) and(M_Gora=8)) or
     ((F_Lico=9) and (M_Gora=8) and(F_Gora=7)) or
     ((F_Lico=9) and (F_Gora=8) and(M_Gora=7))

    then
     result:='������������� ���� ����������� �����. ������� ����, �� ���������� '
         +IntToStr(F_Lico)+'-��, '+IntToStr(F_Gora)+'-�� � '+IntToStr(M_Gora)+'-�� ������.';
end;

if F_Gora=M_Gora then
begin
  if ((F_Gora=1) and (M_Lico=2) and(F_Lico=3)) or
     ((F_Gora=1) and (F_Lico=2) and(M_Lico=3)) or
     ((F_Gora=1) and (M_Lico=2) and(F_Lico=9)) or
     ((F_Gora=1) and (F_Lico=2) and(M_Lico=9)) or
     ((F_Gora=1) and (M_Lico=9) and(F_Lico=8)) or
     ((F_Gora=1) and (F_Lico=9) and(M_Lico=8)) or

     ((F_Gora=2) and (M_Lico=3) and(F_Lico=4)) or
     ((F_Gora=2) and (F_Lico=3) and(M_Lico=4)) or
     ((F_Gora=2) and (M_Lico=3) and(F_Lico=1)) or
     ((F_Gora=2) and (F_Lico=3) and(M_Lico=1)) or
     ((F_Gora=2) and (M_Lico=1) and(F_Lico=9)) or
     ((F_Gora=2) and (F_Lico=1) and(M_Lico=9)) or

     ((F_Gora=3) and (M_Lico=4) and(F_Lico=5)) or
     ((F_Gora=3) and (F_Lico=4) and(M_Lico=5)) or
     ((F_Gora=3) and (M_Lico=4) and(F_Lico=2)) or
     ((F_Gora=3) and (F_Lico=4) and(M_Lico=2)) or
     ((F_Gora=3) and (M_Lico=2) and(F_Lico=1)) or
     ((F_Gora=3) and (F_Lico=2) and(M_Lico=1)) or

     ((F_Gora=4) and (M_Lico=5) and(F_Lico=6)) or
     ((F_Gora=4) and (F_Lico=5) and(M_Lico=6)) or
     ((F_Gora=4) and (M_Lico=5) and(F_Lico=3)) or
     ((F_Gora=4) and (F_Lico=5) and(M_Lico=3)) or
     ((F_Gora=4) and (M_Lico=3) and(F_Lico=2)) or
     ((F_Gora=4) and (F_Lico=3) and(M_Lico=2)) or

     ((F_Gora=5) and (M_Lico=6) and(F_Lico=7)) or
     ((F_Gora=5) and (F_Lico=6) and(M_Lico=7)) or
     ((F_Gora=5) and (M_Lico=6) and(F_Lico=4)) or
     ((F_Gora=5) and (F_Lico=6) and(M_Lico=4)) or
     ((F_Gora=5) and (M_Lico=4) and(F_Lico=3)) or
     ((F_Gora=5) and (F_Lico=4) and(M_Lico=3)) or

     ((F_Gora=6) and (M_Lico=7) and(F_Lico=8)) or
     ((F_Gora=6) and (F_Lico=7) and(M_Lico=8)) or
     ((F_Gora=6) and (M_Lico=7) and(F_Lico=5)) or
     ((F_Gora=6) and (F_Lico=7) and(M_Lico=5)) or
     ((F_Gora=6) and (M_Lico=5) and(F_Lico=4)) or
     ((F_Gora=6) and (F_Lico=5) and(M_Lico=4)) or

     ((F_Gora=7) and (M_Lico=8) and(F_Lico=9)) or
     ((F_Gora=7) and (F_Lico=8) and(M_Lico=9)) or
     ((F_Gora=7) and (M_Lico=8) and(F_Lico=6)) or
     ((F_Gora=7) and (F_Lico=8) and(M_Lico=6)) or
     ((F_Gora=7) and (M_Lico=6) and(F_Lico=5)) or
     ((F_Gora=7) and (F_Lico=6) and(M_Lico=5)) or

     ((F_Gora=8) and (M_Lico=9) and(F_Lico=1)) or
     ((F_Gora=8) and (F_Lico=9) and(M_Lico=1)) or
     ((F_Gora=8) and (M_Lico=9) and(F_Lico=7)) or
     ((F_Gora=8) and (F_Lico=9) and(M_Lico=7)) or
     ((F_Gora=8) and (M_Lico=7) and(F_Lico=6)) or
     ((F_Gora=8) and (F_Lico=7) and(M_Lico=6)) or

     ((F_Gora=9) and (M_Lico=1) and(F_Lico=2)) or
     ((F_Gora=9) and (F_Lico=1) and(M_Lico=2)) or
     ((F_Gora=9) and (M_Lico=1) and(F_Lico=8)) or
     ((F_Gora=9) and (F_Lico=1) and(M_Lico=8)) or
     ((F_Gora=9) and (M_Lico=8) and(F_Lico=7)) or
     ((F_Gora=9) and (F_Lico=8) and(M_Lico=7))

    then
     result:='������������� ���� ����������� �����. ������� ����, �� ���������� '
         +IntToStr(F_Gora)+'-��, '+IntToStr(M_Lico)+'-�� � '+IntToStr(F_Lico)+'-�� ������.';
end;
end;


function TFormFHInter.ChecSpecial_10(F_Lico, M_Lico, F_Gora, M_Gora, Lico_20, Gora_20:shortint):string;
var
flag:boolean;
begin
   result:='���������� � ������ -- ���.';

if (StrToInt(FormFh.LabelXunG.Caption)+StrToInt(FormFh.LabelXun20.Caption)=10) and
   (StrToInt(FormFh.LabelLiG.Caption)+StrToInt(FormFh.LabelLi20.Caption)=10) and
   (StrToInt(FormFh.LabelZhenG.Caption)+StrToInt(FormFh.LabelZhen20.Caption)=10) then
   begin
    result:='���������� � ������. ������������� �������. ������� ����, ������� �����������.';
    flag:=true;
   end;

if (StrToInt(FormFh.LabelXunG.Caption)+StrToInt(FormFh.LabelXunN.Caption)=10) and
   (StrToInt(FormFh.LabelLiG.Caption)+StrToInt(FormFh.LabelLiN.Caption)=10) and
   (StrToInt(FormFh.LabelZhenG.Caption)+StrToInt(FormFh.LabelZhenN.Caption)=10) then
   begin
    result:='���������� � ������. ������������� �������. ������� ����, ������� �����������.';
    flag:=true;
   end;


if (StrToInt(FormFh.LabelXun20.Caption)+StrToInt(FormFh.LabelXunN.Caption)=10) and
   (StrToInt(FormFh.LabelLi20.Caption)+StrToInt(FormFh.LabelLiN.Caption)=10) and
   (StrToInt(FormFh.LabelZhen20.Caption)+StrToInt(FormFh.LabelZhenN.Caption)=10) then
   begin
    result:='���������� � ������. ������������� �������. ������� ����, ������� �����������.';
    flag:=true;
   end;

  if NOT(flag) then
  begin
   if ((F_Lico+M_Lico=10) or  (Lico_20+M_Lico=10) or (Lico_20+F_Lico=10))
   and
   ((F_Gora+M_Gora=10) or  (Gora_20+M_Gora=10) or (Gora_20+F_Gora=10)) then
   begin
    result:='���������� � ������ � ���� ������� ���� � �����������. ������������� �������. ������� ����, ������� �����������.';
    flag:=true;
   end;
  end;

end;


function TFormFHInter.StarInMen_1 (dir:TGua) : shortint;
begin
case dir of
gua_Qian:result:=StrToInt(FormFH.LabelQianMen_1.Caption);
gua_Kan:result:=StrToInt(FormFH.LabelKanMen_1.Caption);
gua_Gen:result:=StrToInt(FormFH.LabelGenMen_1.Caption);
gua_Zhen:result:=StrToInt(FormFH.LabelZhenMen_1.Caption);
gua_Xun:result:=StrToInt(FormFH.LabelXunMen_1.Caption);
gua_Li:result:=StrToInt(FormFH.LabelLiMen_1.Caption);
gua_Kun:result:=StrToInt(FormFH.LabelKunMen_1.Caption);
gua_Dui:result:=StrToInt(FormFH.LabelDuiMen_1.Caption);
end;
end;


function TFormFHInter.StarInMen_2 (dir:TGua) : shortint;
begin
case dir of
gua_Qian:result:=StrToInt(FormFH.LabelQianMen_2.Caption);
gua_Kan:result:=StrToInt(FormFH.LabelKanMen_2.Caption);
gua_Gen:result:=StrToInt(FormFH.LabelGenMen_2.Caption);
gua_Zhen:result:=StrToInt(FormFH.LabelZhenMen_2.Caption);
gua_Xun:result:=StrToInt(FormFH.LabelXunMen_2.Caption);
gua_Li:result:=StrToInt(FormFH.LabelLiMen_2.Caption);
gua_Kun:result:=StrToInt(FormFH.LabelKunMen_2.Caption);
gua_Dui:result:=StrToInt(FormFH.LabelDuiMen_2.Caption);
end;
end;

procedure TFormFHInter.N2Click(Sender: TObject);
begin
if SaveDialog1.Execute then
  begin
   RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;


//--------------------------------------------------------

procedure TFormFHInter.N5Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

//--------------------------------------------------------

procedure TFormFHInter.CalcRich;
begin
MyStrings:=TStringList.Create;

RichEdit1.Visible:=false;
RichEdit1.Lines.Clear;
RichEdit1.Paragraph.FirstIndent:=6;
RichEdit1.Paragraph.LeftIndent:=0;
RichEdit1.Paragraph.RightIndent:=3;

StyleTitl;
RichEdit1.Lines.Add('������������� �����');
if ZnakRasklada (MyFHDirect) then
RichEdit1.Lines.Add('�������� ����.')
else
 begin
   StyleRed;
   RichEdit1.Lines.Add('���������� ����.');
   StyleTitl;
 end;
RichEdit1.Lines.Add('');
RichEdit1.Lines.Add(FormFH.LabelCentr20.Caption+'-� ����, ���� '+ Gora +', ����������� '+Voda);

Obshee;
RichEdit1.Lines.Add('');

RichEdit1.Lines.Insert(0,'');
RichEdit1.Visible:=true;
MyStrings.Free;
end;

//--------------------------------------------------------

procedure TFormFHInter.Obshee;
var
F_Lico,M_Lico,F_Gora, M_Gora, Lico_20, Gora_20:shortint;
index:shortint;
begin

F_Lico:=LabelDirectN(LicoDir(MyFHDirect));
M_Lico:= LabelDirectG(LicoDir(MyFHDirect));
F_Gora:= LabelDirectN(LicoDir(MyFHDirect+180));
M_Gora:= LabelDirectG(LicoDir(MyFHDirect+180));
Lico_20:=LabelDirect20(LicoDir(MyFHDirect));
Gora_20:=LabelDirect20(LicoDir(MyFHDirect+180));


   StyleTitl;
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('����������� �������������� �����');
   RichEdit1.Lines.Add(' ');

   if NOT(ZnakRasklada (MyFHDirect)) then
   begin
    StyleTitl2;
    RichEdit1.Lines.Add('����������� � ����������� �����.');
    StyleText;
    RichEdit1.Lines.Add(Comments);
    RichEdit1.Lines.Add(' ');
   end;


if (M_Gora=z1) and (F_Lico=z1)  then
  begin
   StyleTitl2;
   RichEdit1.Lines.Add('������� ����, ������� �����������');
   StyleText;
   RichEdit1.Lines.Add('������� ����, ���������� ������� ������� ����� ����.');
   RichEdit1.Lines.Add('������� ����������� ���������� ���� �������������� �����.');
  end;

if (M_Gora=z1) and (F_Lico<>z1) then
  begin
   StyleTitl2;
   RichEdit1.Lines.Add('C������ ���� ����, ������ �����������');
   StyleText;
   RichEdit1.Lines.Add('������� ����, ���������� ������� ����.');
   RichEdit1.Lines.Add('������ ����������� ���������� ������ ����� � ���������� �������������� �����.');
  end; 

if (M_Gora<>z1) and (F_Lico=z1) then
  begin 
   StyleTitl2;
   RichEdit1.Lines.Add('������ ����, ������� �����������');
   StyleText;
   RichEdit1.Lines.Add('������ ����, ���������� ���������� ��� ����.');
   RichEdit1.Lines.Add('������� ����������� ���������� ���� �������������� �����.');
  end;

if (M_Gora<>z1) and (F_Lico<>z1) then
  begin
   StyleTitl2;
   RichEdit1.Lines.Add('������ ����, ������ �����������');
   StyleText;
   RichEdit1.Lines.Add('������ ����, ���������� ���������� ��� ����.');
   RichEdit1.Lines.Add('������ ����������� ���������� ������ ����� � ���������� �������������� �����.');
  end;

   RichEdit1.Lines.Add(' ');
   StyleTitl2;
   RichEdit1.Lines.Add('������ ����������');
   StyleText;
   RichEdit1.Lines.Add( ChecSpecial_10 (F_Lico, M_Lico, F_Gora, M_Gora, Lico_20, Gora_20));
   RichEdit1.Lines.Add( ChecSpecial_3_1(F_Lico, M_Lico, F_Gora, M_Gora));
   RichEdit1.Lines.Add( ChecSpecial_3_2 (F_Lico, M_Lico));
   
RichEdit1.Lines.Add('');
StyleTitl2;
RichEdit1.Lines.Add('��� �����������');
StyleText;
case F_Lico of
 1: case M_Lico of
    1:RichEdit1.Lines.Add('������������� ��������. �������');
    2,5,8:RichEdit1.Lines.Add('����������� �� ������. ���������');
    3,4:RichEdit1.Lines.Add('���������� �� ������. ���������');
    6,7:RichEdit1.Lines.Add('���������� �� �����. C������');
    9:RichEdit1.Lines.Add('����������� �� �����. C������');
    end;
 2,5,8: case M_Lico of
    1:RichEdit1.Lines.Add('����������� �� ������. ���������');
    2,5,8:RichEdit1.Lines.Add('������������� ��������. �������');
    3,4:RichEdit1.Lines.Add('����������� �� �����. C������');
    6,7:RichEdit1.Lines.Add('���������� �� ������. ���������');
    9:RichEdit1.Lines.Add('���������� �� �����. C������');
    end;
 3,4:case M_Lico of
     1:RichEdit1.Lines.Add('���������� �� �����. C������');
     2,5,8:RichEdit1.Lines.Add('����������� �� ������. ���������');
     3,4:RichEdit1.Lines.Add('������������� ��������. �������');
     6,7:RichEdit1.Lines.Add('����������� �� �����. C������');
     9:RichEdit1.Lines.Add('���������� �� ������. ���������');
     end;
 6,7:case M_Lico of
     1:RichEdit1.Lines.Add('���������� �� ������. ���������');
     2,5,8:RichEdit1.Lines.Add('���������� �� �����. C������');
     3,4:RichEdit1.Lines.Add('����������� �� ������. ���������');
     6,7:RichEdit1.Lines.Add('������������� ��������. �������');
     9:RichEdit1.Lines.Add('����������� �� �����. C������');
     end;
 9:case M_Lico of
     1:RichEdit1.Lines.Add('����������� �� �����. C������');
     2,5,8:RichEdit1.Lines.Add('���������� �� ������. ���������');
     3,4:RichEdit1.Lines.Add('���������� �� �����. C������');
     6,7:RichEdit1.Lines.Add('����������� �� ������. ���������');
     9:RichEdit1.Lines.Add('������������� ��������. �������');
   end;
end;

RichEdit1.Lines.Add('');
StyleTitl2;
RichEdit1.Lines.Add('��� ����');
StyleText;
case M_Gora of
 1: case F_Gora of
    1:RichEdit1.Lines.Add('������������� ��������. �������');
    2,5,8:RichEdit1.Lines.Add('����������� �� ������. ���������');
    3,4:RichEdit1.Lines.Add('���������� �� ������. ���������');
    6,7:RichEdit1.Lines.Add('���������� �� �����. C������');
    9:RichEdit1.Lines.Add('����������� �� �����. C������');
    end;
 2,5,8: case F_Gora of
    1:RichEdit1.Lines.Add('����������� �� ������. ���������');
    2,5,8:RichEdit1.Lines.Add('������������� ��������. �������');
    3,4:RichEdit1.Lines.Add('����������� �� �����. C������');
    6,7:RichEdit1.Lines.Add('���������� �� ������. ���������');
    9:RichEdit1.Lines.Add('���������� �� �����. C������');
    end;
 3,4:case F_Gora of
     1:RichEdit1.Lines.Add('���������� �� �����. C������');
     2,5,8:RichEdit1.Lines.Add('����������� �� ������. ���������');
     3,4:RichEdit1.Lines.Add('������������� ��������. �������');
     6,7:RichEdit1.Lines.Add('����������� �� �����. C������');
     9:RichEdit1.Lines.Add('���������� �� ������. ���������');
     end;
 6,7:case F_Gora of
     1:RichEdit1.Lines.Add('���������� �� ������. ���������');
     2,5,8:RichEdit1.Lines.Add('���������� �� �����. C������');
     3,4:RichEdit1.Lines.Add('����������� �� ������. ���������');
     6,7:RichEdit1.Lines.Add('������������� ��������. �������');
     9:RichEdit1.Lines.Add('����������� �� �����. C������');
     end;
 9:case F_Gora of
     1:RichEdit1.Lines.Add('����������� �� �����. C������');
     2,5,8:RichEdit1.Lines.Add('���������� �� ������. ���������');
     3,4:RichEdit1.Lines.Add('���������� �� �����. C������');
     6,7:RichEdit1.Lines.Add('����������� �� ������. ���������');
     9:RichEdit1.Lines.Add('������������� ��������. �������');
   end;
end;

     RichEdit1.Lines.Add(' ');
  if (F_Lico<>z1) or (z1<>5) then
    begin
     StyleTitl2;
     if StrToInt(FormFh.LabelCentr20.Caption)>Lico_20 then
     RichEdit1.Lines.Add('������ ����: '+
     IntToStr(abs(StrToInt(FormFh.LabelCentr20.Caption)-(Lico_20+9))*20)+' ���')
     else
     RichEdit1.Lines.Add('������ ����: '+
     IntToStr(abs(StrToInt(FormFh.LabelCentr20.Caption)-Lico_20)*20)+' ���');

     StyleText;
     RichEdit1.Lines.Add('����� �������� '+IntToStr(Lico_20)+'-� ����, ������ ������� ���� ������ � ���� ����������.');
     RichEdit1.Lines.Add(' ');
   end;

   if (F_Lico=z1) and (F_Lico=M_Lico) then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ���� �� ������ ������ � ���� ����');
     StyleText;
     RichEdit1.Lines.Add('����� �������� '+IntToStr(F_Gora)+'-� ����, ������ ������� ���� ������ � ���� ����������.');
     RichEdit1.Lines.Add(' ');
   end;

     StyleTitl2;
     RichEdit1.Lines.Add('����������� ���������� ��� ������� ����� ����������� � ����');
     StyleText;
     RichEdit1.Lines.Add('��� ����� ����� -- '+FormFH.SpecCombes(gua_Zhen));
     RichEdit1.Lines.Add('��� ����� ���� -- '+FormFH.SpecCombes(gua_Xun));
     RichEdit1.Lines.Add('��� ����� �� -- '+FormFH.SpecCombes(gua_Li));
     RichEdit1.Lines.Add('��� ����� ���� -- '+FormFH.SpecCombes(gua_Kun));
     RichEdit1.Lines.Add('��� ����� ��� -- '+FormFH.SpecCombes(gua_Dui));
     RichEdit1.Lines.Add('��� ����� ���� -- '+FormFH.SpecCombes(gua_Qian));
     RichEdit1.Lines.Add('��� ����� ���� -- '+FormFH.SpecCombes(gua_Kan));
     RichEdit1.Lines.Add('��� ����� ���� -- '+FormFH.SpecCombes(gua_Gen));
     RichEdit1.Lines.Add('���������� ��� -- '+FormFH.SpecCombes(gua_Center));
     RichEdit1.Lines.Add(' ');


 //-----------------------------------------


   StyleTitl;
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('�������������� ����� �� '+IntToStr(FH_JungV)+'-� ����');
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   StyleText;

   if (F_Lico<>z1) or (z1<>5) then
   begin
   if Lico_20=FH_JungV then
    begin
     RichEdit1.Lines.Add('� ���� ����� ������� ���� ����� � ���� ����������. ��������� ����������� ����� ��� ����������� ����. ��� ������ �� ���� ������ � ��������� �����.');
     RichEdit1.Lines.Add(' ');
    end;
   end;

   if (F_Lico=z1) and (F_Lico=M_Lico) then
    begin
     if F_Gora=FH_JungV then
     begin
     RichEdit1.Lines.Add('� ���� ����� ������� ���� ����� � ���� ���������� �� ������ ������ � ���� ����. ��������� ����������� ����� ��� ����������� ����. ��� ������ �� ���� ������ � ��������� �����.');
     RichEdit1.Lines.Add(' ');
     end;
   end;
   
   StyleTitl2;
   RichEdit1.Lines.Add('������ ����������� � ���� �����������');
   StyleText;
   RichEdit1.Lines.Add('������� ������ ����������� '+IntToStr(F_Lico)+' '+ScriptStar(F_Lico)+' � ���� '+ StarsFazaNapr(FH_JungV, F_Lico));
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('������ ������ � ���� ����');
   StyleText;
   RichEdit1.Lines.Add('������� ������ ������ '+IntToStr(M_Gora)+' '+ScriptStar(M_Gora)+' � ���� '+ StarsFazaGora(FH_JungV, M_Gora));
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('�������� ��������� ����� � ����� '+FHGuaToStrSort(Men_Osn(StrToInt(FormFH.EditAz.Text))));
   StyleText;

   index:=StarInMen_1 (Men_Osn(StrToInt(FormFH.EditAz.Text)));
   RichEdit1.Lines.Add('�� ������ ������ '+IntToStr(index)+' '+ScriptStar(Index)+' � ���� '
   + StarsFazaMen(FH_JungV, index));
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('�������������� ��������� ����� � ����� '+FHGuaToStrSort(Men_Dop(StrToInt(FormFH.EditAz.Text))));
   StyleText;

   index:=StarInMen_2 (Men_Dop(StrToInt(FormFH.EditAz.Text)));
   RichEdit1.Lines.Add('�� ������ ������ '+IntToStr(index)+' '+ScriptStar(Index)+' � ���� '
   + StarsFazaMen(FH_JungV, index));
   RichEdit1.Lines.Add(' ');

   //------------------------

   StyleTitl;
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('�������������� ����� �� '+FH_Date);
   RichEdit1.Lines.Add(' ');

   StyleTitl2;
   RichEdit1.Lines.Add('������� ��� ���');
   RichEdit1.Lines.Add(' ');
   StyleText;
   RichEdit1.Lines.Add(TaiSuiString (F_Lico, FH_JungV,FH_Ymain2, MyFHDirect));
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('������� ��� ��� �� ���� �������� � '+FHGuaToStrSort(FenTaiSui (FH_YearStarV, FH_Ymain2))+'. ��������� ������� ����.');

   RichEdit1.Lines.Add(' ');
   StyleTitl2;
   RichEdit1.Lines.Add('������� ���������� ������� ������');
   StyleText;
   RichEdit1.Lines.Add(' ');
   if FH_YearStarV =5 then
   RichEdit1.Lines.Add('������� ������ �� ���� �������� � �����. �� ��������� ����������� ������� � ���� ����.')
   else
    begin
     RichEdit1.Lines.Add('������� ������ �� ���� �������� �� ���� '+FHGuaToStrSort(StarToDom (FH_YearStarV, 5))+'. ��� ������� ���������� ������� ������. ������ ������������ ����������� � ���� ����.');
     if StarToDom (FH_YearStarV, 5)=DirectToGua(MyFHDirect) then
     RichEdit1.Lines.Add('������� ������ �� ���� �������� �� �����������. �� ������������ � ���� ���� �������, ���������� ��� ������ ������ � ������ � ����� ���������.');
     if StarToDom (FH_YearStarV, 5)=DirectToGua(MyFHDirect+180) then
     RichEdit1.Lines.Add('������� ������ �� ���� �������� �� ����. �� ������������ � ���� ���� �������, ���������� ��� ������ ������ � ������ � ����� ���������.');
     RichEdit1.Lines.Add(FormFH.WuShaCombes(StarToDom (FH_YearStarV, 5)));
   end;

   RichEdit1.Lines.Add(' ');
   if FH_MoonStarV =5 then
   RichEdit1.Lines.Add('������� ������ �� ������ �������� � �����. �� ��������� ����������� ������� � ���� ������.')
   else
   begin
     RichEdit1.Lines.Add('������� ������ �� ������ �������� �� ���� '+FHGuaToStrSort(StarToDom (FH_MoonStarV, 5))+'. ��� ������� ���������� ������ ������. ������ ������������ ����������� � ���� ������.');
     if StarToDom (FH_MoonStarV, 5)=DirectToGua(MyFHDirect) then
     RichEdit1.Lines.Add('������� ������ �� ������ �������� �� �����������. �� ������������ � ���� ������ �������, ���������� ��� ������ ������ � ������ � ����� ���������.');
     if StarToDom (FH_MoonStarV, 5)=DirectToGua(MyFHDirect+180) then
     RichEdit1.Lines.Add('������� ������ �� ������ �������� �� ����. �� ������������ � ���� ������ �������, ���������� ��� ������ ������ � ������ � ����� ���������.');
     RichEdit1.Lines.Add(FormFH.WuShaCombes(StarToDom (FH_MoonStarV, 5)));
   end;
   
   RichEdit1.Lines.Add(' ');
   StyleTitl2;
   RichEdit1.Lines.Add('������ ���� ������������ ������� ��');
   StyleText;
   RichEdit1.Lines.Add(' ');

   RichEdit1.Lines.Add(ShaYString (FH_Ymain2, MyFHDirect));
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add(ShaMString (FH_Mmain2, MyFHDirect));
   RichEdit1.Lines.Add(' ');
   RichEdit1.Lines.Add('������� ��� ��� �� ������ �������� � '+FHGuaToStrSort(FenTaiSui (FH_MoonStarV, FH_Ymain2))+'. ��� ������ ������������. � ���� ����������� �� ������������ ��������� ������, ������������, ����� �������� � ���� ������.');

   RichEdit1.Lines.Add(' ');
   if FH_YearStarV =2 then
   RichEdit1.Lines.Add('������ ������ �� ���� �������� � �����. �� ��������� ����������� ������� � ���� ����.')
   else RichEdit1.Lines.Add('������ ������ �� ���� �������� �� ���� '+FHGuaToStrSort(StarToDom (FH_YearStarV, 2))+'. ���������� �������.');

   RichEdit1.Lines.Add(' ');
   if FH_MoonStarV =2 then
   RichEdit1.Lines.Add('������ ������ �� ������ �������� � �����. �� ��������� ����������� ������� � ���� ������.')
   else RichEdit1.Lines.Add('������ ������ �� ������ �������� �� ���� '+FHGuaToStrSort(StarToDom (FH_MoonStarV, 2))+'. ���������� �������.');

RichEdit1.Lines.Add('');
end;



//--------------------------------------------------------

procedure TFormFHInter.FormShow(Sender: TObject);
begin
if ControlForm then
 begin
  Caption:='�������������: '+FormFh.Caption;
  StatusBar1.Panels[0].Text:=FormFh.StatusBarFH.Caption;
  CalcRich
 end
else
 begin
  Caption:='������� �� '+FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime)+' ���';
  CalcGoro;
 end;
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleTitl;
begin
RichEdit1.SelAttributes.Color:=clGreen;
RichEdit1.SelAttributes.Size:=12;
RichEdit1.SelAttributes.Style:=[fsBold];
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleText;
begin
RichEdit1.SelAttributes.Color:=clBlack;
//RichEdit1.SelAttributes.Size:=10;
RichEdit1.SelAttributes.Style:=[];
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleTitl2;
begin
RichEdit1.SelAttributes.Color:=clBlack;
RichEdit1.SelAttributes.Size:=10;
RichEdit1.SelAttributes.Style:=[fsBold];
end;

//--------------------------------------------------------

procedure TFormFHInter.StyleRed;
begin
RichEdit1.SelAttributes.Color:=clMaroon;
RichEdit1.SelAttributes.Size:=12;
RichEdit1.SelAttributes.Style:=[fsBold];
end;

procedure TFormFHInter.FormCreate(Sender: TObject);
begin
 N1.Caption:='����';
 N5.Caption:='�������';
 N2.Caption:='��������� ���...';
 Close1.Caption:='�������';


 Left:=17;//(screen.Width-width)div 2;  //240;
 top:=113;//(screen.Height-height) div 2;//220;
 top:=top+PositionFHInfo;
 left:=left+PositionFHInfo;
 PositionFHInfo:=PositionFHInfo+20;
 if top>screen.Height-height-50 then
  begin
   PositionFHInfo:=20;
   Left:=17;//(screen.Width-width)div 2;
   top:=113;//(screen.Height-height) div 2;
  end;
  z1:=StrToInt(FormFh.LabelCentr20.caption);
end;   

//--------------------------------------------------------

function TFormFHInter.LicoDir (lico:Single):TDirect;
begin
 if lico>360 then lico:=lico-360;
 if (lico>337.5) and (lico<361) then result:=d_N;
 if lico>=0 then result:=d_N;
 if (lico>0) and (lico<22.5)then result:=d_N;
 if (lico>22.5) and (lico<67.5)then result:=d_NE;
 if (lico>67.5) and (lico<112.5)then result:=d_E;
 if (lico>112.5) and (lico<157.5)then result:=d_SE;
 if (lico>157.5) and (lico<202.5)then result:=d_S;
 if (lico>202.5) and (lico<247.5)then result:=d_SW;
 if (lico>247.5) and (lico<292.5)then result:=d_W;
 if (lico>292.5) and (lico<337.5)then result:=d_NW;
end;

//--------------------------------------------------------


function  TFormFHInter.SpecialCombes: string;
begin

end;

//-------------------------


procedure TFormFHInter.CalcGoro;
var NextStar, MyYarStar, MyNextStar:shortint;
begin
MyYarStar:=YearStarV;
if Pol=ij_In then
   MyYarStar:= InJanStarRe(MyYarStar);

MyNextStar:=NextStar;
if Pol=ij_In then
   MyNextStar:= InJanStarRe(MyNextStar);



MyStrings:=TStringList.Create;
MyStrings.Clear;

RichEdit1.Visible:=false;
RichEdit1.Lines.Clear;
RichEdit1.Paragraph.FirstIndent:=6;
RichEdit1.Paragraph.LeftIndent:=0;
RichEdit1.Paragraph.RightIndent:=3;

     StyleTitl;
     RichEdit1.Lines.Add('������� �� '+FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime)+
                         ' ��� (� '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses22)+' �� '+
                         FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)))+')');

     StyleTitl2;
     RichEdit1.Lines.Add(FormCalendar.YearStar.Caption+' '+
                         IntToStr(YearStarV)+' '+FormPeople.ScriptStarRod(ij_Jan, YearStarV));

     RichEdit1.Lines.Add('');
     StyleTitl2;
     RichEdit1.Lines.Add('���: '+FormPeople.EditNamePeople.Text);
     StyleText;
     if Pol=ij_In then
     RichEdit1.Lines.Add('�������.') else
     RichEdit1.Lines.Add('�������.');
     RichEdit1.Lines.Add('���� � ����� ��������: '+FormPeople.LabelNow.Caption);
     RichEdit1.Lines.Add('');
     StyleTitl2;
     RichEdit1.Lines.Add('������ ��������:');
     StyleText;
     RichEdit1.Lines.Add('������� ���� (60 ���): '+FormPeople.JungBig.Caption);
     RichEdit1.Lines.Add('����� ���� (20 ���): '+FormPeople.Jung.Caption);
     RichEdit1.Lines.Add('������ ���� ��������: '+FormPeople.LabelYearStar.Caption);
     RichEdit1.Lines.Add('������ ������ ��������: '+FormPeople.LabelMoonStar.Caption);
     RichEdit1.Lines.Add('������ ��� ��������: '+FormPeople.LabelDayStar.Caption);
     RichEdit1.Lines.Add('������ ���� ��������: '+FormPeople.LabelChasStar.Caption);
     RichEdit1.Lines.Add('');
     StyleTitl2;
     RichEdit1.Lines.Add('��������� ��������:');
     StyleText;
     RichEdit1.Lines.Add('GMT: '+FormPeople.ComboGMT.Text);
     RichEdit1.Lines.Add('������ �����: '+FormPeople.EditLetnee.Text);
     if FormPeople.CheckBoxDolgota.Checked then RichEdit1.Lines.Add('������� ����� �������� '+FormPeople.EditDolgota.text+' (��.)') else
     RichEdit1.Lines.Add('������� ����� �������� �� ������');
     RichEdit1.Lines.Add('');
     StyleTitl2;

  //if MyRealStar<>RodMoonStar then
  begin
     RichEdit1.Lines.Add('����� �������������� �������� �� ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\s'+IntToStr(MyRealStar)+'.txt');
     if (MyRealStar=1) or (MyRealStar=5)then
      begin
       if Pol=ij_In then
       MyStrings.LoadFromFile(FilePlace+'\other\goro\s'+IntToStr(MyRealStar)+'f.txt');
      end;
     RichEdit1.Lines.AddStrings(MyStrings);

  end;

  RichEdit1.Lines.Add('');

  //if MyRealStar<>RodMoonStar then
  begin
     StyleTitl2;
     RichEdit1.Lines.Add('����� ��������� ��� ���������� ���� (�� ������ ���� ��������):');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyYarStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
     RichEdit1.Lines.Add('');
  end;
     RichEdit1.Lines.Add('');
     StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses22)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses24));
     NextStar:=Calendar.MoonStar(Ymain2, 3);

     MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);

     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

     StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses24)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses2));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

     StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses2)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses4));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses4)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses6));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses6)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses8));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses8)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses10));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses10)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses12));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses12)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses14));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses14)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses16));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses16)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses18));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');

          StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+Ses18)+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j12)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24))));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
     RichEdit1.Lines.Add('');
     RichEdit1.Lines.Add('');
     StyleRed;
     RichEdit1.Lines.Add('�������������� ��� ������� � '+FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j12)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24)))+' �� '+
                           FormatDateTime('ddddd',FormMainFSH.LetneeVremja(FormPref.EditLetnee)+(CalcSolarTerm(StrToInt(FormatDateTime('yyyy',FormMainFSH.MyDate.DateTime))+1, st_j1)+(FormMainFSH.GMT(FormPref.ComboGMT.Text)/24))));
     NextStar:=NextStarIn(NextStar); MyNextStar:=NextStar; if Pol=ij_In then MyNextStar:= InJanStarRe(MyNextStar);
     RichEdit1.Lines.Add('');
  if MyRealStar<>RodMoonStar then
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(MyRealStar)+'.txt'); 
     RichEdit1.Lines.AddStrings(MyStrings);
    end
    else
    begin
     StyleTitl2;
     RichEdit1.Lines.Add('������ ������ '+IntToStr(NextStar)+' '+FormPeople.ScriptStarRod(ij_Jan, NextStar)+' � ������ ���� �������� � ������ ��������:');
     StyleText;
     MyStrings.LoadFromFile(FilePlace+'\other\goro\'+IntToStr(MyNextStar)+'-'+IntToStr(RodMoonStar)+'.txt');
     RichEdit1.Lines.AddStrings(MyStrings);
    end;
RichEdit1.Lines.Insert(0,'');
RichEdit1.Visible:=true;
MyStrings.Free;
end;

procedure TFormFHInter.Close1Click(Sender: TObject);
begin
Close;
end;

end.
