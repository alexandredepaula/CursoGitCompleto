program Calculadora;

uses
  System.StartUpCopy,
  FMX.Forms,
  UCalculadora in 'UCalculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
