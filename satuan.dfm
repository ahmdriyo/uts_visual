object Form1: TForm1
  Left = 407
  Top = 183
  Width = 1044
  Height = 570
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 392
    Width = 171
    Height = 28
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 32
    Width = 45
    Height = 21
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 80
    Width = 74
    Height = 23
    Caption = 'Deskripsi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cari: TEdit
    Left = 272
    Top = 392
    Width = 329
    Height = 21
    TabOrder = 0
    OnChange = cariChange
  end
  object Button1: TButton
    Left = 136
    Top = 112
    Width = 113
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 112
    Width = 97
    Height = 49
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 112
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = Button3Click
  end
  object EditNama: TEdit
    Left = 200
    Top = 32
    Width = 305
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 488
    Top = 112
    Width = 97
    Height = 49
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button4Click
  end
  object tablename: TDBGrid
    Left = 64
    Top = 168
    Width = 857
    Height = 193
    DataSource = DataModule1.Dsatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tablenameCellClick
  end
  object EditDiskripsi: TEdit
    Left = 200
    Top = 80
    Width = 305
    Height = 21
    TabOrder = 7
  end
end
