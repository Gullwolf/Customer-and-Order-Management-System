object OpenOrdersForm: TOpenOrdersForm
  Left = 0
  Top = 0
  Caption = 'OpenOrdersForm'
  ClientHeight = 281
  ClientWidth = 418
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object OpenOrderLbl: TLabel
    Left = 36
    Top = 23
    Width = 86
    Height = 18
    Caption = 'Open Order:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object OpenOrdersEdit: TEdit
    Left = 128
    Top = 24
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object OpenOrdersBtn: TButton
    Left = 152
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Open Order'
    TabOrder = 1
    OnClick = OpenOrdersBtnClick
  end
  object HomeBtn: TButton
    Left = 335
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Home'
    TabOrder = 2
    OnClick = HomeBtnClick
  end
end
