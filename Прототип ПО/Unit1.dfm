object Form1: TForm1
  Left = 345
  Top = 192
  HorzScrollBar.Color = clGray
  HorzScrollBar.ParentColor = False
  BorderStyle = bsSingle
  Caption = 'Matrix Anisotropic Ansys '
  ClientHeight = 316
  ClientWidth = 537
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 39
    Height = 16
    Caption = 'W1 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 39
    Height = 16
    Caption = 'W2 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 27
    Height = 16
    Caption = 'V = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 80
    Width = 34
    Height = 16
    Caption = 'F1 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 34
    Height = 16
    Caption = 'F2 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 128
    Width = 27
    Height = 16
    Caption = 'E = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 152
    Width = 35
    Height = 16
    Caption = 'E1 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 176
    Width = 35
    Height = 16
    Caption = 'E2 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 200
    Width = 27
    Height = 16
    Caption = 'Y = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 224
    Width = 35
    Height = 16
    Caption = 'Y1 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Top = 248
    Width = 35
    Height = 16
    Caption = 'Y2 = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 143
    Top = 0
    Width = 393
    Height = 274
    ColCount = 6
    FixedCols = 0
    RowCount = 6
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 275
    Width = 537
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = #1056#1072#1089#1095#1077#1090
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Edit1: TEdit
    Left = 48
    Top = 8
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 48
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 48
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 48
    Top = 80
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 48
    Top = 104
    Width = 81
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 48
    Top = 128
    Width = 81
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 48
    Top = 152
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 48
    Top = 176
    Width = 81
    Height = 21
    TabOrder = 9
  end
  object Edit9: TEdit
    Left = 48
    Top = 200
    Width = 81
    Height = 21
    TabOrder = 10
  end
  object Edit10: TEdit
    Left = 48
    Top = 224
    Width = 81
    Height = 21
    TabOrder = 11
  end
  object Edit11: TEdit
    Left = 48
    Top = 248
    Width = 81
    Height = 21
    TabOrder = 12
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 280
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      end
      object N7: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N4Click
      end
    end
    object N6: TMenuItem
      Caption = #1040#1085#1072#1083#1080#1079' '#1086#1090#1095#1077#1090#1086#1074
      OnClick = N6Click
    end
    object N5: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      OnClick = N5Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 48
    Top = 282
  end
  object XPManifest1: TXPManifest
    Left = 88
    Top = 282
  end
end
