unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, UDataM;

type
  TfLotes = class(TForm)
    lblLotes: TLabel;
    DBGrid1: TDBGrid;
    btnSai: TButton;
    edtBuscaLote: TEdit;
    CBBuscaLote: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure edtBuscaLoteKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLotes: TfLotes;

implementation

{$R *.dfm}

procedure TfLotes.btnSaiClick(Sender: TObject);
begin
 fLotes.Close;
end;

procedure TfLotes.edtBuscaLoteKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    DataModule2.ADQValidade.Open('select * from tvalidadeestoque');
    if edtBuscaLote.Text = '' then
    begin
      abort
    end
    else
    begin
      DataModule2.ADQValidade.Open('select codproduto, produto, lote from tvalidadeestoque where ' + CBBuscaLote.Text + ' = ' + QuotedStr('%' + edtBuscaLote.Text + '%'));
    end;
  end;
end;

procedure TfLotes.FormShow(Sender: TObject);
var i : integer;
begin
  DataModule2.ADQValidade.Open('select codproduto, produto, lote from tvalidadeestoque');
    for i := 0 to DataModule2.ADQValidade.FieldCount - 1 do
    begin
      CBBuscaLote.Items.Add(DataModule2.ADQValidade.Fields[i].DisplayName);
    end;

end;

end.
