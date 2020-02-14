unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.Win.ADODB, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSourceComp: TDataSource;
    ADOTableComp: TADOTable;
    DataSourceLogs: TDataSource;
    ADOTableLogs: TADOTable;
    Panel1: TPanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  str:string;
begin
  // очищаем свойство sql от запросов
  ADOQuery1.SQL.Clear;
  // вводим запрос
  str := 'insert into computers (MAC_address,InventoryNumber,Location,DateOfCreation,LastChanges) values('''+Edit1.Text+''','+Edit2.Text+','''+
  Edit3.Text+''', now(), now() )';

  ADOQuery1.SQL.Add(str);
  ADOQuery1.ExecSQL;
  // перезапускаем таблицу
  ADOTableComp.close;
  ADOTableComp.open;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  str:string;
begin
  ADOQuery1.SQL.Clear;

  str := 'update computers set MAC_address='''+Edit4.Text+''', InventoryNumber='+
  Edit5.Text+', Location='''+Edit6.Text+''', LastChanges=now() Where  ID='+DBLookupComboBox1.Text;

  ADOQuery1.SQL.Add(str);
  ADOQuery1.ExecSQL;

  ADOTableComp.close;
  ADOTableComp.open;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  str:string;
begin
  ADOQuery1.SQL.Clear;
  str:='delete from computers where id='+DBLookupComboBox2.Text;
  ADOQuery1.SQL.Add(str);
  ADOQuery1.ExecSQL;

  ADOTableComp.close;
  ADOTableComp.open;
end;

procedure TForm1.DBLookupComboBox1Click(Sender: TObject);
begin
  Edit4.Text:=ADOTableComp.FieldByName('MAC_address').AsString;
  Edit5.Text:=ADOTableComp.FieldByName('InventoryNumber').AsString;
  Edit6.Text:=ADOTableComp.FieldByName('Location').AsString;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   ADOTableComp.Active:=false;
   ADOTableComp.Active:=true;
end;

end.
