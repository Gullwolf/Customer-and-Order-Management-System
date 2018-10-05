unit NewOrderCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TNewOrderCustomerForm = class(TForm)
    CustomerSearchEdit: TEdit;
    CustomerSearchBtn: TButton;
    DBCustomerSearchBox: TDBLookupComboBox;
    NewOrderBtn: TButton;
    CustomerSearch: TLabel;
    HomeBtn: TButton;
    procedure CustomerSearchBtnClick(Sender: TObject);
    procedure NewOrderBtnClick(Sender: TObject);
    procedure HomeBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewOrderCustomerForm: TNewOrderCustomerForm;

implementation

{$R *.dfm}

uses DMain, Home, NewOrderForm;

procedure TNewOrderCustomerForm.CustomerSearchBtnClick(Sender: TObject);
begin
  with DMain.DataMain.CustomerSet do
  begin
    Close;
    { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * FROM Customers WHERE CompanyName Like "%' +
      CustomerSearchEdit.text + '%"';
    // you can also refer to a parameter by its number if you prefer
    open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
    ShowMessage('Search Complete'); { A message box to let the user know the query has been run and a customer found. }
  end;
end;

procedure TNewOrderCustomerForm.FormCreate(Sender: TObject);
 { Changes the CommandText of the 'Customers' DataSet, 
   so that all customers are displayed and the usser can scroll through the 'DBComboLookUp' to find a customer. }
begin
  with DMain.DataMain.CustomerSet do
  begin
    Close;
     { Data Set must be closed before changing the command text parameter. }
    CommandText := 'SELECT * from Customers';
    Open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
  end;
end;

procedure TNewOrderCustomerForm.HomeBtnClick(Sender: TObject);
{ Closes the current form and makes the 'Main' form visible again so that the user can carry out a new task. }
begin
HomeForm.Visible:=True;
NewOrderCustomerForm.Close;
end;

procedure TNewOrderCustomerForm.NewOrderBtnClick(Sender: TObject);
 { Opens the 'NewOrder' form so that the user can place a new order for the selected customer. }
begin
  NewOrderCustomerForm.Visible := False;
  NewOrdersForm.Visible := True;
end;

end.
