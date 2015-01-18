unit table8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls;

type
  TFormTable9 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Shape2: TShape;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape12: TShape;
    Shape15: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable9: TFormTable9;

implementation
uses main;
{$R *.dfm}

procedure TFormTable9.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='������ � ���������';
  Label1.caption:='������� ������';
  Label2.caption:='������';
  Label3.caption:='������ ��������';
  Label23.caption:='������� ������������';
  Label4.caption:='������';
  Label5.caption:='�������';
  Label6.caption:='���������';
  Label7.caption:='������� ��������';
  Label8.caption:='������';
  Label9.caption:='������� ������';
  Label10.caption:='�����';
  Label11.caption:='�������� �������� ������';
  Label24.caption:='����� �� �� ����';
  Label12.caption:='�������� ������';
  Label25.caption:='������������� ��� �� ����';
  Label13.caption:='�������� ������';
  Label26.caption:='�������� �� ����';
  Label14.caption:='�������� �������� ���������';
  Label27.caption:='������� �� �� ����';
  Label15.caption:='�������� �������';
  Label28.caption:='������� �� �� ����';
  Label16.caption:='�������� ���������';
  Label29.caption:='�������� �� ����';
  Label17.caption:='�������� ������';
  Label30.caption:='����� ��� �� ����';
  Label18.caption:='�������� ������� ���������';
  Label31.caption:='����� �� �� ����';
  Label19.caption:='�������� �������� ������';
  Label32.caption:='������� �� ����';
  Label20.caption:='�������� �����';
  Label33.caption:='����� ��� �� ����';
  Label22.caption:='�������� ���������';
  Label34.caption:='������������� ��� �� ����';
  Label21.caption:='�������� �������� ������������';
  Label35.caption:='����� �� �� ����';

Image1.Picture.LoadFromFile(FilePlace+'\bmp\zhu.bmp');
Image2.Picture.LoadFromFile(FilePlace+'\bmp\gan.bmp');

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table9','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table9','Top',((screen.Height-height) div 2));
   Height:=MyRegIniFile.ReadInteger('Table9','Height',411);
   Width:=MyRegIniFile.ReadInteger('Table9','Width',451);
   Visible:=MyRegIniFile.ReadBool('Table9','Visible',false);
MyRegIniFile.Free;
end;

end.
