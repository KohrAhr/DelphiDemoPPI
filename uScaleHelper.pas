unit uScaleHelper;

interface

type
	ScaleHelper = class
		private
			class var FPPI: Integer;
			/// <summary>
			/// 	Current and last known PPI
			/// </summary>
			class procedure SetPPI(Value: Integer); static;

		public
			class property PPI: Integer read FPPI write SetPPI;
	end;

implementation

uses
  Vcl.Forms;

{ ScaleFunctions }

class procedure ScaleHelper.SetPPI(Value: Integer);
var
	LCycle: Integer;
begin
	if Application.MainForm <> nil then
		if Application.MainForm.PixelsPerInch <> Value then
			Application.MainForm.PixelsPerInch := Value;
	for LCycle := 0 to Screen.FormCount - 1  do
		if Screen.Forms[LCycle].PixelsPerInch <> Value then
			Screen.Forms[LCycle].ScaleBy(Value, Value);
	FPPI := Value;
end;

end.
