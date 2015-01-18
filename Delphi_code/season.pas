unit season;

interface
uses
SysUtils, Math, MyType;

procedure Saesons(ZadannajaData:TDateTime; var result:integer; var BigSeason, SmolSeason:string);
function SesDay (ZadannajaData:TDateTime; Direct:TInJan):integer;

implementation
uses my_moon;

procedure Saesons(ZadannajaData:TDateTime; var result:integer; var BigSeason, SmolSeason:string);
var
god:integer;
flag:boolean;
begin
god:=StrToInt(FormatDateTime('yyyy',ZadannajaData));
flag:=true;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z2) then
if ZadannajaData<CalcSolarTerm(god,st_j3)then
   begin
    result:=4;
    BigSeason:='�������� �����';
    SmolSeason:='�������� �������������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j3) then
if ZadannajaData<CalcSolarTerm(god,st_z3)then
   begin
   result:=5;
    BigSeason:='����� �����';
    SmolSeason:='������� � �������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z3) then
if ZadannajaData<CalcSolarTerm(god,st_j4)then
   begin
   result:=5;
    BigSeason:='����� �����';
    SmolSeason:='������� �����';
    flag:=false;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j4) then
if ZadannajaData<CalcSolarTerm(god,st_z4)then
   begin
   result:=6;
    BigSeason:='������ ����';
    SmolSeason:='����������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z4) then
if ZadannajaData<CalcSolarTerm(god,st_j5)then
   begin
   result:=6;
    BigSeason:='������ ����';
    SmolSeason:='����� ���������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j5) then
if ZadannajaData<CalcSolarTerm(god,st_z5)then
   begin
   result:=7;
    BigSeason:='�������� ����';
    SmolSeason:='��������� ������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z5) then
if ZadannajaData<CalcSolarTerm(god,st_j6)then
   begin
   result:=7;
    BigSeason:='�������� ����';
    SmolSeason:='������ �������������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j6) then
if ZadannajaData<CalcSolarTerm(god,st_z6)then
   begin
   result:=8;
    BigSeason:='����� ����';
    SmolSeason:='����� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z6) then
if ZadannajaData<CalcSolarTerm(god,st_j7)then
   begin
   result:=8;
    BigSeason:='����� ����';
    SmolSeason:='������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j7) then
if ZadannajaData<CalcSolarTerm(god,st_z7)then
   begin
   result:=9;
    BigSeason:='������ �����';
    SmolSeason:='����������� �����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z7) then
if ZadannajaData<CalcSolarTerm(god,st_j8)then
   begin
   result:=9;
    BigSeason:='������ �����';
    SmolSeason:='����������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j8) then
if ZadannajaData<CalcSolarTerm(god,st_z8)then
   begin
   result:=10;
    BigSeason:='�������� �����';
    SmolSeason:='����� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z8) then
if ZadannajaData<CalcSolarTerm(god,st_j9)then
   begin
   result:=10;
    BigSeason:='�������� �����';
    SmolSeason:='������� �������������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j9) then
if ZadannajaData<CalcSolarTerm(god,st_z9)then
   begin
   result:=11;
    BigSeason:='����� �����';
    SmolSeason:='�������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z9) then
if ZadannajaData<CalcSolarTerm(god,st_j10)then
   begin
   result:=11;
    BigSeason:='����� �����';
    SmolSeason:='��������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j10) then
if ZadannajaData<CalcSolarTerm(god,st_z10)then
   begin
   result:=12;
    BigSeason:='������ ����';
    SmolSeason:='����������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z10) then
if ZadannajaData<CalcSolarTerm(god,st_j11)then
   begin
   result:=12;
    BigSeason:='������ ����';
    SmolSeason:='����� �����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j11) then
if ZadannajaData<CalcSolarTerm(god,st_z11)then
   begin
   result:=1;
    BigSeason:='�������� ����';
    SmolSeason:='������� �����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z11) then
if ZadannajaData<CalcSolarTerm(god+1,st_j12)then
   begin
   result:=1;
    BigSeason:='�������� ����';
    SmolSeason:='������ �������������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god-1,st_z11) then
if ZadannajaData<CalcSolarTerm(god,st_j12)then
   begin
   result:=1;
    BigSeason:='�������� ����';
    SmolSeason:='������ �������������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j12) then
if ZadannajaData<CalcSolarTerm(god,st_z12)then
   begin
   result:=2;
    BigSeason:='����� ����';
    SmolSeason:='����� ������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z12) then
if ZadannajaData<CalcSolarTerm(god,st_j1)then
   begin
   result:=2;
    BigSeason:='����� ����';
    SmolSeason:='������� ������';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j1) then
if ZadannajaData<CalcSolarTerm(god,st_z1)then
   begin
   result:=3;
    BigSeason:='������ �����';
    SmolSeason:='����������� �����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_z1) then
if ZadannajaData<CalcSolarTerm(god,st_j2)then
   begin
   result:=3;
    BigSeason:='������ �����';
    SmolSeason:='�������� ����';
    flag:=false
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j2) then
if ZadannajaData<CalcSolarTerm(god,st_z2)then
   begin
   result:=4;
    BigSeason:='�������� �����';
    SmolSeason:='����������� ���������';
    flag:=false
   end;
end;
end;

//-------------------------------------------------------------

function SesDay (ZadannajaData:TDateTime; Direct:TInJan):integer;
var
god:integer;
flag:boolean;
MyFloatUp, MyFloatDown:extended;
begin
god:=StrToInt(FormatDateTime('yyyy',ZadannajaData));
flag:=true;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j2) then
if ZadannajaData<CalcSolarTerm(god,st_j3)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j3)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j2))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j3) then
if ZadannajaData<CalcSolarTerm(god,st_j4)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j4)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j3))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j4) then
if ZadannajaData<CalcSolarTerm(god,st_j5)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j5)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j4))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j5) then
if ZadannajaData<CalcSolarTerm(god,st_j6)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j6)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j5))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j6) then
if ZadannajaData<CalcSolarTerm(god,st_j7)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j7)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j6))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j7) then
if ZadannajaData<CalcSolarTerm(god,st_j8)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j8)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j7))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j8) then
if ZadannajaData<CalcSolarTerm(god,st_j9)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j9)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j8))/3;
   end;
end;


if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j9) then
if ZadannajaData<CalcSolarTerm(god,st_j10)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j10)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j9))/3;
   end;
end;


if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j10) then
if ZadannajaData<CalcSolarTerm(god,st_j11)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j11)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j10))/3;
   end;
end;


if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j11) then
if ZadannajaData<CalcSolarTerm(god+1,st_j12)then
   begin
      MyFloatUp:=(CalcSolarTerm(god+1,st_j12)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j11))/3;
   end;
end;

if flag then
begin
if ZadannajaData>CalcSolarTerm(god-1,st_j11) then
if ZadannajaData<CalcSolarTerm(god,st_j12)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j12)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god-1,st_j11))/3;
   end;
end;



if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j12) then
if ZadannajaData<CalcSolarTerm(god,st_j1)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j1)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j12))/3;
   end;
end;


if flag then
begin
if ZadannajaData>CalcSolarTerm(god,st_j1) then
if ZadannajaData<CalcSolarTerm(god,st_j2)then
   begin
      MyFloatUp:=(CalcSolarTerm(god,st_j2)-ZadannajaData)/3;
      MyFloatDown:=(ZadannajaData-CalcSolarTerm(god,st_j1))/3;
   end;
end;


if Direct=ij_Jan then
  result:=StrToInt(FormatFloat('0',MyFloatUp))
else
  result:=StrToInt(FormatFloat('0',MyFloatDown));
end;

end.
