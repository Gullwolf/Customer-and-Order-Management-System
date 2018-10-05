object HomeForm: THomeForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Mail Order Buddy'
  ClientHeight = 443
  ClientWidth = 784
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 778
    Height = 38
    Align = alTop
    Alignment = taCenter
    Caption = 'Mail Order Buddy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Arial Nova'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ExplicitWidth = 274
  end
  object Newbtn: TButton
    Left = 336
    Top = 87
    Width = 105
    Height = 66
    Hint = 'Create New Order'
    Caption = 'New Order'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = NewbtnClick
  end
  object EditCustbtn: TButton
    Left = 336
    Top = 176
    Width = 105
    Height = 65
    Hint = 'Edit An Existing Customer'
    Caption = 'Edit Customers'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = EditCustbtnClick
  end
  object Exitbtn: TButton
    Left = 336
    Top = 351
    Width = 105
    Height = 65
    Hint = 'Close Mail Order Buddy'
    Caption = 'Exit'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = ExitbtnClick
  end
  object NewCustomerbtn: TButton
    Left = 336
    Top = 264
    Width = 105
    Height = 65
    Hint = 'Create A New Customer'
    Caption = 'New Customer'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = NewCustomerbtnClick
  end
  object Button1: TButton
    Left = 8
    Top = 391
    Width = 129
    Height = 25
    Caption = 'View Products/Orders'
    TabOrder = 4
    OnClick = Button1Click
  end
  object OpenOrderBtn: TButton
    Left = 8
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Open Order'
    TabOrder = 5
    OnClick = OpenOrderBtnClick
  end
  object AdminBtn: TButton
    Left = 688
    Top = 391
    Width = 75
    Height = 25
    Caption = 'Admin'
    TabOrder = 6
    OnClick = AdminBtnClick
  end
end
