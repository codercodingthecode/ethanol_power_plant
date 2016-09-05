unit UnitDataRelatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, DBCtrls, DBTables, Db;

type
  TFormDataRelatorio = class(TForm)
    Panel2: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel1: TPanel;
    Mask2: TMaskEdit;
    Mask1: TMaskEdit;
    Table1: TTable;
    DataSource1: TDataSource;
    soma: TQuery;
    ComboBox1: TComboBox;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataRelatorio: TFormDataRelatorio;
  total : real;

implementation

uses UnitRelatLancItem;

{$R *.DFM}

procedure TFormDataRelatorio.SpeedButton11Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDataRelatorio.SpeedButton10Click(Sender: TObject);
begin
 with form1.impressao do
    begin
        Form1.impressao.close;
        Form1.impressao.SQL.Clear;
        form1.impressao.sql.Add('select modelo, sum(combustivel.media) as somamedia, sum(combustivel.litros) as somalitros, count(combustivel.codigo) as somacampo,sum(Valor_Total) SomaValor, avg(combustivel.Media_Litro) as MediaLitro from combustivel where');
        Form1.impressao.SQL.ADD('Data>=:Data0 and');
        Form1.impressao.SQL.ADD('Data<=:Data1 and');
        Form1.impressao.SQL.ADD('Modelo =:Modelo');
        //form1.impressao.sql.add('order by Data');
        Form1.impressao.Params[0].asdate := StrtoDate(Mask1.text);
        Form1.impressao.Params[1].asdate := StrtoDate(Mask2.text);
        Form1.impressao.Params[2].asstring := ComboBox1.Text;
        form1.impressao.sql.add('group by modelo');
        Form1.impressao.Open;
        Form1.Media.Caption := FloatToStr(Form1.impressao.FieldByName('somamedia').value);
        Form1.Litros.Caption := FloatToStr(Form1.impressao.FieldByName('somalitros').Value);
        Form1.SomaValor.Caption := FloatToStr(Form1.impressao.FieldByName('SomaValor').Value);
        Form1.MediakM.Caption := FloatToStr(Form1.impressao.FieldByName('MediaLitro').Value);
        Form1.Contador.Caption := FloatToStr(Form1.impressao.FieldByName('somacampo').Value);
    end;

    With Form1.impressao do
      begin
        Close;
        Form1.impressao.Sql.Clear;
        Form1.impressao.Sql.Add('Select Modelo, Placa, Data, Litros, Media, Media_Litro, Valor_Total from combustivel where');
        Form1.impressao.SQL.ADD('Data>=:Data0 and');
        Form1.impressao.SQL.ADD('Data<=:Data1 and');
        Form1.impressao.SQL.ADD('Modelo =:Modelo');
        form1.impressao.sql.add('order by Data');
        Form1.impressao.Params[0].asdatetime := StrtoDate(Mask1.text);
        Form1.impressao.Params[1].asdatetime := StrtoDate(Mask2.text);
        Form1.impressao.Params[2].asstring := ComboBox1.Text;
        Open;
      end;

Form1.QuickRep4.Preview;





 {
        if form1.impressao.fieldbyname('Preco').Value<>null then
        Total:= form1.impressao.fieldbyname('Preco').Value
    else
        Total:=0;
        edit1.text := FloatToStr(Total);

with Query1 do
begin
Close;
SQL.Clear;
SQL.Add('select sum(Media) as Preco from Combustivel');

//sql.add('group by Data, Litros, Media, Media_Litro, Valor_Total, Modelo, Placa');

Open;
end;
if Query1.fieldbyname('Preco').Value<>null then
Total:= Query1.fieldbyname('Preco').Value
else
Total:=0;
edit1.text := FloatToStr(Total);
form1.qlsoma.Caption := FloattoStr(Total);

 }


{  with Query1 do
        begin
                Close;
                SQL.Clear;
                SQL.Add('select sum(Media) as Preco from Combustivel');

                //sql.add('group by Data, Litros, Media, Media_Litro, Valor_Total, Modelo, Placa');

Open;
end;
if Query1.fieldbyname('Preco').Value<>null then
Total:= Query1.fieldbyname('Preco').Value
else
Total:=0;
edit1.text := FloatToStr(Total);
form1.qlsoma.Caption := FloattoStr(Total);




 }

end;

