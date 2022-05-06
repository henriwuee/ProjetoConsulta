program Project1;

uses
  Vcl.Forms,
  uConsulta in 'uConsulta.pas' {fConsulta},
  UDataM in 'UDataM.pas' {DataModule2: TDataModule},
  Unit2 in 'Unit2.pas' {fLotes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfConsulta, fConsulta);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfLotes, fLotes);
  Application.Run;
end.
