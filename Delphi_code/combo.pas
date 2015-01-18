unit combo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls;

type
  TFormCombo = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup3: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure Combos;
    procedure Button1Click(Sender: TObject);
    procedure ButtonEnabled;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCombo: TFormCombo;

implementation
uses main, text;
{$R *.dfm}

procedure TFormCombo.FormCreate(Sender: TObject);
var
MyRegIniFile:TRegIniFile;
begin
RadioGroup3.Caption:='�������� ����������: ';
Label1.Caption:='������ ������:';
Label2.Caption:='������ �����:';
Caption:='���������� �����';
Button1.Caption:='�������� ����������';
RadioGroup1.Items.Strings[0]:='1 �����';
RadioGroup1.Items.Strings[1]:='2 ������';
RadioGroup1.Items.Strings[2]:='3 ���������';
RadioGroup1.Items.Strings[3]:='4 �������';
RadioGroup1.Items.Strings[4]:='5 ������';
RadioGroup1.Items.Strings[5]:='6 �����';
RadioGroup1.Items.Strings[6]:='7 ����';
RadioGroup1.Items.Strings[7]:='8 �����';
RadioGroup1.Items.Strings[8]:='9 ���������';
RadioGroup2.Items.Strings[0]:='1 �����';
RadioGroup2.Items.Strings[1]:='2 ������';
RadioGroup2.Items.Strings[2]:='3 ���������';
RadioGroup2.Items.Strings[3]:='4 �������';
RadioGroup2.Items.Strings[4]:='5 ������';
RadioGroup2.Items.Strings[5]:='6 �����';
RadioGroup2.Items.Strings[6]:='7 ����';
RadioGroup2.Items.Strings[7]:='8 �����';
RadioGroup2.Items.Strings[8]:='9 ���������';

MyRegIniFile:=TRegIniFile.Create('Software\FengShui');
   Left:=MyRegIniFile.ReadInteger('Combo','Left',(screen.Width-width)div 2);
   Top:=MyRegIniFile.ReadInteger('Combo','Top',((screen.Height-height) div 2));
   Visible:=MyRegIniFile.ReadBool('Combo','Visible',false);
MyRegIniFile.Free;
end;

procedure TFormCombo.Combos;
begin
if RadioGroup3.ItemIndex=0 then
 begin
 InfoIndex:='\other\people\'+IntToStr(RadioGroup1.ItemIndex+1)
           +'-'+IntToStr(RadioGroup2.ItemIndex+1)+'.rtf'
 end
 else
  begin
 InfoIndex:='\other\combstars\'+IntToStr(RadioGroup1.ItemIndex+1)
           +'_'+IntToStr(RadioGroup2.ItemIndex+1)+'.rtf'
 end;
TFormText.Create(self);
{case RadioGroup1.ItemIndex of
 0: case RadioGroup2.ItemIndex of
     0: begin
         InfoIndex:='\other\people\1-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\1-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\1-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\1-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\1-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\1-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\1-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\1-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\1-9.rtf';
         TFormText.Create(self);
        end;
    end;
 1: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\2-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\2-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\2-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\2-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\2-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\2-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\2-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\2-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\2-9.rtf';
         TFormText.Create(self);
        end;
    end;
 2: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\3-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\3-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\3-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\3-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\3-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\3-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\3-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\3-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\3-9.rtf';
         TFormText.Create(self);
        end;
    end;
 3: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\4-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\4-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\4-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\4-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\4-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\4-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\4-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\4-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\4-9.rtf';
         TFormText.Create(self);
        end;
    end;
 4: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\5-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\5-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\5-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\5-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\5-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\5-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\5-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\5-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\5-9.rtf';
         TFormText.Create(self);
        end;
    end;
 5: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\6-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\6-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\6-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\6-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\6-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\6-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\6-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\6-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\6-9.rtf';
         TFormText.Create(self);
        end;
    end;
 6: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\7-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\7-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\7-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\7-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\7-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\7-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\7-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\7-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\7-9.rtf';
         TFormText.Create(self);
        end;
    end;
 7: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\8-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\8-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\8-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\8-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\8-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\8-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\8-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\8-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\8-9.rtf';
         TFormText.Create(self);
        end;
    end;
 8: case RadioGroup2.ItemIndex of
    0: begin
         InfoIndex:='\other\people\9-1.rtf';
         TFormText.Create(self);
        end;
     1: begin
         InfoIndex:='\other\people\9-2.rtf';
         TFormText.Create(self);
        end;
     2: begin
         InfoIndex:='\other\people\9-3.rtf';
         TFormText.Create(self);
        end;
     3: begin
         InfoIndex:='\other\people\9-4.rtf';
         TFormText.Create(self);
        end;
     4: begin
         InfoIndex:='\other\people\9-5.rtf';
         TFormText.Create(self);
        end;
     5: begin
         InfoIndex:='\other\people\9-6.rtf';
         TFormText.Create(self);
        end;
     6: begin
         InfoIndex:='\other\people\9-7.rtf';
         TFormText.Create(self);
        end;
     7: begin
         InfoIndex:='\other\people\9-8.rtf';
         TFormText.Create(self);
        end;
     8: begin
         InfoIndex:='\other\people\9-9.rtf';
         TFormText.Create(self);
        end;
    end;
end; }
end;

procedure TFormCombo.Button1Click(Sender: TObject);
begin
Combos;
end;

procedure TFormCombo.ButtonEnabled;
begin
if RadioGroup1.ItemIndex>=0  then
if RadioGroup2.ItemIndex>=0 then
Button1.Enabled:=true;
end;

procedure TFormCombo.RadioGroup1Click(Sender: TObject);
begin
ButtonEnabled
end;

procedure TFormCombo.RadioGroup2Click(Sender: TObject);
begin
ButtonEnabled
end;

end.
