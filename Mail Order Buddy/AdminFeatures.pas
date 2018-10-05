unit AdminFeatures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAdminFeaturesForm = class(TForm)
    ViewProductsBtn: TButton;
    ViewOrdersBtn: TButton;
    HomeBtn: TButton;
    procedure ViewOrdersBtnClick(Sender: TObject);
    procedure HomeBtnClick(Sender: TObject);
    procedure OpenOrdersBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdminFeaturesForm: TAdminFeaturesForm;

implementation

{$R *.dfm}

uses ViewOrderSForm, Home, OpenOrderForm;

procedure TAdminFeaturesForm.HomeBtnClick(Sender: TObject);
{ Goes back to the main page. }
begin
  HomeForm.Visible := True;
  AdminFeaturesForm.Visible := False;
end;

procedure TAdminFeaturesForm.OpenOrdersBtnClick(Sender: TObject);
begin
  OpenOrdersForm.Visible := True;
  HomeForm.Visible := False;
end;

procedure TAdminFeaturesForm.ViewOrdersBtnClick(Sender: TObject);
{ Opens the form to view the current orders in the database. }
begin
  ViewOrders.Visible := True;
  AdminFeaturesForm.Visible := False;
end;

end.
