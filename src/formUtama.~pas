unit formUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DVSTHost, DASIOHost, Menus, StdCtrls;

type
  TArvinMain = class(TForm)
    Banner: TPanel;
    MainPanel: TPanel;
    FX1: TPanel;
    FX2: TPanel;
    FX3: TPanel;
    FX4: TPanel;
    ASIOHost: TASIOHost;
    VstHost: TVstHost;
    MainMenu: TMainMenu;
    Setting1: TMenuItem;
    Power: TPanel;
    FXList1: TComboBox;
    FXList2: TComboBox;
    FXList3: TComboBox;
    FXList4: TComboBox;
    OD: TOpenDialog;
    procedure Setting1Click(Sender: TObject);
    procedure FX1Click(Sender: TObject);
    procedure FX2Click(Sender: TObject);
    procedure FX3Click(Sender: TObject);
    procedure FX4Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadVSTPlugin1(DLLName: TFileName);
    procedure LoadVSTPlugin2(DLLName: TFileName);
    procedure LoadVSTPlugin3(DLLName: TFileName);
    procedure LoadVSTPlugin4(DLLName: TFileName);
  public
    { Public declarations }
  end;

var
  ArvinMain: TArvinMain;

implementation

uses formPengaturan;

{$R *.dfm}

procedure TArvinMain.Setting1Click(Sender: TObject);
begin
formSetting.ShowModal;
end;

procedure TArvinMain.LoadVSTPlugin1(DLLName: TFileName);
var i        : integer;
    s        : String;
    temp     : pchar;
    MenuItem : TMenuItem;
begin
  with VstHost[0] do
   begin
    Active:=False;
    DLLFileName:=DLLName;
    Active:=True;
    Idle;
    ShowEdit(TForm(FX1));
    Idle;
    EditIdle;
   end;
end;

procedure TArvinMain.FX1Click(Sender: TObject);
begin
  if OD.Execute then LoadVSTPlugin1(OD.FileName);
end;

procedure TArvinMain.FX2Click(Sender: TObject);
begin
  if OD.Execute then LoadVSTPlugin2(OD.FileName);
end;

procedure TArvinMain.LoadVSTPlugin2(DLLName: TFileName);
var i        : integer;
    s        : String;
    temp     : pchar;
    MenuItem : TMenuItem;
begin
  with VstHost[1] do
   begin
    Active:=False;
    DLLFileName:=DLLName;
    Active:=True;
    Idle;
    ShowEdit(TForm(FX2));
    Idle;
    EditIdle;
   end;
end;
 procedure TArvinMain.LoadVSTPlugin3(DLLName: TFileName);
var i        : integer;
    s        : String;
    temp     : pchar;
    MenuItem : TMenuItem;
begin
  with VstHost[2] do
   begin
    Active:=False;
    DLLFileName:=DLLName;
    Active:=True;
    Idle;
    ShowEdit(TForm(FX3));
    Idle;
    EditIdle;
   end;
end;
 procedure TArvinMain.LoadVSTPlugin4(DLLName: TFileName);
var i        : integer;
    s        : String;
    temp     : pchar;
    MenuItem : TMenuItem;
begin
  with VstHost[3] do
   begin
    Active:=False;
    DLLFileName:=DLLName;
    Active:=True;
    Idle;
    ShowEdit(TForm(FX4));
    Idle;
    EditIdle;
   end;
end;
procedure TArvinMain.FX3Click(Sender: TObject);
begin
  if OD.Execute then LoadVSTPlugin3(OD.FileName);
end;

procedure TArvinMain.FX4Click(Sender: TObject);
begin
if OD.Execute then LoadVSTPlugin4(OD.FileName);
end;

end.
