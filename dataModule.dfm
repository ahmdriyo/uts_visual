object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 366
  Top = 180
  Height = 321
  Width = 465
  object Zpenjualan: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'AutoEncodeStrings=ON')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\UNISKA\SEMESTER 4\Visual 2\libmysql.dll'
    Left = 120
    Top = 56
  end
  object dsdkustomer: TDataSource
    DataSet = Zkustomer
    Left = 88
    Top = 128
  end
  object Zkustomer: TZQuery
    Connection = Zpenjualan
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 192
    Top = 128
  end
end
