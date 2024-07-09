object Form1: TForm1
  Left = 396
  Top = 105
  Width = 760
  Height = 660
  Cursor = crHandPoint
  Caption = 'Form1'
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 27
    Height = 21
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 56
    Top = 88
    Width = 46
    Height = 21
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 56
    Top = 120
    Width = 37
    Height = 21
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 56
    Top = 152
    Width = 48
    Height = 21
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 56
    Top = 224
    Width = 67
    Height = 21
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 304
    Top = 224
    Width = 71
    Height = 21
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDiskon: TLabel
    Left = 392
    Top = 224
    Width = 156
    Height = 21
    Caption = 'Akan Terisi Otomatis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 56
    Top = 184
    Width = 64
    Height = 21
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 56
    Top = 504
    Width = 113
    Height = 21
    Caption = 'Masukan Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNik: TEdit
    Left = 136
    Top = 56
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object btnBbaru: TButton
    Left = 48
    Top = 264
    Width = 113
    Height = 49
    Caption = 'BARU'
    TabOrder = 1
    OnClick = btnBbaruClick
  end
  object btnsimpan: TButton
    Left = 176
    Top = 264
    Width = 97
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btnsimpanClick
  end
  object btnedit: TButton
    Left = 288
    Top = 264
    Width = 97
    Height = 49
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btneditClick
  end
  object tablename: TDBGrid
    Left = 48
    Top = 328
    Width = 561
    Height = 153
    DataSource = DataModule1.dsdkustomer
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = tablenameCellClick
  end
  object btnhapus: TButton
    Left = 400
    Top = 264
    Width = 97
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btnhapusClick
  end
  object btnClearInputs: TButton
    Left = 504
    Top = 264
    Width = 97
    Height = 49
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btnClearInputsClick
  end
  object edtNama: TEdit
    Left = 136
    Top = 88
    Width = 329
    Height = 21
    TabOrder = 7
  end
  object edtTelp: TEdit
    Left = 136
    Top = 120
    Width = 329
    Height = 21
    TabOrder = 8
  end
  object edtEmail: TEdit
    Left = 136
    Top = 152
    Width = 329
    Height = 21
    TabOrder = 9
  end
  object cbbMember: TComboBox
    Left = 136
    Top = 224
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    OnChange = cbbMemberChange
  end
  object edtAlamat: TEdit
    Left = 136
    Top = 184
    Width = 329
    Height = 21
    TabOrder = 11
  end
  object edtcari: TEdit
    Left = 184
    Top = 504
    Width = 329
    Height = 21
    TabOrder = 12
    OnChange = edtcariChange
  end
end
