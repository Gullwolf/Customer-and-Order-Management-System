object EditDetailsForm: TEditDetailsForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
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
  PopupMode = pmExplicit
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 784
    Height = 38
    Align = alTop
    Alignment = taCenter
    Caption = 'Edit Customer Details'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Arial Nova'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ExplicitWidth = 339
  end
  object CustomerNamelbl: TLabel
    Left = 32
    Top = 104
    Width = 118
    Height = 18
    Caption = 'Customer Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object CutomerAddresslbl: TLabel
    Left = 87
    Top = 152
    Width = 63
    Height = 18
    Caption = 'Address:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object CustomerPostcodelbl: TLabel
    Left = 80
    Top = 265
    Width = 71
    Height = 18
    Caption = 'Postcode:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object CustomerTelephonelbl: TLabel
    Left = 17
    Top = 313
    Width = 134
    Height = 18
    Caption = 'Telephone Number:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object CompanyNamelbl: TLabel
    Left = 34
    Top = 56
    Width = 117
    Height = 18
    Caption = 'Company Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 191
    Width = 70
    Height = 18
    Caption = 'Town/City:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 98
    Top = 231
    Width = 52
    Height = 18
    Caption = 'County:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Nova'
    Font.Style = []
    ParentFont = False
  end
  object Homebtn: TButton
    Left = 701
    Top = 410
    Width = 75
    Height = 25
    Caption = 'Home'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = HomebtnClick
  end
  object DBCustomerNameEdit: TDBEdit
    Left = 176
    Top = 105
    Width = 121
    Height = 21
    DataField = 'ContactName'
    DataSource = DataMain.CustomerSource
    TabOrder = 1
  end
  object DBCustomerAddressLine1Edit: TDBEdit
    Left = 176
    Top = 153
    Width = 289
    Height = 21
    DataField = 'Address'
    DataSource = DataMain.CustomerSource
    TabOrder = 2
  end
  object DBCustomerAddressLine2Edit: TDBEdit
    Left = 176
    Top = 192
    Width = 289
    Height = 21
    DataField = 'City'
    DataSource = DataMain.CustomerSource
    TabOrder = 3
  end
  object DBCustomerAddressLine3Edit: TDBEdit
    Left = 176
    Top = 232
    Width = 289
    Height = 21
    DataField = 'County'
    DataSource = DataMain.CustomerSource
    TabOrder = 4
  end
  object DBCustomerPostcodeEdit: TDBEdit
    Left = 176
    Top = 266
    Width = 89
    Height = 21
    DataField = 'PostCode'
    DataSource = DataMain.CustomerSource
    TabOrder = 5
  end
  object DBCustomerTelephoneEdit: TDBEdit
    Left = 176
    Top = 314
    Width = 121
    Height = 21
    DataField = 'Phone'
    DataSource = DataMain.CustomerSource
    TabOrder = 6
  end
  object DBCompanyNameEdit: TDBEdit
    Left = 176
    Top = 57
    Width = 121
    Height = 21
    DataField = 'CompanyName'
    DataSource = DataMain.CustomerSource
    TabOrder = 7
  end
  object UpdateBtn: TButton
    Left = 176
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 8
    OnClick = UpdateBtnClick
  end
end
