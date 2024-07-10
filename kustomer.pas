unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    edtNik: TEdit;
    btnBbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    tablename: TDBGrid;
    btnhapus: TButton;
    btnClearInputs: TButton;
    edtNama: TEdit;
    edtTelp: TEdit;
    edtEmail: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cbbMember: TComboBox;
    lblDiskon: TLabel;
    lbl4: TLabel;
    edtAlamat: TEdit;
    lbl7: TLabel;
    edtcari: TEdit;
    btn1: TButton;
    procedure btnhapusClick(Sender: TObject);
    procedure btnBbaruClick(Sender: TObject);
    procedure cbbMemberChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure tablenameCellClick(Column: TColumn);
    procedure btnClearInputsClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure edtcariChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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
  datamodule, report;

{$R *.dfm}

procedure TForm1.btnhapusClick(Sender: TObject);
begin
  with DataModule1.Zkustomer do
     begin
        SQL.Clear;
        SQL.Add('delete from kustomer where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from kustomer');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

procedure TForm1.btnBbaruClick(Sender: TObject);
begin
  edtNik.Enabled := True;
  edtNama.Enabled := True;
  edtTelp.Enabled := True;
  edtEmail.Enabled := True;
  edtAlamat.Enabled := True;
  cbbMember.Enabled := True;
  btnsimpan.Enabled := True;
  
end;

procedure TForm1.cbbMemberChange(Sender: TObject);
begin
  if(cbbMember.Text = 'Ya') then
  begin
    lblDiskon.Caption  := '10%';
  end
  else
  if (cbbMember.Text = 'Tidak') then
  begin
    lblDiskon.Caption := '5%';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cbbMember.Items.add('Ya');
  cbbMember.Items.add('Tidak');

  edtNik.Enabled := False;
  edtNama.Enabled := False;
  edtTelp.Enabled := False;
  edtEmail.Enabled := False;
  edtAlamat.Enabled := False;
  cbbMember.Enabled := False;
  btnsimpan.Enabled := False;
  btnhapus.Enabled := False;
  btnedit.Enabled := False;

end;

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
  DataModule1.Zkustomer.SQL.Clear;
  DataModule1.Zkustomer.SQL.Add('INSERT INTO kustomer (nik, nama, telp, email, alamat, member) VALUES (:nik, :nama, :telp, :email, :alamat, :member)');
  DataModule1.Zkustomer.Params.ParamByName('nik').Value := edtNik.Text;
  DataModule1.Zkustomer.Params.ParamByName('nama').Value := edtNama.Text;
  DataModule1.Zkustomer.Params.ParamByName('telp').Value := edtTelp.Text;
  DataModule1.Zkustomer.Params.ParamByName('email').Value := edtEmail.Text;
  DataModule1.Zkustomer.Params.ParamByName('alamat').Value := edtAlamat.Text;
  DataModule1.Zkustomer.Params.ParamByName('member').Value := cbbMember.Text;

  DataModule1.Zkustomer.ExecSQL;

  DataModule1.Zkustomer.SQL.Clear;
  DataModule1.Zkustomer.SQL.Add('select * from kustomer');
  DataModule1.Zkustomer.Open;
  ShowMessage('Data Berhasil Disimpan!');

end;

procedure TForm1.tablenameCellClick(Column: TColumn);
begin
    edtNik.Text:= DataModule1.Zkustomer.Fields[1].AsString;
    edtNama.Text:= DataModule1.Zkustomer.Fields[2].AsString;
    edtTelp.Text:= DataModule1.Zkustomer.Fields[3].AsString;
    edtEmail.Text:= DataModule1.Zkustomer.Fields[4].AsString;
    edtAlamat.Text:= DataModule1.Zkustomer.Fields[5].AsString;
    cbbMember.Text:= DataModule1.Zkustomer.Fields[6].AsString;
    a:= DataModule1.Zkustomer.Fields[0].AsString;

    btnhapus.Enabled := True;
    btnedit.Enabled := True;
    edtNik.Enabled := True;
    edtNama.Enabled := True;
    edtTelp.Enabled := True;
    edtEmail.Enabled := True;
    edtAlamat.Enabled := True;
    cbbMember.Enabled := True;
end;

procedure TForm1.btnClearInputsClick(Sender: TObject);
begin
    edtNik.Clear;
    edtNama.Clear;
    edtTelp.Clear;
    edtEmail.Clear;
    edtAlamat.Clear;
    cbbMember.Clear;
    btnedit.Enabled := False;
    btnhapus.Enabled := False;
    DataModule1.Zkustomer.Refresh;
end;

procedure TForm1.btneditClick(Sender: TObject);
begin
  with DataModule1.Zkustomer do
  begin
      SQL.Clear;
      SQL.Add('update kustomer set nik =:nik, nama = :nama, telp=:telp,email=:email,alamat=:alamat,member=:member where id = :id');
      Params.ParamByName('nik').Value := edtNik.Text;
      Params.ParamByName('nama').Value := edtNama.Text;
      Params.ParamByName('telp').Value := edtTelp.Text;
      Params.ParamByName('email').Value := edtEmail.Text;
      Params.ParamByName('alamat').Value := edtAlamat.Text;
      Params.ParamByName('member').Value := cbbMember.Text;
      Params.ParamByName('id').Value := a;
      ExecSQL;

     SQL.Clear;
     SQL.Add('select * from kustomer');
     Open;
     end;
     ShowMessage('Data berhasil di Edit');
end;

procedure TForm1.edtcariChange(Sender: TObject);
begin
  with DataModule1.Zkustomer do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM kustomer WHERE nama LIKE :nama');
    Params.ParamByName('nama').Value := '%' +edtcari.Text + '%';
    Open;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Form2.QuickRep1.Preview;
end;

end.
