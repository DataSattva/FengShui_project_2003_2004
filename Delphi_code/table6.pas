unit table6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, Grids, StdCtrls, ExtCtrls;

type
  TFormTable6 = class(TForm)
    Shape7: TShape;
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
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable6: TFormTable6;

implementation
uses main;
{$R *.dfm}

procedure TFormTable6.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='�������� � ���';
  Label1.caption:='� ���';
  Label6.caption:='������';
  Label3.caption:='�����';
  Label4.caption:='������';
  Label5.caption:='����';
  Label2.caption:='�����';
  Label7.caption:='������ ���';
  Label12.caption:='������';
  Label9.caption:='���������';
  Label10.caption:='������';
  Label11.caption:='�����';
  Label8.caption:='������';
  Label13.caption:='������ ��';
  Label14.caption:='������� ������';
  Label16.caption:='�������';
  Label17.caption:='������� �����';
  Label18.caption:='������� ������';
  Label15.caption:='������ �����';
  Label19.caption:='����';
  Label24.caption:='�����';
  Label21.caption:='���';
  Label22.caption:='���';
  Label23.caption:='���';
  Label20.caption:='����';
  Label25.caption:='������';
  Label30.caption:='����';
  Label27.caption:='��������';
  Label28.caption:='������';
  Label29.caption:='�����';
  Label26.caption:='�������';
  Label31.caption:='��������� �������';
  Label36.caption:='�����';
  Label33.caption:='���������';
  Label34.caption:='�������';
  Label35.caption:='�����';
  Label32.caption:='����';
  Label37.caption:='�����';
  Label42.caption:='��������';
  Label39.caption:='������';
  Label40.caption:='�����';
  Label41.caption:='������';
  Label38.caption:='�������';
  Label43.caption:='����';
  Label48.caption:='������';
  Label45.caption:='�������';
  Label46.caption:='�������';
  Label47.caption:='�������';
  Label44.caption:='�������';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table6','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table6','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table6','Visible',false);
   Height:=MyRegIniFile.ReadInteger('Table6','Height',207);
   Width:=MyRegIniFile.ReadInteger('Table6','Width',459);
MyRegIniFile.Free;
end;

end.
