; ������ ������: ������ �������� Inno Setup.
; �������� ������������ ��� ����������������� �������� �������� INNO SETUP!

[Setup]
AppName=���������� FengShui
AppVerName=���������� ��� FengShui 3.0
AppPublisher=Boukreev A.
DefaultDirName={pf}\FengShui
DefaultGroupName=���-���
AllowNoIcons=yes
AlwaysCreateUninstallIcon=yes
LicenseFile=C:\Program Files\Borland\Delphi7\Projects\FH\license.txt
; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

[Tasks]
Name: "desktopicon"; Description: "������� ����� �� ������� �����"; GroupDescription: "�������������:"; MinVersion: 4,4

[Files]
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\FengShui.exe"; DestDir: "{app}"; CopyMode: alwaysoverwrite


[Run]
Filename: "{app}\FengShui.exe"; Description: "��������� ��������� FengShui 3.0 ������"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\FengShui.url"