procedure TFormDataRelatorio.Button1Click(Sender: TObject);
begin
  With Form1.impressao do
    begin
      Form1.impressao.Close;
      Form1.impressao.Sql.Clear;
      Form1.impressao.Sql.Add('Select Modelo, Sum(Viagem) as ContaViagem, Sum(Plantio.Peso) as SomaPeso, Sum(Vr_Total) as SomaVr_Total from Plantio where');
      Form1.impressao.SQL.ADD('Mes =:Mes');
      Form1.impressao.Params[0].AsInteger := StrToInt(Edit1.text);
      Form1.impressao.Sql.Add('Group by Modelo');
      Form1.impressao.Sql.Add('Order by Modelo');
      Form1.impressao.Open;
//      Form1.QRExpr13.Expression := 'somapeso';
//      Form1.QrExpr15.Expression := 'SomaVr_Total';
//      Form1.QrLabel97.Caption := floattoStr(Form1.impressao.FieldByName('SomaVr_Total').Value);
//      Form1.QRLabel89.Caption := FloatToStr(Form1.impressao.FieldByName('ContaViagem').Value);
   end;
 With Form1.pesquisa do
    begin
      Form1.impressao.Close;
      Form1.impressao.Sql.Clear;
      Form1.impressao.Sql.Add('Select * from Plantio.db where');
      Form1.impressao.SQL.ADD('Mes =:Mes');
      Form1.impressao.Params[0].AsInteger := StrToInt(Edit1.text);
      Form1.pesquisa.Sql.Add('Group by Modelo, Propriedade, Peso, Vr_Total, Mes, Frota, Viagem');
      Form1.impressao.Sql.Add('Order by Modelo');
      Form1.impressao.Open;
     end;











  if Edit1.Text = '1' then
     Form1.QRLabel88.Caption := 'Janeiro';
  if Edit1.Text = '2' then
    Form1.QRLabel88.Caption := 'Fevereiro';
  if Edit1.Text = '3' then
    Form1.QRLabel88.Caption := 'Mar�o';
  If Edit1.Text = '4' then
    Form1.QRLabel88.Caption := 'Abril';
  If Edit1.Text = '5' then
    Form1.QRLabel88.Caption := 'Maio';
  If Edit1.Text = '6'then
    Form1.QRLabel88.Caption := 'Junho';
  If Edit1.Text = '7'then
    Form1.QRLabel88.Caption := 'Julho';
  If Edit1.Text = '8' then
    Form1.QRLabel88.Caption := 'Agosto';
  If Edit1.Text = '9' then
    Form1.QRLabel88.Caption := 'Setembro';
  If Edit1.Text = '10' then
    Form1.QRLabel88.Caption := 'Outubro';
  If Edit1.Text = '11' then
    Form1.QRLabel88.Caption := 'Novembro';
  If Edit1.Text = '12' then
    Form1.QRLabel88.Caption := 'Dezembro';
    Form1.quickrep7.preview;



end;
procedure TFormDataRelatorio.Button2Click(Sender: TObject);
begin
  With Form1.impressao do
    begin
//      Form1.impressao.Close;
//      Form1.impressao.Sql.Clear;
//      Form1.impressao.Sql.Add('Select Frota.Modelo, Plantio.Modelo, Combustivel.Modelo, Cana_Preta.Modelo,');
//      Form1.impressao.Sql.Add('Sum(Plantio.Peso) as SomaPesoPlantio, Sum(Plantio.Viagem) as SomaViagemPlantio, Sum(Plantio.Vr_Total) as SomaVr_TotalPlantio,');
//      Form1.impressao.Sql.Add('Sum(Combustivel.Litros) as SomaLitrosCombustivel, Sum(Combustivel.Valor_Total) as SomaValor_TotalCombustivel,');
//      Form1.impressao.Sql.Add('Sum(Cana_Preta.Peso) as SomaPesoCana_Preta, Sum(Cana_Preta.Valor) as SomaValorCana_Preta from Frota inner join Plantio on Frota = Combustivel.Modelo where');

