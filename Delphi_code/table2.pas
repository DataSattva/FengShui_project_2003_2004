unit table2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Registry, StdCtrls;

type
  TFormTable2 = class(TForm)
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable2: TFormTable2;

implementation
uses main;
{$R *.dfm}

procedure TFormTable2.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
  Caption:='������ � �����';
  Label1.caption:='��� (������-��)';
  Label2.caption:='� (������-���)';
  Label3.caption:='��� (�����-��)';
  Label4.caption:='��� (�����-���)';
  Label5.caption:='� (�����-��)';
  Label6.caption:='��� (�����-���)';
  Label7.caption:='��� (������-��)';
  Label8.caption:='���� (������-���)';
  Label9.caption:='���� (����-��)';
  Label10.caption:='��� (����-���)';
  Label11.caption:='��� (�����, 23-1, ����-��)';
  Label12.caption:='��� (���, 1-3, �����-���)';
  Label13.caption:='��� (����, 3-5, ������-��)';
  Label14.caption:='��� (������, 5-7, ������-���)';
  Label15.caption:='���� (������, 7-9, �����-��)';
  Label16.caption:='�� (����, 9-11, �����-���)';
  Label17.caption:='� (������, 11-13, �����-��)';
  Label18.caption:='��� (����, 13-15, �����-���)';
  Label19.caption:='���� (��������, 15-17, ������-��)';
  Label20.caption:='� (�����, 17-19, ������-���)';
  Label22.caption:='��� (������, 19-21, �����-��)';
  Label21.caption:='��� (������, 21-23, ����-���)';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table2','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table2','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table2','Visible',false);
   Height:=MyRegIniFile.ReadInteger('Table2','Height',411);
   Width:=MyRegIniFile.ReadInteger('Table2','Width',439);
MyRegIniFile.Free;

Image1.Picture.LoadFromFile(FilePlace+'\bmp\zhu.bmp');
Image2.Picture.LoadFromFile(FilePlace+'\bmp\gan.bmp');
end;

end.
