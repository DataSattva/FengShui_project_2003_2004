unit table4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Registry, StdCtrls;

type
  TFormTable4 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTable4: TFormTable4;

implementation
uses main;
{$R *.dfm}

procedure TFormTable4.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
  Caption:='��������� ������� � �����';
  Label1.caption:='�';
  Label3.caption:='�';
  Label2.caption:='�';
  Label4.caption:='�';

Image1.Picture.LoadFromFile(FilePlace+'\bmp\diag3.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Table4','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Table4','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Table4','Visible',false);
MyRegIniFile.Free;
end;

end.
