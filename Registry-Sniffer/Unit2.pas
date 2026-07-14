unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm2 = class(TForm)
    Bevel1: TBevel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
    SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  Edit1.Text := Form1.edValue.Text;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
    Form1.EdValue.Text := Edit1.Text;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
   Close();
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
   Form2.Close(); Form1.BitBtn1.Click; 
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.SearchingKey1.Enabled := true;
end;

end.
