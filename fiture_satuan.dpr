program fiture_satuan;

uses
  Forms,
  satuan in 'satuan.pas' {Form1},
  dataModule in 'satuan\dataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
