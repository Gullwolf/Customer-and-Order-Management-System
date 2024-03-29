unit TestData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TTestdatatable = class(TForm)
    CustomerGrid: TDBGrid;
    OrdersGrid: TDBGrid;
    OrderDetailsGrid: TDBGrid;
    ProductsGrid: TDBGrid;
    Button1: TButton;
    SearchTablesEdit: TEdit;
    SearchProductsBtn: TButton;
    SearchOrdersBtn: TButton;
    SearchOrderDetailBtn: TButton;
    procedure Button1Click(Sender: TObject);
    procedure SearchOrderDetailBtnClick(Sender: TObject);
    procedure SearchOrdersBtnClick(Sender: TObject);
    procedure SearchProductsBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Testdatatable: TTestdatatable;

implementation

{$R *.dfm}

uses DMain, Home;

procedure TTestdatatable.Button1Click(Sender: TObject);
{ Closes the current form and makes the 'Main' form visible again so that the user can carry out a new task. }
begin
  with DMain.DataMain.OrderDetailsSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM OrderDetails';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
  with DMain.DataMain.OrdersSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM Orders';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
  with DMain.DataMain.ProductsSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM Products';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
  Testdatatable.Close;
  { Closes the 'Testdata' form as it is no longer needed. }
  HomeForm.Visible := True;
  { Shows the 'Main' form so the user can carry out their next task. }
end;

procedure TTestdatatable.SearchOrderDetailBtnClick(Sender: TObject);
begin
  with DMain.DataMain.OrderDetailsSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM OrderDetails WHERE OrderID LIKE "' +
      SearchTablesEdit.text + '"';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
end;

procedure TTestdatatable.SearchOrdersBtnClick(Sender: TObject);
begin
  with DMain.DataMain.OrdersSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM Orders WHERE OrderID LIKE "' +
      SearchTablesEdit.text + '"';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
end;

procedure TTestdatatable.SearchProductsBtnClick(Sender: TObject);
begin
  with DMain.DataMain.ProductsSet do
  begin
    Close; { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM Products WHERE UnitsInStock <= 5';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
end;

end.
