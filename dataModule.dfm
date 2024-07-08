object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 260
  Top = 175
  Height = 290
  Width = 333
  object ZConnection1: TZConnection
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
  object Dsatuan: TDataSource
    DataSet = Zsatuan
    Left = 88
    Top = 128
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 192
    Top = 128
  end
end
