unit uScaleFunctions;

interface

type
	ScaleHelper = class
		private class var FPPI: Integer;
			/// <summary>
			/// 	Current and last known PPI
			/// </summary>
			class procedure SetPPI;

		public
			property PPI: Integer read FPPI write SetPPI;
	end;

implementation

uses
  Vcl.Forms;

{ ScaleFunctions }

class procedure ScaleHelper.SetPPI(APPI: Integer);
var
	LCycle: Integer;
begin
	for LCycle := 0 to Screen.FormCount - 1  do
		Screen.Forms[LCycle].ScaleBy(APPI, FPPI);
	FPPI := APPI;
end;

end.
