object NewOrdersForm: TNewOrdersForm
  Left = 0
  Top = 0
  Caption = 'New Orders'
  ClientHeight = 443
  ClientWidth = 784
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DateLbl: TLabel
    Left = 48
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Date:'
  end
  object CompanyNameLbl: TLabel
    Left = 48
    Top = 72
    Width = 79
    Height = 13
    Caption = 'Company Name:'
  end
  object ItemsLbl: TLabel
    Left = 48
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Items:'
  end
  object TakenByLbl: TLabel
    Left = 384
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Taken By:'
  end
  object Label1: TLabel
    Left = 285
    Top = 72
    Width = 61
    Height = 13
    Caption = 'CustomerID:'
  end
  object DiscountLbl: TLabel
    Left = 5
    Top = 275
    Width = 122
    Height = 13
    Caption = 'Discount (in Percentage):'
  end
  object quantityLbl: TLabel
    Left = 364
    Top = 155
    Width = 46
    Height = 13
    Caption = 'Quantity:'
  end
  object TotalPriceLbl: TLabel
    Left = 440
    Top = 371
    Width = 54
    Height = 13
    Caption = 'Total Price:'
  end
  object TodayDateLbl: TLabel
    Left = 81
    Top = 32
    Width = 66
    Height = 13
    Caption = 'TodayDateLbl'
  end
  object Homebtn: TButton
    Left = 688
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Homebtn'
    TabOrder = 0
    OnClick = HomebtnClick
  end
  object DBProductList: TDBLookupComboBox
    Left = 232
    Top = 112
    Width = 497
    Height = 21
    Align = alCustom
    KeyField = 'ProductID'
    ListField = 'ProductID;ProductName;UnitPrice;'
    ListSource = DataMain.ProductsSource
    TabOrder = 1
  end
  object ProductSearchEdit: TEdit
    Left = 232
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'ProductSearchEdit'
  end
  object LookUpBtn: TButton
    Left = 232
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Look Up'
    TabOrder = 3
    OnClick = LookUpBtnClick
  end
  object DBCompanyNameEdit: TDBEdit
    Left = 133
    Top = 69
    Width = 121
    Height = 21
    DataField = 'CompanyName'
    DataSource = DataMain.CustomerSource
    ReadOnly = True
    TabOrder = 4
  end
  object AddToItemsBtn: TButton
    Left = 320
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 5
    OnClick = AddToItemsBtnClick
  end
  object SaveOrderBtn: TButton
    Left = 85
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 6
    OnClick = SaveOrderBtnClick
  end
  object DBCustomerIDEdit: TDBEdit
    Left = 352
    Top = 69
    Width = 121
    Height = 21
    DataField = 'CustomerID'
    DataSource = DataMain.CustomerSource
    TabOrder = 7
  end
  object DiscountEdit: TEdit
    Left = 133
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object RemoveBtn: TButton
    Left = 401
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 9
    OnClick = RemoveBtnClick
  end
  object ItemsGrid: TStringGrid
    Left = 25
    Top = 131
    Width = 201
    Height = 120
    ColCount = 3
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 10
    ColWidths = (
      64
      64
      64)
    RowHeights = (
      24)
  end
  object QuantityEdit: TEdit
    Left = 416
    Top = 152
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 11
    Text = '1'
  end
  object TotalPriceEdit: TEdit
    Left = 500
    Top = 362
    Width = 121
    Height = 21
    NumbersOnly = True
    ParentColor = True
    TabOrder = 12
  end
  object PrintBtn: TButton
    Left = 85
    Top = 391
    Width = 75
    Height = 25
    Caption = 'Print Order'
    TabOrder = 13
    Visible = False
    OnClick = PrintBtnClick
  end
end
