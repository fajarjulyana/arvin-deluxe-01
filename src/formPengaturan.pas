unit formPengaturan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TFormSetting = class(TForm)
    LbPreset: TLabel;
    CBDrivers: TComboBox;
    CBOutput: TComboBox;
    Label1: TLabel;
    BtControlPanel: TButton;
    SESampleRate: TSpinEdit;
    Label2: TLabel;
    procedure BtControlPanelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBDriversChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSetting: TFormSetting;

implementation

uses formUtama;

{$R *.dfm}

procedure TFormSetting.BtControlPanelClick(Sender: TObject);
begin
ArvinMain.ASIOHost.ControlPanel;
end;

procedure TFormSetting.FormCreate(Sender: TObject);
begin
 CBDrivers.Items := ArvinMain.ASIOHost.DriverList;
 if CBDrivers.Items.Count = 0 then
  try
   raise Exception.Create('No ASIO Driver present! Application Terminated!');
  except
   Application.Terminate;
  end;
end;

procedure TFormSetting.CBDriversChange(Sender: TObject);
var i : Integer;
begin
 CBDrivers.ItemIndex := CBDrivers.Items.IndexOf(CBDrivers.Text);
 if CBDrivers.ItemIndex >= 0 then
  begin
   ArvinMain.ASIOHost.DriverIndex := CBDrivers.ItemIndex;
   CBOutput.Clear;
   for i := 0 to (ArvinMain.ASIOHost.OutputChannelCount div 2) - 1 do
   begin
    CBOutput.Items.Add(
    ArvinMain.ASIOHost.OutputChannelInfos[2 * i].name + ' / ' +
    ArvinMain.ASIOHost.OutputChannelInfos[2 * i + 1].name);
   end;
  end;
end;

end.
