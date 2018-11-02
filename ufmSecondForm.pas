unit ufmSecondForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ufrmTest,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList;

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
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSecondForm: TfmSecondForm;

implementation

{$R *.dfm}

end.
