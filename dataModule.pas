unit dataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    Dsatuan: TDataSource;
    Zsatuan: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  satuan;

{$R *.dfm}

end.
