object FormGua: TFormGua
  Left = 442
  Top = 328
  BorderStyle = bsToolWindow
  Caption = 'FormGua'
  ClientHeight = 96
  ClientWidth = 120
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GuaSmol1: TGuaSmol
    Left = 34
    Top = 42
    Width = 50
    Height = 40
    No = 1
  end
  object Bevel1: TBevel
    Left = 1
    Top = 30
    Width = 119
    Height = 65
    Shape = bsFrame
  end
  object Shape1: TShape
    Left = 30
    Top = 38
    Width = 58
    Height = 48
    Cursor = crHandPoint
    Brush.Style = bsClear
    ParentShowHint = False
    Pen.Color = clMedGray
    Pen.Style = psDot
    ShowHint = True
    OnMouseUp = Shape1MouseUp
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 120
    Height = 28
    AutoSize = True
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 118
      end>
    Color = clWhite
    EdgeOuter = esNone
    FixedOrder = True
    ParentColor = False
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 114
      Height = 26
      AutoSize = True
      BorderWidth = 1
      Caption = 'ToolBar1'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = FormMainFSH.ImageList2
      TabOrder = 0
      object ComboBoxEx2: TComboBoxEx
        Left = 0
        Top = 0
        Width = 79
        Height = 22
        ItemsEx.CaseSensitive = False
        ItemsEx.SortType = stNone
        ItemsEx = <
          item
            Caption = #1062#1103#1085#1100
            ImageIndex = 7
            SelectedImageIndex = 7
          end
          item
            Caption = #1050#1072#1085#1100
            ImageIndex = 0
            SelectedImageIndex = 0
          end
          item
            Caption = #1043#1101#1085#1100
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = #1063#1078#1101#1085#1100
            ImageIndex = 2
            SelectedImageIndex = 2
          end
          item
            Caption = #1057#1102#1085#1100
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = #1051#1080
            ImageIndex = 4
            SelectedImageIndex = 4
          end
          item
            Caption = #1050#1091#1085#1100
            ImageIndex = 5
            SelectedImageIndex = 5
          end
          item
            Caption = #1044#1091#1081
            ImageIndex = 6
            SelectedImageIndex = 6
          end>
        Style = csExDropDownList
        StyleEx = []
        ItemHeight = 16
        TabOrder = 0
        TabStop = False
        OnChange = ComboBoxEx2Change
        Images = FormBCShema.ImageList1
        DropDownCount = 8
      end
      object ToolButton11: TToolButton
        Left = 79
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 87
        Top = 0
        Cursor = crHandPoint
        Caption = 'ToolButton1'
        ImageIndex = 33
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton1Click
      end
    end
  end
end
