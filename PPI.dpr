program PPI;

uses
  Vcl.Forms,
  ufmMain in 'ufmMain.pas' {fmMain},
  ufmSecondForm in 'ufmSecondForm.pas' {fmSecondForm},
  ufrmTest in 'ufrmTest.pas' {frmTest: TFrame},
  uScaleHelper in 'uScaleHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmSecondForm, fmSecondForm);
  Application.Run;
end.
