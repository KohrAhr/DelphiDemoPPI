{
	NOTE:	Properties "AutoSize" must be turned OFF and property "Stretch" must be turned ON -- for TImage's control, if we want to scale them
}

unit ufmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Tabs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfmMain = class(TForm)
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    TabSet1: TTabSet;
    Memo1: TMemo;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    TrackBar2: TTrackBar;
    Edit1: TEdit;
    btnRead: TButton;
    PageControl1: TPageControl;
    RadioButton2: TRadioButton;
    Image1: TImage;
    btnApply: TButton;
    Image2: TImage;
    Image4: TImage;
    btnLoadAndApplySettings: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnLoadAndApplySettingsClick(Sender: TObject);
  private
		{ Private declarations }
	public
		{ Public declarations }
		procedure ReadPPI;
	end;

var
	fmMain: TfmMain;

implementation

uses
	System.IniFiles,
	uScaleHelper;

{$R *.dfm}

procedure TfmMain.btnReadClick(Sender: TObject);
begin
	ReadPPI;
end;

procedure TfmMain.btnLoadAndApplySettingsClick(Sender: TObject);
var
	T: TIniFile;
	LPPI, LNewPPI: Integer;
begin
	LPPI := fmMain.PixelsPerInch;
	{ Load form property from INI file }
	T := TIniFile.Create(GetCurrentDir + PathDelim + 'test.ini');
	try
		LNewPPI := T.ReadInteger('GUI', 'PPI', LPPI);
	finally
		T.Free;
	end;

	{ }
	TrackBar2.Position := LNewPPI;

	{ PPI changed? }
	if LPPI <> LNewPPI then
		ScaleHelper.PPI := LNewPPI;
end;

procedure TfmMain.btnApplyClick(Sender: TObject);
begin
	if TrackBar2.Position = ScaleHelper.PPI then
		Exit;

	ScaleHelper.PPI := TrackBar2.Position;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
	{ We are using fmMain, instead of Application.MainForm, because last one not assigned yet. PPI at Startup }
	{ Set Original value, this is important }
	ScaleHelper.PPI := fmMain.PixelsPerInch;

	TrackBar2.Position := ScaleHelper.PPI;
end;


procedure TfmMain.FormDestroy(Sender: TObject);
var
	T: TIniFile;
begin
  { Save in ini file }
  T := TIniFile.Create(GetCurrentDir + PathDelim + 'test.ini');
  try
  	T.WriteInteger('GUI', 'PPI', TrackBar2.Position);
  finally
  	T.Free;
  end;
end;

procedure TfmMain.ReadPPI;
begin
	Edit1.Text := Application.MainForm.PixelsPerInch.ToString;
end;

procedure TfmMain.TrackBar2Change(Sender: TObject);
begin
	TrackBar2.Hint := TrackBar2.Position.ToString;
end;

end.
