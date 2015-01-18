unit CzPinSys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CziPin, StdCtrls, ImgList, ComCtrls, ExtCtrls, mytype, Registry;

type
  TFormCzPin = class(TForm)
    Label22: TLabel;
    CziPinYear: TCziPin;
    Label1: TLabel;
    Vetv1: TComboBoxEx;
    ImageList2: TImageList;
    ImageList1: TImageList;
    Svtol: TComboBoxEx;
    Label2: TLabel;
    Vetv2: TComboBoxEx;
    Vetv3: TComboBoxEx;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure StvolVetv;
    function NajIng:string;
    procedure VetvVetv;
    procedure SvtolChange(Sender: TObject);
    procedure Vetv2Change(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCzPin: TFormCzPin;

implementation
uses godday, main;
{$R *.dfm}

function TFormCzPin.NajIng:string;
begin
case Svtol.ItemIndex of
0:case Vetv1.ItemIndex of
   0:result:='������ � ���� (1)';
   2:result:='���� �������� ����� (51)';
   4:result:='����� ����������� ����� (41)';
   6:result:='������ � ����� (31)';
   8:result:='���� ������� � ��������� (21)';
   10:result:='����� �� ������� ���� (11)';
   else result:='������ ���������� �����������';
  end;
1:case Vetv1.ItemIndex of
   1:result:='������ � ���� (2)';
   3:result:='���� �������� ����� (52)';
   5:result:='����� ����������� ����� (42)';
   7:result:='������ � ����� (32)';
   9:result:='���� ������� � ��������� (22)';
   11:result:='����� �� ������� ���� (12)';
   else result:='������ ���������� �����������';
  end;
2:case Vetv1.ItemIndex of
   0:result:='���� ������ ����� ����� (13)';
   2:result:='����� � ���� (3)';
   4:result:='����� ������ ����� (53)';
   6:result:='���� �� �������� ���� (43)';
   8:result:='�����, ������������ � ���� (33)';
   10:result:='����� �� ����� ���� (23)';
   else result:='������ ���������� �����������';
  end;
3:case Vetv1.ItemIndex of
   1:result:='���� ������ ����� ����� (14)';
   3:result:='����� � ���� (4)';
   5:result:='����� ������ ����� (54)';
   7:result:='���� �� �������� ���� (44)';
   9:result:='�����, ������������ � ���� (34)';
   11:result:='����� �� ����� ���� (24)'; 
   else result:='������ ���������� �����������';
  end;
4:case Vetv1.ItemIndex of
   0:result:='����� ����� � ������ (25)';
   2:result:='����� �� ��������� ����� (15)';
   4:result:='������ �������� ���� (5)';
   6:result:='�����, ������������� �� ���� (55)';
   8:result:='����� � ������� ������� (45)';
   10:result:='������ ������ ����� (35)';
   else result:='������ ���������� �����������';
  end;
5:case Vetv1.ItemIndex of
   1:result:='����� ����� � ������ (26)';
   3:result:='����� �� ��������� ����� (16)';
   5:result:='������ �������� ���� (6)';
   7:result:='�����, ������������� �� ���� (56)';
   9:result:='����� � ������� ������� (46)';
   11:result:='������ ������ ����� (36)';
   else result:='������ ���������� �����������';
  end;
6:case Vetv1.ItemIndex of
   0:result:='����� ������ ����� (37)';
   2:result:='������ ����� � �������� (27)';
   4:result:='����� �������� ������ (17)';
   6:result:='����� ����� ������ (7)';
   8:result:='������ ������� (57)';
   10:result:='������ ������ � ��������� (47)';
   else result:='������ ���������� �����������';
  end;
7:case Vetv1.ItemIndex of
   1:result:='����� ������ ����� (38)';
   3:result:='������ ����� � �������� (28)';
   5:result:='����� �������� ������ (18)';
   7:result:='����� ����� ������ (8)';
   9:result:='������ ������� (58)';
   11:result:='������ ������ � ��������� (48)'; 
   else result:='������ ���������� �����������';
  end;
8:case Vetv1.ItemIndex of
   0:result:='������� ������';
   2:result:='������ ������������� ������ (39)';
   4:result:='���� �� �������� ������ (29)';
   6:result:='������ ��� (19)';
   8:result:='������� �� ������ ���� (9)';
   10:result:='���� �������� ���� (59)';
   else result:='������ ���������� �����������';
  end;
9:case Vetv1.ItemIndex of
   1:result:='������� ������ (50)';
   3:result:='������ ������������� ������ (40)';
   5:result:='���� �� �������� ������ (30)';
   7:result:='������ ��� (20)';
   9:result:='������� �� ������ ���� (10)';
   11:result:='���� �������� ���� (60)';
   else result:='������ ���������� �����������';
  end;
end;
end;

procedure TFormCzPin.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
Caption:='������ � �����';
Label22.Caption:='������ � �����';
Label8.Caption:='�����:';
Label9.Caption:='�����:';
Label2.Caption:='������������ ������';
Label4.Caption:='������� �����:';
Label10.Caption:='�������������� �����:';
Label5.Caption:='�����:';
Label6.Caption:='������������ ������:';
Label11.Caption:='��� ���:';

Svtol.ItemIndex:=0;
Vetv1.ItemIndex:=0;
Vetv2.ItemIndex:=0;
Vetv3.ItemIndex:=0;
StvolVetv;
VetvVetv;


MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('CzPin','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('CzPin','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('CzPin','Visible',false);
MyRegIniFile.Free;
end;

//--------------------------------------------------------

procedure TFormCzPin.StvolVetv;
var
MyInJan:TMyInJan;
MyPinParam:TCziPinParam;
begin
IntToCziPin (Svtol.ItemIndex+1,Vetv1.ItemIndex+1, MyInJan, MyPinParam);
CziPinYear.InJan:=MyInJan;
CziPinYear.CPScrol:=MyPinParam;
Label1.Caption:=ToCziPinToStr(CziPinYear.CPScrol);
Label12.Caption:=NajIng;
end;

//--------------------------------------------------------

procedure TFormCzPin.SvtolChange(Sender: TObject);
begin
StvolVetv;
end;

//--------------------------------------------------------

procedure TFormCzPin.VetvVetv;
begin
case FormGoodDay.Chzang(Vetv2.ItemIndex+1, Vetv3.ItemIndex+1) of
1:Label3.Caption:='�����. ������������ (1)';
2:Label3.Caption:='��. ����������� (2)';
3:Label3.Caption:='����. ��������� (3)';
4:Label3.Caption:='���. ������������ (4)';
5:Label3.Caption:='��� . ����������� (5)';
6:Label3.Caption:='���. ��������� (6)';
7:Label3.Caption:='��. ������ (7)';
8:Label3.Caption:='���. ��������� (8)';
9:Label3.Caption:='���. ���������� (9)';
10:Label3.Caption:='���. ��������� (10)';
11:Label3.Caption:='���. ��������� (11)';
12:Label3.Caption:='��. ����������� (12)';
end;

Label7.caption:='';
if (Vetv2.ItemIndex=0) and (Vetv3.ItemIndex=1) then  Label7.caption:='����������';
if (Vetv3.ItemIndex=0) and (Vetv2.ItemIndex=1) then  Label7.caption:='����������';
if (Vetv2.ItemIndex=2) and (Vetv3.ItemIndex=11) then  Label7.caption:='����������';
if (Vetv3.ItemIndex=2) and (Vetv2.ItemIndex=11) then  Label7.caption:='����������';
if (Vetv2.ItemIndex=3) and (Vetv3.ItemIndex=10) then  Label7.caption:='����������';
if (Vetv3.ItemIndex=3) and (Vetv2.ItemIndex=10) then  Label7.caption:='����������';
if (Vetv2.ItemIndex=4) and (Vetv3.ItemIndex=9) then  Label7.caption:='����������';
if (Vetv3.ItemIndex=4) and (Vetv2.ItemIndex=9) then  Label7.caption:='����������';
if (Vetv2.ItemIndex=5) and (Vetv3.ItemIndex=8) then  Label7.caption:='����������';
if (Vetv3.ItemIndex=5) and (Vetv2.ItemIndex=8) then  Label7.caption:='����������';
if (Vetv2.ItemIndex=6) and (Vetv3.ItemIndex=7) then  Label7.caption:='����������';
if (Vetv3.ItemIndex=6) and (Vetv2.ItemIndex=7) then  Label7.caption:='����������';

if (Vetv2.ItemIndex=0) and (Vetv3.ItemIndex=6) then  Label7.caption:='�� ����������';
if (Vetv3.ItemIndex=0) and (Vetv2.ItemIndex=6) then  Label7.caption:='�� ����������';
if (Vetv2.ItemIndex=1) and (Vetv3.ItemIndex=5) then  Label7.caption:='�� ����������';
if (Vetv3.ItemIndex=1) and (Vetv2.ItemIndex=5) then  Label7.caption:='�� ����������';
if (Vetv2.ItemIndex=2) and (Vetv3.ItemIndex=8) then  Label7.caption:='�� ����������';
if (Vetv3.ItemIndex=2) and (Vetv2.ItemIndex=8) then  Label7.caption:='�� ����������';
if (Vetv2.ItemIndex=3) and (Vetv3.ItemIndex=9) then  Label7.caption:='�� ����������';
if (Vetv3.ItemIndex=3) and (Vetv2.ItemIndex=9) then  Label7.caption:='�� ����������';
if (Vetv2.ItemIndex=4) and (Vetv3.ItemIndex=10) then  Label7.caption:='�� ����������';
if (Vetv3.ItemIndex=4) and (Vetv2.ItemIndex=10) then  Label7.caption:='�� ����������';
if (Vetv2.ItemIndex=5) and (Vetv3.ItemIndex=11) then  Label7.caption:='�� ����������';
if (Vetv3.ItemIndex=5) and (Vetv2.ItemIndex=11) then  Label7.caption:='�� ����������';
end;

//--------------------------------------------------------

procedure TFormCzPin.Vetv2Change(Sender: TObject);
begin
VetvVetv;
end;

//--------------------------------------------------------

procedure TFormCzPin.Label3Click(Sender: TObject);
begin
FormGoodDay.Show;
FormGoodDay.Caption:='����� ���, �� ������� ������������� ������� � ������';
FormGoodDay.RichEdit1.Lines.LoadFromFile(FilePlace+'\other\czang\c'+
IntToStr(FormGoodDay.Chzang(Vetv2.ItemIndex+1,Vetv3.ItemIndex+1))+'.rtf');
end;

procedure TFormCzPin.FormShow(Sender: TObject);
begin

 Svtol.ItemsEx[0].Caption:='��� (������-��)';
Svtol.ItemsEx[0].Caption:='��� (������-��)';
Svtol.ItemsEx[1].Caption:='� (������-���)';
Svtol.ItemsEx[2].Caption:='��� (�����-��)';
Svtol.ItemsEx[3].Caption:='��� (�����-���)';
Svtol.ItemsEx[4].Caption:='� (�����-��)';
Svtol.ItemsEx[5].Caption:='��� (�����-���)';
Svtol.ItemsEx[6].Caption:='��� (������-��)';
Svtol.ItemsEx[7].Caption:='���� (������-���)';
Svtol.ItemsEx[8].Caption:='���� (����-��)';
Svtol.ItemsEx[9].Caption:='��� (����-���)';

Vetv1.ItemsEx[0].Caption:='��� (����-��)';
Vetv1.ItemsEx[0].Caption:='��� (����-��)';
Vetv1.ItemsEx[1].Caption:='��� (�����-���)';
Vetv1.ItemsEx[2].Caption:='��� (������-��)';
Vetv1.ItemsEx[3].Caption:='��� (������-���)';
Vetv1.ItemsEx[4].Caption:='���� (�����-��)';
Vetv1.ItemsEx[5].Caption:='�� (�����-���)';
Vetv1.ItemsEx[6].Caption:='� (�����-��)';
Vetv1.ItemsEx[7].Caption:='��� (�����-���)';
Vetv1.ItemsEx[8].Caption:='���� (������-��)';
Vetv1.ItemsEx[9].Caption:='� (������-���)';
Vetv1.ItemsEx[10].Caption:='��� (�����-��)';
Vetv1.ItemsEx[11].Caption:='��� (����-���)';

Vetv2.ItemsEx[0].Caption:='��� (����-��)';
Vetv2.ItemsEx[0].Caption:='��� (����-��)';
Vetv2.ItemsEx[1].Caption:='��� (�����-���)';
Vetv2.ItemsEx[2].Caption:='��� (������-��)';
Vetv2.ItemsEx[3].Caption:='��� (������-���)';
Vetv2.ItemsEx[4].Caption:='���� (�����-��)';
Vetv2.ItemsEx[5].Caption:='�� (�����-���)';
Vetv2.ItemsEx[6].Caption:='� (�����-��)';
Vetv2.ItemsEx[7].Caption:='��� (�����-���)';
Vetv2.ItemsEx[8].Caption:='���� (������-��)';
Vetv2.ItemsEx[9].Caption:='� (������-���)';
Vetv2.ItemsEx[10].Caption:='��� (�����-��)';
Vetv2.ItemsEx[11].Caption:='��� (����-���)';

Vetv3.ItemsEx[0].Caption:='��� (����-��)';
Vetv3.ItemsEx[0].Caption:='��� (����-��)';
Vetv3.ItemsEx[1].Caption:='��� (�����-���)';
Vetv3.ItemsEx[2].Caption:='��� (������-��)';
Vetv3.ItemsEx[3].Caption:='��� (������-���)';
Vetv3.ItemsEx[4].Caption:='���� (�����-��)';
Vetv3.ItemsEx[5].Caption:='�� (�����-���)';
Vetv3.ItemsEx[6].Caption:='� (�����-��)';
Vetv3.ItemsEx[7].Caption:='��� (�����-���)';
Vetv3.ItemsEx[8].Caption:='���� (������-��)';
Vetv3.ItemsEx[9].Caption:='� (������-���)';
Vetv3.ItemsEx[10].Caption:='��� (�����-��)';
Vetv3.ItemsEx[11].Caption:='��� (����-���)';
end;

end.
