unit CustomerDataBase1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TCustomerDataBaseForm = class(TForm)
    Label1: TLabel;
    CustomerSearchEdit: TEdit;
    CustomerSearchbtn: TButton;
    Homebtn: TButton;
    EditCustomerbtn: TButton;
    DContactNameChoice: TDBLookupComboBox;
    procedure HomebtnClick(Sender: TObject);
    procedure EditCustomerbtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerSearchbtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerDataBaseForm: TCustomerDataBaseForm;

implementation

{$R *.dfm}

uses Home, CustomerDetailsEditPage, DMain, TestData;

procedure TCustomerDataBaseForm.CustomerSearchbtnClick(Sender: TObject);
 { Searches the database for the customers that meet the parameter that has been entered by the user. }
begin
with DMain.DataMain.CustomerSet do
 begin
 Close;
 { Data Set must be closed before changing the command text parameter. }
 CommandText := 'SELECT * FROM Customers WHERE ContactName Like "%'+CustomerSearchEdit.text+'%"';
 open; { Opening the Data Set will run the new Command Text and return the records that meet the query. }
 ShowMessage('Search Complete'); { A message box to let the user know the query has been run and a customer found. }
 end;

end;

procedure TCustomerDataBaseForm.EditCustomerbtnClick(Sender: TObject);
 { Opens the form where the user can then edit the selected customers details.}
begin
EditDetailsForm.Visible:= True;
CustomerDataBaseForm.Visible:=False;
end;

procedure TCustomerDataBaseForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
 { Closes the program currente form and the 'Main' form so that the whole program is terminated. }
begin
HomeForm.Close;
EditDetailsForm.Close;
end;

procedure TCustomerDataBaseForm.HomebtnClick(Sender: TObject);
 { Closes the current form and makes the 'Main' form visible again so that the user can carry out a new task. }
begin
CustomerDataBaseForm.Visible:= False;
HomeForm.Visible:= True;
end;

end.
