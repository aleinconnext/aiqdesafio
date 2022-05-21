program AiqDesafio;

uses
  System.StartUpCopy,
  FMX.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPokedex},
  UDmDados in 'UDmDados.pas' {DmDados: TDataModule},
  Loading in 'Loading.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPokedex, FrmPokedex);
  Application.CreateForm(TDmDados, DmDados);
  Application.Run;
end.
