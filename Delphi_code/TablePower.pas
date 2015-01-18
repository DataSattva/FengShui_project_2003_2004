unit TablePower;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls;

type
  TFormPower = class(TForm)
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
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape2: TShape;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPower: TFormPower;

implementation

{$R *.dfm}

procedure TFormPower.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
  Caption:='����������� ��/��� �����';
  Label1.Caption:='������ ��';
  Label8.Caption:='1 ����� (����)';
  Label4.Caption:='2 ������ (�����)';
  Label6.Caption:='3 ��������� (������)';
  Label7.Caption:='4 ������� (������)';
  Label3.Caption:='5 ������ (�����)';
  Label9.Caption:='6 ����� (������)';
  Label5.Caption:='7 ���� (������)';
  Label10.Caption:='8 ����� (�����)';
  Label2.Caption:='9 ��������� (�����)';
  Label12.Caption:='������ ���';
  Label18.Caption:='5 ������ (�����)';
  Label14.Caption:='4 ������� (������)';
  Label16.Caption:='3 ��������� (������)';
  Label17.Caption:='2 ������ (�����)';
  Label13.Caption:='1 ������ (����)';
  Label19.Caption:='9 ��������� (�����)';
  Label15.Caption:='8 ����� (�����)';
  Label20.Caption:='7 ���� (������)';
  Label11.Caption:='6 ����� (������)';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Power','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Power','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Power','Visible',false);
MyRegIniFile.Free;
end;

end.
