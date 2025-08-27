unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, Unit1, ExtCtrls, ComCtrls, Buttons;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    SaveDialog1: TSaveDialog;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormActivate(Sender: TObject);
var
  indent: Integer;

  procedure EnumAllKeys(hkey: THandle);
  var
    l: TStringList;
    n: Integer;
  begin
    Inc(indent, 2);
    with TRegistry.Create do
      try
        RootKey := hkey;
        OpenKey(EmptyStr, False);
        l := TStringList.Create;
        try
          GetKeynames(l);
          CloseKey;
          for n := 0 to l.Count - 1 do
          begin
            Memo1.Lines.Add(StringOfChar(' ', indent) + l[n]);

            Application.ProcessMessages;
            Label2.Caption := IntToStr(Memo1.Lines.Count);
            if Label1.Caption = 'off' then Exit;
            if OpenKey(l[n], False) then
            begin
              EnumAllKeys(CurrentKey);
              CloseKey;
            end;
          end;
        finally
          l.Free
        end;
      finally
        Free;
      end;
    Dec(indent, 2);
  end;

begin
  Memo1.Clear;
  StatusBar1.Panels[0].Text := 'wait please, writing list from key ' + Form1.Label16.Caption + ', this may take a few minutes';
  Memo1.Lines.Add('--> Searching Keys under ' + Form1.Label16.Caption);
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  indent := 0;

  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;

  Memo1.Lines.BeginUpdate;
  try
    //EnumAllKEys(HKEY_CURRENT_USER);
    case Form1.RadioGroup3.ItemIndex of
    0 : EnumAllKEys(HKEY_CLASSES_ROOT);
    1 : EnumAllKEys(HKEY_CURRENT_USER);
    2 : EnumAllKEys(HKEY_LOCAL_MACHINE);
    3 : EnumAllKEys(HKEY_USERS);
    end;
  finally
    Memo1.Lines.EndUpdate;
    StatusBar1.Panels[0].Text := 'key list writing done.';
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  Label1.Caption := 'off';
  SpeedButton2.Enabled := true; SpeedButton3.Enabled := true;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  SpeedButton2.Enabled := false; SpeedButton3.Enabled := false;
  StatusBar1.Panels[0].Text := 'wait please, writing list from key ' + Form1.Label16.Caption + ', this may take a few minutes';
  Memo1.MaxLength := $7FFFFFF0;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var
  indent: Integer;

  procedure EnumAllKeys(hkey: THandle);
  var
    l: TStringList;
    n: Integer;
  begin
    Label1.Caption := 'on';
    Inc(indent, 2);
    with TRegistry.Create do
      try
        RootKey := hkey;
        OpenKey(EmptyStr, False);
        l := TStringList.Create;
        try
          GetKeynames(l);
          CloseKey;
          for n := 0 to l.Count - 1 do
          begin
            Memo1.Lines.Add(StringOfChar(' ', indent) + l[n]);

            Application.ProcessMessages;
            Label2.Caption := IntToStr(Memo1.Lines.Count);
            if Label1.Caption = 'off' then Exit;
            if OpenKey(l[n], False) then
            begin
              EnumAllKeys(CurrentKey);
              CloseKey;
            end;
          end;
        finally
          l.Free
        end;
      finally
        Free;
      end;
    Dec(indent, 2);
  end;

begin
  Memo1.Clear;
  StatusBar1.Panels[0].Text := 'wait please, writing list from key ' + Form1.Label16.Caption + ', this may take a few minutes';
  Memo1.Lines.Add('--> Searching Keys under ' + Form1.Label16.Caption);
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  indent := 0;
  SpeedButton2.Enabled := false; SpeedButton3.Enabled := false;

  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;

  Memo1.Lines.BeginUpdate;
  try
    //EnumAllKEys(HKEY_CURRENT_USER);
    case Form1.RadioGroup3.ItemIndex of
    0 : EnumAllKEys(HKEY_CLASSES_ROOT);
    1 : EnumAllKEys(HKEY_CURRENT_USER);
    2 : EnumAllKEys(HKEY_LOCAL_MACHINE);
    3 : EnumAllKEys(HKEY_USERS);
    end;
  finally
    Memo1.Lines.EndUpdate;
    StatusBar1.Panels[0].Text := 'key list writing done.';
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt');
end;

end.
