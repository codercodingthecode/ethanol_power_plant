program Transportes;

uses
  Forms,
  Unitprincipal in 'Unitprincipal.pas' {FormGerencia},
  UnitCadProp in 'UnitCadProp.pas' {FormCadProp},
  UnitCadVeic in 'UnitCadVeic.pas' {FormCadVeic},
  UnitCadItens in 'UnitCadItens.pas' {FormCadItens},
  UnitTabFrete in 'UnitTabFrete.pas' {FormTabFrete},
  UnitCadFunc in 'UnitCadFunc.pas' {FormCadFunc},
  UnitLancItem in 'UnitLancItem.pas' {FormLancItem},
  UnitLancCana in 'UnitLancCana.pas' {FormLancCana},
  UnitCadTipoItem in 'UnitCadTipoItem.pas' {FormCadTipoItem},
  UnitRelatLancItem in 'UnitRelatLancItem.pas' {Form1},
  UnitCadPropriedade in 'UnitCadPropriedade.pas' {FormCadPropriedade},
  UnitLancCombustivel in 'UnitLancCombustivel.pas' {FormLancCombustivel},
  UnitDataRelatorio in 'UnitDataRelatorio.pas' {FormDataRelatorio},
  UnitLancCanaPreta in 'UnitLancCanaPreta.pas' {FormLancCanaPreta},
  UnitRelatCana in 'UnitRelatCana.pas' {FormRelatCana},
  UnitPlantio in 'UnitPlantio.pas' {FormPlantio};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormGerencia, FormGerencia);
  Application.CreateForm(TFormCadProp, FormCadProp);
  Application.CreateForm(TFormCadVeic, FormCadVeic);
  Application.CreateForm(TFormCadItens, FormCadItens);
  Application.CreateForm(TFormTabFrete, FormTabFrete);
  Application.CreateForm(TFormCadFunc, FormCadFunc);
  Application.CreateForm(TFormLancItem, FormLancItem);
  Application.CreateForm(TFormLancCana, FormLancCana);
  Application.CreateForm(TFormCadTipoItem, FormCadTipoItem);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormCadPropriedade, FormCadPropriedade);
  Application.CreateForm(TFormLancCombustivel, FormLancCombustivel);
  Application.CreateForm(TFormDataRelatorio, FormDataRelatorio);
  Application.CreateForm(TFormLancCanaPreta, FormLancCanaPreta);
  Application.CreateForm(TFormRelatCana, FormRelatCana);
  Application.CreateForm(TFormPlantio, FormPlantio);
  Application.Run;
end.