//      Form1.impressao.Sql.Add('Select Plantio.Frota, Plantio.Modelo, Plantio.Peso, Plantio.Vr_Total, Plantio.Mes, Plantio.Viagem, Combustivel.Frota_N, Combustivel.Modelo,');
//      Form1.impressao.Sql.Add('Combustivel.Placa, Combustivel.Litros, Combustivel.Valor_Total, Cana_Preta.Frota_N, Cana_Preta.Modelo, Cana_Preta.Placa, Cana_Preta.Peso, Cana_Preta.Valor from Frota where');
//      Form1.impressao.SQL.ADD('Mes =:Mes');
//      Form1.impressao.Params[0].AsInteger := StrToInt(Edit1.text);
//      Form1.impressao.Sql.Add('Group by Modelo');
//      Form1.impressao.Sql.Add('Order by Modelo');
//      Form1.impressao.Open;
//      Form1.QRExpr13.Expression := 'somapeso';
//      Form1.QrExpr15.Expression := 'SomaVr_Total';
//      Form1.QrLabel97.Caption := floattoStr(Form1.impressao.FieldByName('SomaVr_Total').Value);
//      Form1.QRLabel89.Caption := FloatToStr(Form1.impressao.FieldByName('ContaViagem').Value);
   end;
 With Form1.pesquisa do
    begin
      Form1.impressao.Close;
      Form1.impressao.Sql.Clear;
      Form1.impressao.Sql.Add('Select * from cana_preta where');
      Form1.impressao.SQL.ADD('Mes =:Mes');
      Form1.impressao.Params[0].AsInteger := StrToInt(Edit1.text);
      Form1.pesquisa.Sql.Add('Group by Modelo, Propriedade, Peso, Vr_Total, Mes, Frota, Viagem');
      Form1.impressao.Sql.Add('Order by Modelo');
      Form1.impressao.Open;
     end;
 
   Form1.QuickRep3.Preview;
end;

procedure TFormDataRelatorio.Button3Click(Sender: TObject);
begin
//  With Form1.impressao do
//    begin
//     Form1.impressao.Close;
//      Form1.impressao.Sql.Clear;
//      Form1.impressao.Sql.Add('Select Modelo, Mes, Sum(Peso) as SomaPeso, Sum(Valor) as SomaValor from Cana_Preta where');
//        form1.impressao.sql.Add('select modelo, Mes, sum(combustivel.media) as somamedia, sum(combustivel.litros) as somalitros, count(combustivel.codigo) as somacampo,sum(Valor_Total) SomaValor, avg(combustivel.Media_Litro) as MediaLitro from combustivel where');
//      Form1.impressao.SQL.ADD('Mes =:Mes');
//      Form1.impressao.Params[0].AsInteger := StrToInt(Edit1.text);
//      Form1.impressao.Sql.Add('Group by Modelo, Mes');
//      Form1.impressao.Sql.Add('Order by Modelo');
//      Form1.impressao.Open;
//      Form1.QRExpr21.Expression := 'somapeso';
//      Form1.QRExpr22.Expression := 'somapeso';
//      Form1.QRExpr23.Expression := 'somapeso';
//      Form1.QRExpr24.Caption := 'somapeso';
//      Form1.QrExpr123.Expression := 'SomaVr_Total';
//      Form1.QrLabel122.Caption := floattoStr(Form1.impressao.FieldByName('SomaPeso').Value);
//      Form1.QRLabel123.Caption := FloatToStr(Form1.impressao.FieldByName('SomaPeso').Value);
//   end;
  With Form1.pesquisa do
    begin
      Form1.impressao.Close;
      Form1.impressao.Sql.Clear;
      Form1.impressao.Sql.Add('Select Frota_N, Modelo, Placa, Peso, Valor from Cana_Preta.db where');
      Form1.impressao.SQL.ADD('Mes =:Mes');
      Form1.impressao.Params[0].AsInteger := StrToInt(Edit1.text);
      Form1.pesquisa.Sql.Add('Group by Modelo, Mes');
      Form1.impressao.Sql.Add('Order by Modelo');
      Form1.impressao.Open;
    end;
  if Edit1.Text = '1' then
     Form1.QRLabel108.Caption := 'Janeiro';
  if Edit1.Text = '2' then
    Form1.QRLabel108.Caption := 'Fevereiro';
  if Edit1.Text = '3' then
    Form1.QRLabel108.Caption := 'Mar�o';
  If Edit1.Text = '4' then
    Form1.QRLabel108.Caption := 'Abril';
  If Edit1.Text = '5' then
    Form1.QRLabel108.Caption := 'Maio';
  If Edit1.Text = '6'then
    Form1.QRLabel108.Caption := 'Junho';
  If Edit1.Text = '7'then
    Form1.QRLabel108.Caption := 'Julho';
  If Edit1.Text = '8' then
    Form1.QRLabel108.Caption := 'Agosto';
  If Edit1.Text = '9' then
    Form1.QRLabel108.Caption := 'Setembro';
  If Edit1.Text = '10' then
    Form1.QRLabel108.Caption := 'Outubro';
  If Edit1.Text = '11' then
    Form1.QRLabel108.Caption := 'Novembro';
  If Edit1.Text = '12' then
    Form1.QRLabel108.Caption := 'Dezembro';
  Form1.quickrep9.preview;
end;

end.
