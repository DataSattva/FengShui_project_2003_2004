unit diagVV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, ExtCtrls;

type
  TFormVV = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVV: TFormVV;

implementation
uses main;
{$R *.dfm}

procedure TFormVV.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin 
Caption:='��������� �� ��';
Image1.Picture.LoadFromFile(FilePlace+'\bmp\diag1.bmp');
MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('LoShu','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('LoShu','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('LoShu','Visible',false);
MyRegIniFile.Free;
end;

end.
