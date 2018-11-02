unit ufmSecondForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ufrmTest;

type
  TfmSecondForm = class(TForm)
    Memo1: TMemo;
    RadioButton2: TRadioButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    RadioButton1: TRadioButton;
    TrackBar1: TTrackBar;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    frmTest1: TfrmTest;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSecondForm: TfmSecondForm;

implementation

{$R *.dfm}

procedure TfmSecondForm.FormCreate(Sender: TObject);
begin
	{ The only reason why we have it -- 2nd window created after ApplyScale execution :) but this is different problem :) }

end;

end.
