object fmSecondForm: TfmSecondForm
  Left = 0
  Top = 0
  Caption = 'fmSecondForm'
  ClientHeight = 334
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 32
    Top = 46
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Memo1: TMemo
    Left = 156
    Top = 8
    Width = 153
    Height = 158
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 88
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 135
    Top = 172
    Width = 153
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 135
    Top = 248
    Width = 174
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 172
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 65
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 5
  end
  object TrackBar1: TTrackBar
    Left = 0
    Top = 121
    Width = 150
    Height = 45
    TabOrder = 6
  end
  inline frmTest1: TfrmTest
    Left = 330
    Top = 46
    Width = 320
    Height = 120
    TabOrder = 7
  end
end
