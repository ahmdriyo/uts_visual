unit satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cari: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    EditNama: TEdit;
    Button4: TButton;
    tablename: TDBGrid;
    EditDiskripsi: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure tablenameCellClick(Column: TColumn);
    procedure cariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  dataModule;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    DataModule1.Zsatuan.SQL.Clear;
  DataModule1.Zsatuan.SQL.Add('insert into satuan(nama, diskripsi) values(:nama, :diskripsi)');
  DataModule1.Zsatuan.Params.ParamByName('nama').Value := EditNama.Text;
  DataModule1.Zsatuan.Params.ParamByName('diskripsi').Value := EditDiskripsi.Text;
  DataModule1.Zsatuan.ExecSQL;

  DataModule1.Zsatuan.SQL.Clear;
  DataModule1.Zsatuan.SQL.Add('select * from satuan');
  DataModule1.Zsatuan.Open;
  ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  with DataModule1.Zsatuan do
  begin
      SQL.Clear;
      SQL.Add('update satuan set nama = :nama, diskripsi = :diskripsi where id = :id');
      Params.ParamByName('nama').Value := EditNama.Text;
      Params.ParamByName('diskripsi').Value := EditDiskripsi.Text;
      Params.ParamByName('id').Value := a;
      ExecSQL;

     SQL.Clear;
     SQL.Add('select * from satuan');
     Open;
     end;
     ShowMessage('Data berhasil di Update');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   with DataModule1.Zsatuan do
     begin
        SQL.Clear;
        SQL.Add('delete from satuan where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from satuan');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  EditNama.Clear;
  EditDiskripsi.Clear;
end;

procedure TForm1.tablenameCellClick(Column: TColumn);
begin
  EditNama.Text:= DataModule1.Zsatuan.Fields[1].AsString;
    EditDiskripsi.Text:= DataModule1.Zsatuan.Fields[2].AsString;
    a:= DataModule1.Zsatuan.Fields[0].AsString;
end;

procedure TForm1.cariChange(Sender: TObject);
begin
    with DataModule1.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM satuan WHERE nama LIKE :nama');
    Params.ParamByName('nama').Value := '%' +cari.Text + '%';
    Open;
  end;
end;

end.
