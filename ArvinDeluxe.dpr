program ArvinDeluxe;

uses
  Forms,
  formUtama in 'src\formUtama.pas' {ArvinMain},
  formPengaturan in 'src\formPengaturan.pas' {FormSetting};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Arvin Deluxe';
  Application.CreateForm(TArvinMain, ArvinMain);
  Application.CreateForm(TFormSetting, FormSetting);
  Application.Run;
end.
