unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, UDataM,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCGrids, Vcl.ExtCtrls, Unit2, JPEG;

type
  TfConsulta = class(TForm)
    lblBusca: TLabel;
    edtBuscaProduto: TEdit;
    CBBuscaProduto: TComboBox;
    ckbBuscaParcial: TCheckBox;
    ckbBuscaTudo: TCheckBox;
    ckbBuscaCampos: TCheckBox;
    ckbEsc: TCheckBox;
    ckbFocoBusca: TCheckBox;
    ckbFoto: TCheckBox;
    lblDetalhes: TLabel;
    lblDesc: TLabel;
    lblPrecoVenda: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBGrid1: TDBGrid;
    lblBusca2: TLabel;
    btnConsultaLote: TButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure edtBuscaProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure ckbBuscaCamposClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
//    procedure ckbFotoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscaProdutoClick(Sender: TObject);
    procedure btnConsultaLoteClick(Sender: TObject);
    procedure ckbFotoClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fConsulta: TfConsulta;



implementation

{$R *.dfm}



procedure TfConsulta.btnConsultaLoteClick(Sender: TObject);
begin
  fLotes := tfLotes.Create(fConsulta);
  fLotes.ShowModal;
end;

procedure TfConsulta.ckbBuscaCamposClick(Sender: TObject);
begin
  if ckbBuscaCampos.Checked = true then
  begin
    CBBuscaProduto.Text := 'Todos';
    CBBuscaProduto.Enabled := false;
  end
  else
  begin
    CBBuscaProduto.Text := 'CONTROLE';
    CBBuscaProduto.Enabled := true;
  end;
end;



procedure TfConsulta.ckbFotoClick(Sender: TObject);
begin
  if ckbFoto.Checked = true then
  begin
    Image1.Visible := true;
  end
  else
  begin
    Image1.Visible := false;
  end;
end;


procedure TfConsulta.DBGrid1CellClick(Column: TColumn);
var i : string;
begin
  i := DBGrid1.Columns.Grid.SelectedField.FieldName;
  CBBuscaProduto.Text := i;
end;

procedure TfConsulta.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
var i : string;
begin
  i := DBGrid1.Columns.Grid.SelectedField.FieldName;
  CBBuscaProduto.Text := i;
end;

procedure TfConsulta.edtBuscaProdutoClick(Sender: TObject);
begin
  edtBuscaProduto.Text := '';
end;

procedure TfConsulta.edtBuscaProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    begin
      DataModule2.ADQEstoque.Open('select * from testoque');
      if edtBuscaProduto.Text = '' then
      begin
        abort
      end;
      if ckbBuscaCampos.Checked = false then
        begin
          DataModule2.ADQEstoque.SQL.Clear;
          DataModule2.ADQEstoque.SQL.Add('select ');
          if ckbBuscaTudo.Checked = false then
            begin
              DataModule2.ADQEstoque.SQL.Add('first 100 ')
            end;
          DataModule2.ADQEstoque.SQL.Add('* from testoque where ' + CBBuscaProduto.Text);
          if ckbBuscaParcial.Checked = true then
            begin
              DataModule2.ADQEstoque.SQL.Add('like ' + QuotedStr('%' + edtBuscaProduto.Text + '%'));
            end
          else
            begin
              DataModule2.ADQEstoque.SQL.Add('= '  + QuotedStr(edtBuscaProduto.Text));
            end;
          DataModule2.ADQEstoque.Open;
        end
      else
      begin
        DataModule2.ADQEstoque.Open('select * from testoque where controle like ' + QuotedStr('%' + edtBuscaProduto.Text + '%') +
       'or produto like ' + QuotedStr('%' + edtBuscaProduto.Text + '%') + 'or qtde like' + QuotedStr('%' + edtBuscaProduto.Text + '%') +
       'or codbarras like' + QuotedStr('%' + edtBuscaProduto.Text + '%') + 'or unidade like' + QuotedStr('%' + edtBuscaProduto.Text + '%') +
       'or precocusto like' + QuotedStr('%' + edtBuscaProduto.Text + '%') + 'or perclucro like' + QuotedStr('%' + edtBuscaProduto.Text + '%') +
       'or precovenda like' + QuotedStr('%' + edtBuscaProduto.Text + '%') + 'or grupo like' + QuotedStr('%' + edtBuscaProduto.Text + '%') +
       'or fornecedor like' + QuotedStr('%' + edtBuscaProduto.Text + '%') + 'or ncm like' + QuotedStr('%' + edtBuscaProduto.Text + '%'));
      end;
      if ckbFocoBusca.Checked = false then
      begin
        DBGrid1.SetFocus;
      end;

    end;

end;


procedure TfConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F3 then
  begin
    edtBuscaProduto.Text := '';
    edtBuscaProduto.SetFocus;
  end;
  if key = vk_F2 then
  begin
    CBBuscaProduto.DroppedDown := true;
    CBBuscaProduto.SetFocus;
  end;

end;

procedure TfConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ckbEsc.Checked = true then
  begin
    if (Key = #27) then
      begin
        fConsulta.Close;
      end;
  end;

end;

procedure TfConsulta.FormShow(Sender: TObject);
var i : integer;
begin
  for i := 0 to DataModule2.ADQEstoque.FieldCount - 1 do
  begin
    CBBuscaProduto.Items.Add(DataModule2.ADQEstoque.Fields[i].DisplayName);
  end;
  if ckbBuscaTudo.Checked = false then
  begin
    DataModule2.ADQEstoque.Open('select first 100 * from testoque');
  end;
end;

end.
