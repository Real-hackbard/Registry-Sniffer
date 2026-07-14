unit Unit1;

interface

uses
  WinApi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Shell.ShellCtrls, WinApi.psApi, WinApi.ShellAPI,
  CommCtrl, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, System.Win.Registry, System.IniFiles;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    Jump1: TMenuItem;
    N1: TMenuItem;
    StartSniffer1: TMenuItem;
    StopSniffer1: TMenuItem;
    N2: TMenuItem;
    SaveDialog1: TSaveDialog;
    Savelog1: TMenuItem;
    N3: TMenuItem;
    NormalScan1: TMenuItem;
    Normal1: TMenuItem;
    Deep1: TMenuItem;
    N4: TMenuItem;
    Options1: TMenuItem;
    OpenDialog1: TOpenDialog;
    AddKeytoKeyList1: TMenuItem;
    LoadKeyListfromFile1: TMenuItem;
    GridLines1: TMenuItem;
    SearchingKey1: TMenuItem;
    FontDialog1: TFontDialog;
    N5: TMenuItem;
    Font1: TMenuItem;
    N6: TMenuItem;
    C1: TMenuItem;
    F1: TMenuItem;
    S1: TMenuItem;
    L1: TMenuItem;
    V1: TMenuItem;
    B1: TMenuItem;
    PopupMenu2: TPopupMenu;
    S2: TMenuItem;
    L2: TMenuItem;
    N7: TMenuItem;
    R1: TMenuItem;
    C2: TMenuItem;
    N8: TMenuItem;
    J1: TMenuItem;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    ListBox1: TListBox;
    TabSheet2: TTabSheet;
    Bevel4: TBevel;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    TabSheet4: TTabSheet;
    Bevel5: TBevel;
    Image1: TImage;
    BitBtn8: TBitBtn;
    CheckBox14: TCheckBox;
    D1: TMenuItem;
    Label2: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    Label26: TLabel;
    ListView1: TListView;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ComboBox4: TComboBox;
    BitBtn6: TBitBtn;
    edValue: TEdit;
    lblValue: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    ImageList1: TImageList;
    C3: TMenuItem;
    GroupBox3: TGroupBox;
    ScrollBar1: TScrollBar;
    Label8: TLabel;
    S3: TMenuItem;
    HKEYCLASSESROOT1: TMenuItem;
    HKEYCURRENTUSER1: TMenuItem;
    HKEYLOCALMACHINE1: TMenuItem;
    HKEYDYNDATA1: TMenuItem;
    N9: TMenuItem;
    Keys1: TMenuItem;
    Values1: TMenuItem;
    Data1: TMenuItem;
    N10: TMenuItem;
    HKEYUSERS1: TMenuItem;
    HKEYPERFORMANCEDATA1: TMenuItem;
    HKEYCURRENTCONFIG1: TMenuItem;
    Memo1: TMemo;
    Image2: TImage;
    Image3: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    E1: TMenuItem;
    RadioGroup3: TRadioGroup;
    Label16: TLabel;
    O1: TMenuItem;
    Windows20001: TMenuItem;
    WindowsXP1: TMenuItem;
    WindowsVISTAx861: TMenuItem;
    WindowsVISTAx862: TMenuItem;
    Windows7x861: TMenuItem;
    Windows7x862: TMenuItem;
    Windows81x861: TMenuItem;
    Windows81x862: TMenuItem;
    Windows10x861: TMenuItem;
    Windows10x862: TMenuItem;
    Windows11x861: TMenuItem;
    Windows11x862: TMenuItem;
    Timer1: TTimer;
    T2: TMenuItem;
    CheckBox15: TCheckBox;
    N11: TMenuItem;
    E2: TMenuItem;
    SaveDialog2: TSaveDialog;
    Panel4: TPanel;
    Panel5: TPanel;
    ListBox3: TListBox;
    Panel6: TPanel;
    Panel7: TPanel;
    ListBox2: TListBox;
    Panel8: TPanel;
    Splitter1: TSplitter;
    N12: TMenuItem;
    L3: TMenuItem;
    ProcessPriority1: TMenuItem;
    L4: TMenuItem;
    N13: TMenuItem;
    H1: TMenuItem;
    R2: TMenuItem;
    A1: TMenuItem;
    RegistryTokenPrivilegs1: TMenuItem;
    SavelastKeyListbyend1: TMenuItem;
    SaveLastSearchingKey1: TMenuItem;
    RadioGroup4: TRadioGroup;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edValueChange(Sender: TObject);
    procedure JumpToKey(Key: string);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure Jump1Click(Sender: TObject);
    procedure StartSniffer1Click(Sender: TObject);
    procedure StopSniffer1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Deep1Click(Sender: TObject);
    procedure Savelog1Click(Sender: TObject);
    procedure AddKeytoKeyList1Click(Sender: TObject);
    procedure LoadKeyListfromFile1Click(Sender: TObject);
    procedure GridLines1Click(Sender: TObject);
    procedure SearchingKey1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox12Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure HKEYCLASSESROOT1Click(Sender: TObject);
    procedure HKEYCURRENTUSER1Click(Sender: TObject);
    procedure HKEYLOCALMACHINE1Click(Sender: TObject);
    procedure HKEYDYNDATA1Click(Sender: TObject);
    procedure Keys1Click(Sender: TObject);
    procedure Values1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure HKEYUSERS1Click(Sender: TObject);
    procedure HKEYPERFORMANCEDATA1Click(Sender: TObject);
    procedure HKEYCURRENTCONFIG1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure ListView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Windows20001Click(Sender: TObject);
    procedure WindowsXP1Click(Sender: TObject);
    procedure WindowsVISTAx861Click(Sender: TObject);
    procedure WindowsVISTAx862Click(Sender: TObject);
    procedure Windows7x861Click(Sender: TObject);
    procedure Windows7x862Click(Sender: TObject);
    procedure Windows81x861Click(Sender: TObject);
    procedure Windows81x862Click(Sender: TObject);
    procedure Windows10x861Click(Sender: TObject);
    procedure Windows10x862Click(Sender: TObject);
    procedure Windows11x861Click(Sender: TObject);
    procedure Windows11x862Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure L3Click(Sender: TObject);
    procedure L4Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure RegistryTokenPrivilegs1Click(Sender: TObject);
    procedure SavelastKeyListbyend1Click(Sender: TObject);
    procedure SaveLastSearchingKey1Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
  private
    { Private-Deklarationen}
    FReg: TRegistry;
    FTotal, FLast: Integer;
    flbHorzScrollWidth: Integer;
    // FEnable: Boolean;
    procedure Scan(Key: String);
    procedure InitScan;
    procedure IsValidData(const AKey, AValue, AData: String);
    procedure disable;
    procedure enable;
  public
    { Public-Deklarationen }
    abort : boolean;
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form1: TForm1;
  TIF: TIniFile;
  Key: Integer = 0;
  value: Integer = 0;
  data: Integer = 0;

type
  { Windows API function for retrieving information about physical and
    virtual memory. It replaces the older GlobalMemoryStatus, which returns
    incorrect values ​​on systems with more than 4 GB of RAM. }
  TMemoryStatusEx = packed record
    dwLength: DWORD;
    dwMemoryLoad: DWORD;
    ullTotalPhys: Int64;
    ullAvailPhys: Int64;
    ullTotalPageFile: Int64;
    ullAvailPageFile: Int64;
    ullTotalVirtual: Int64;
    ullAvailVirtual: Int64;
    ullAvailExtendedVirtual: Int64;
  end;

{ Checks whether a specific security identifier (SID) is present and enabled
  in an access token. }
Function CheckTokenMembership(TokenHandle: THandle; SIdToCheck: PSID;
  var IsMember: Boolean): Boolean; StdCall; External AdvApi32;

implementation

uses
  Unit2, Unit3;

{$R *.dfm}
function MainDir: string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions; // ################### Options Write
var
  OPT: string;
begin
  OPT := 'Options';

  if not DirectoryExists(MainDir + 'Data\Options\') then
    ForceDirectories(MainDir + 'Data\Options\');

  TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
  with TIF do
  begin
    WriteBool(OPT, 'Grids', GridLines1.Checked);
    WriteBool(OPT, 'AdminPrivilegs', CheckBox13.Checked);
    WriteString(OPT, 'FontName', Label6.Caption);
    WriteString(OPT, 'FontSize', Label28.Caption);
    WriteInteger(OPT, 'FontColor', Shape1.Brush.Color);
    WriteBool(OPT, 'KeyList', CheckBox11.Checked);
    WriteString(OPT, 'LastSearchKeyString', edValue.Text);
    WriteBool(OPT, 'RAMScan', CheckBox12.Checked);
    WriteInteger(OPT, 'SortType', RadioGroup1.ItemIndex);
    WriteInteger(OPT, 'ProcessPrio', RadioGroup2.ItemIndex);
    WriteBool(OPT, 'LastSearchKey', CheckBox14.Checked);
    WriteInteger(OPT, 'Jump', ComboBox4.ItemIndex);
    WriteBool(OPT, 'Control', C1.Checked);
    WriteInteger(OPT, 'Scan', ComboBox3.ItemIndex);
    WriteInteger(OPT, 'OS', ComboBox2.ItemIndex);
    WriteBool(OPT, 'RegToken', CheckBox15.Checked);
    WriteBool(OPT, 'List', L3.Checked);
    WriteBool(OPT, 'SniffKeys', CheckBox1.Checked);
    WriteBool(OPT, 'SniffValues', CheckBox2.Checked);
    WriteBool(OPT, 'SniffDatas', CheckBox3.Checked);
    WriteBool(OPT, 'SniffcbHKEY_CLASSES_ROOT', CheckBox4.Checked);
    WriteBool(OPT, 'SniffcbHKEY_CURRENT_USER', CheckBox5.Checked);
    WriteBool(OPT, 'SniffcbHKEY_LOCAL_MACHINE', CheckBox6.Checked);
    WriteBool(OPT, 'SniffcbHKEY_DYN_DATA', CheckBox7.Checked);
    WriteBool(OPT, 'SniffcbHKEY_USERS', CheckBox8.Checked);
    WriteBool(OPT, 'SniffcbHKEY_PERFORMANCE_DATA', CheckBox9.Checked);
    WriteBool(OPT, 'SniffcbHKEY_CURRENT_CONFIG', CheckBox10.Checked);
    WriteInteger(OPT, 'Last', ScrollBar1.Position);
    Free;
  end;
end;

procedure TForm1.ReadOptions; // ################### Options Read
var
  OPT: string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
    TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
    with TIF do
    begin
      GridLines1.Checked := ReadBool(OPT, 'Grids', GridLines1.Checked);
      CheckBox13.Checked := ReadBool(OPT, 'AdminPrivilegs', CheckBox13.Checked);
      Label6.Caption := ReadString(OPT, 'FontName', Label6.Caption);
      Label28.Caption := ReadString(OPT, 'FontSize', Label28.Caption);
      Shape1.Brush.Color := ReadInteger(OPT, 'FontColor', Shape1.Brush.Color);
      CheckBox11.Checked := ReadBool(OPT, 'KeyList', CheckBox11.Checked);
      ComboBox4.ItemIndex := ReadInteger(OPT, 'Jump', ComboBox4.ItemIndex);
      C1.Checked := ReadBool(OPT, 'Control', C1.Checked);
      CheckBox14.Checked := ReadBool(OPT, 'LastSearchKey', CheckBox14.Checked);

      if CheckBox14.Checked = true then
      begin
        edValue.Text := ReadString(OPT, 'LastSearchKeyString', edValue.Text);
      end;

      CheckBox12.Checked := ReadBool(OPT, 'RAMScan', CheckBox12.Checked);
      RadioGroup1.ItemIndex := ReadInteger(OPT, 'SortType', RadioGroup1.ItemIndex);
      RadioGroup2.ItemIndex := ReadInteger(OPT, 'ProcessPrio', RadioGroup2.ItemIndex);
      ComboBox3.ItemIndex := ReadInteger(OPT, 'Scan', ComboBox3.ItemIndex);
      ComboBox2.ItemIndex := ReadInteger(OPT, 'OS', ComboBox2.ItemIndex);
      CheckBox15.Checked := ReadBool(OPT, 'RegToken', CheckBox15.Checked);
      L3.Checked := ReadBool(OPT, 'List', L3.Checked);
      CheckBox1.Checked := ReadBool(OPT, 'SniffKeys', CheckBox1.Checked);
      CheckBox2.Checked := ReadBool(OPT, 'SniffValues', CheckBox2.Checked);
      CheckBox3.Checked := ReadBool(OPT, 'SniffDatas', CheckBox3.Checked);
      CheckBox4.Checked := ReadBool(OPT, 'SniffcbHKEY_CLASSES_ROOT', CheckBox4.Checked);
      CheckBox5.Checked := ReadBool(OPT, 'SniffcbHKEY_CURRENT_USER', CheckBox5.Checked);
      CheckBox6.Checked := ReadBool(OPT, 'SniffcbHKEY_LOCAL_MACHINE', CheckBox6.Checked);
      CheckBox7.Checked := ReadBool(OPT, 'SniffcbHKEY_DYN_DATA', CheckBox7.Checked);
      CheckBox8.Checked := ReadBool(OPT, 'SniffcbHKEY_USERS', CheckBox8.Checked);
      CheckBox9.Checked := ReadBool(OPT, 'SniffcbHKEY_PERFORMANCE_DATA', CheckBox9.Checked);
      CheckBox10.Checked := ReadBool(OPT, 'SniffcbHKEY_CURRENT_CONFIG', CheckBox10.Checked);
      ScrollBar1.Position := ReadInteger(OPT, 'Last', ScrollBar1.Position);
      Free;
    end;
  end;
end;

// Components are deactivated when the sniffer starts.
procedure TForm1.disable;
var
  i : integer;
begin
  if CheckBox12.Checked = true then
  begin
    Timer1.Enabled := true;
    Label3.Enabled := true;
    Label26.Enabled := true;
  end;

  for i := 1 to 10 do
  begin
    TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := false;
  end;

  for i := 1 to 4 do
  begin
    TComboBox(findcomponent('ComboBox' + inttostr(i))).Enabled := false;
  end;

  for i := 3 to 6 do
  begin
    TBitBtn(findcomponent('BitBtn' + inttostr(i))).Enabled := false;
  end;

  abort := false;
  SearchingKey1.Enabled := false;
  StartSniffer1.Enabled := false;
  Label1.Enabled := false;
  Label4.Enabled := false;
  D1.Enabled := false;
  Jump1.Enabled := false;
  Savelog1.Enabled := false;
  C3.Enabled := false;
  S3.Enabled := false;
  E1.Enabled := false;
  O1.Enabled := false;
  E2.Enabled := false;
  LoadKeyListfromFile1.Enabled := false;
  AddKeytoKeyList1.Enabled := false;

  ListBox2.Enabled := false;
  ListBox3.Enabled := false;
end;

// These components are reactivated when stopping.
procedure TForm1.enable;
var
  i : integer;
begin
  Timer1.Enabled := false;
  abort := true;

  for i := 1 to 10 do
  begin
    TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := true;
  end;

  for i := 1 to 4 do
  begin
    TComboBox(findcomponent('ComboBox' + inttostr(i))).Enabled := true;
  end;

  for i := 3 to 6 do
  begin
    TBitBtn(findcomponent('BitBtn' + inttostr(i))).Enabled := true;
  end;

  Label1.Enabled := true;
  Label4.Enabled := true;
  D1.Enabled := true;
  Jump1.Enabled := true;
  Savelog1.Enabled := true;
  C3.Enabled := true;
  S3.Enabled := true;
  E1.Enabled := true;
  O1.Enabled := true;
  E2.Enabled := true;
  LoadKeyListfromFile1.Enabled := true;
  AddKeytoKeyList1.Enabled := true;

  ListBox2.Enabled := true;
  ListBox3.Enabled := true;
end;

function IsWindowsAdministrator: Boolean;
// Returns TRUE if the user has administrator priveleges
// Returns a boolean indicating whether or not user has admin
// privileges. Call only when running under NT. Win9.x will return false!
var
  hAccessToken: THandle;
  ptgGroups: pTokenGroups;
  dwInfoBufferSize: DWORD;
  psidAdministrators: PSID;
  int: Integer;             // counter
  blnResult: Boolean;       // return flag

const
  // top-level authority of a Security Identifier (SID)
  SECURITY_NT_AUTHORITY: SID_IDENTIFIER_AUTHORITY = (value: (0, 0, 0, 0, 0, 5));
  // Windows Security Identifiers (SIDs) for built-in accounts
  SECURITY_BUILTIN_DOMAIN_RID: DWORD = $00000020;
  // represent the Administrators group on the local computer or domain
  DOMAIN_ALIAS_RID_ADMINS: DWORD = $00000220;
  // represents the Relative Identifier (RID) for the built-in "Users" group
  DOMAIN_ALIAS_RID_USERS: DWORD = $00000221;
  // represents the Relative Identifier (RID) for the built-in Guests group
  DOMAIN_ALIAS_RID_GUESTS: DWORD = $00000222;
  // represents the relative identifier (RID) for the built-in Power Users group
  DOMAIN_ALIAS_RID_POWER_: DWORD = $00000223;

begin
  Result := false;
  // retrieve the access token associated with a specific thread
  blnResult := OpenThreadToken(GetCurrentThread, TOKEN_QUERY, true,
    hAccessToken);
  if (not blnResult) then
  begin
    if GetLastError = ERROR_NO_TOKEN then
      blnResult := OpenProcessToken(GetCurrentProcess, TOKEN_QUERY,
        hAccessToken);
  end;

  ptgGroups := nil;

  if (blnResult) then
    try
      GetMem(ptgGroups, 1024);
      { to extract details such as user SID, group membership, or
        administrator rights from a Windows access token }
      blnResult := GetTokenInformation(hAccessToken, TokenGroups, ptgGroups,
        1024, dwInfoBufferSize);
      CloseHandle(hAccessToken);

      if (blnResult) then
      begin

        // Security Identifier (SID) with up to 8 sub-authority IDs (sub-authorizations)
        AllocateAndInitializeSid(SECURITY_NT_AUTHORITY, 2,
          SECURITY_BUILTIN_DOMAIN_RID, DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0,
          0, psidAdministrators);
{$IFOPT R+}        // the compiler directive {$IFOPT R+} checks whether range checking is enabled
{$DEFINE RMINUS}   // trying to turn off range checking for array or string indexing
{$R-}              // disables range checking
{$ENDIF}           // terminates a conditional compilation block in Delphi
        for int := 0 to ptgGroups.GroupCount - 1 do
          if EqualSid(psidAdministrators, ptgGroups.Groups[int].Sid) then
          begin
            Result := true;
            Break;
          end;
{$IFDEF IMINUS}
{$R-}
{$UNDEF IMINUS}
{$ENDIF}
        // used to free a Security Identifier (SID)
        FreeSid(psidAdministrators);
      end;

    finally
      If ptgGroups <> nil then
        FreeMem(ptgGroups);
    end;
end;

// Set Windows permissions (tokens)
function SetTokenPrivilege(const APrivilege: string;
  const AEnable: Boolean): Boolean;
var
  LToken: THandle;
  LTokenPriv: TOKEN_PRIVILEGES;
  LPrevTokenPriv: TOKEN_PRIVILEGES;
  LLength: Cardinal;
  LErrval: Cardinal;
begin
  Result := false;
  // Open processes
  if OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
    LToken) then
    try
      // globally unique identifier (LUID) associated
      if LookupPrivilegeValue(nil, PChar(APrivilege),
        LTokenPriv.Privileges[0].Luid) then
      begin
        LTokenPriv.PrivilegeCount := 1;
        case AEnable of
          true:
            LTokenPriv.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
          false:
            LTokenPriv.Privileges[0].Attributes := 0;
        end;
        LPrevTokenPriv := LTokenPriv;
        Result := AdjustTokenPrivileges(LToken, false, LTokenPriv,
          SizeOf(LPrevTokenPriv), LPrevTokenPriv, LLength);
      end;
    finally
      CloseHandle(LToken);
    end;
end;

// reduce physical memory (RAM) usage
procedure DSiTrimWorkingSet;
var
  hProcess: THandle;
begin
  hProcess := OpenProcess(PROCESS_SET_QUOTA, false, GetCurrentProcessId);
  try
    // Set the physical memory size (working set)
    SetProcessWorkingSetSize(hProcess, $FFFFFFFF, $FFFFFFFF);
  finally
    CloseHandle(hProcess);
  end;
end;

// get the current windows 10 version
function ErmittleWindows10Build: String;
var
  Reg: TRegistry;
begin
  Result := '';
  try
    Reg := TRegistry.Create(KEY_READ);
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if Reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows NT\CurrentVersion')
      then
      begin
        // Form1.Label10.Caption := Reg.ReadString('ProductName');
        // Form1.Label10.Caption := Reg.ReadString('EditionID');
        Form1.Label10.Caption := 'Display Version : ' +
          Reg.ReadString('DisplayVersion');
        Form1.Label11.Caption := 'Current Version : ' +
          Reg.ReadString('CurrentVersion');
        Form1.Label12.Caption := '      ReleaseId : ' +
          Reg.ReadString('ReleaseId');
        Form1.Label13.Caption := '  Current Build : ' +
          Reg.ReadString('CurrentBuild');
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;
  except
  end;
end;

// check if the OS architecture is 64-bit
function IsWindows64: Boolean;
type
  TIsWow64Process = function(Handle: WinApi.Windows.THandle; var Res: WinApi.Windows.BOOL)
    : WinApi.Windows.BOOL; stdcall;
var
  IsWow64Result:  WinApi.Windows.BOOL;
  IsWow64Process: TIsWow64Process;
begin
  IsWow64Process :=  WinApi.Windows.GetProcAddress( WinApi.Windows.GetModuleHandle('kernel32'),
    'IsWow64Process');
  if Assigned(IsWow64Process) then
  begin
    if not IsWow64Process( WinApi.Windows.GetCurrentProcess, IsWow64Result) then
      raise System.SysUtils.Exception.Create('IsWindows64: bad process handle');
    Result := IsWow64Result;
  end
  else
    Result := false;
end;

// To capture the output of a DOS command or console
procedure GetDosOutput(CommandLine, WorkDir: string; aMemo: TMemo);
var
  { to define security descriptors for system objects (such as files,
    processes, threads, mutexes, or pipes) }
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array [0 .. 255] of AnsiChar;
  BytesRead: Cardinal;
  Handle: Boolean;
begin
  with SA do
  begin
    nLength := SizeOf(SA);
    bInheritHandle := true;
    lpSecurityDescriptor := nil;
  end;
  // creates an anonymous pipe (data channel) for inter-process communication
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      // flag used in the STARTUPINFO structure when calling the Windows API
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      // to access standard input, standard output, or the standard error channel
      hStdInput := GetStdHandle(STD_INPUT_HANDLE);
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    // execute console
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine), nil, nil,
      true, 0, nil, PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            aMemo.Text := aMemo.Text + String(Buffer);
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

// To obtain information about physical and virtual memory
function GlobalMemoryStatusEx(var lpBuffer: TMemoryStatusEx): BOOL; stdcall;
type
  TFNGlobalMemoryStatusEx = function(var msx: TMemoryStatusEx): BOOL; stdcall;
var
  // This function accesses the TMemoryStatusEx structure and returns precise usage data in bytes.
  FNGlobalMemoryStatusEx: TFNGlobalMemoryStatusEx;
begin
  FNGlobalMemoryStatusEx := TFNGlobalMemoryStatusEx
    (GetProcAddress(GetModuleHandle(kernel32), 'GlobalMemoryStatusEx'));
  if not Assigned(FNGlobalMemoryStatusEx) then
  begin
    SetLastError(ERROR_CALL_NOT_IMPLEMENTED);
    Result := false;
  end
  else
    Result := FNGlobalMemoryStatusEx(lpBuffer);
end;

// open & browse registry key in windows registry
procedure TForm1.JumpToKey(Key: string);
var
  i, n: Integer;
  hWin: HWND;
  ExecInfo: ShellExecuteInfoA;
begin
  // locate the windows registry window handle
  hWin := FindWindowA(PAnsiChar('RegEdit_RegEdit'), nil);
  if hWin = 0 then
  begin
    // transferring information
    FillChar(ExecInfo, 60, #0);
    with ExecInfo do
    begin
      cbSize := 60;
      // Keep process handle open
      fMask := SEE_MASK_NOCLOSEPROCESS;
      lpVerb := PAnsiChar('open');
      lpFile := PAnsiChar('regedit.exe');
      nShow := 1;
    end;
    // execute registry
    ShellExecuteExA(@ExecInfo);
    { is used to pause the execution of the current thread until a newly
      started process has fully initialized and is idling, waiting for
      user input. }
    WaitForInputIdle(ExecInfo.hProcess, 200);
    hWin := FindWindowA(PAnsiChar('RegEdit_RegEdit'), nil);
  end;
  // show and focus the registry window
  ShowWindow(hWin, SW_SHOWNORMAL);
  hWin := FindWindowExA(hWin, 0, PAnsiChar('SysTreeView32'), nil);
  // stay registry windoe top
  SetForegroundWindow(hWin);
  i := 30;
  repeat
    SendMessageA(hWin, WM_KEYDOWN, VK_LEFT, 0);
    Dec(i);
  until i = 0;

  // Wait a while to locate the path in the registry.
  Sleep(150);
  SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0);
  Sleep(150);

  i := 1;
  n := Length(Key);
  repeat
    if Key[i] = '\' then
    begin
      SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0);
      Sleep(150);
    end
    else
      SendMessageA(hWin, WM_CHAR, Integer(Key[i]), 0);
    i := i + 1;
  until i = n;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  DllHandle: HMODULE;
begin
  // Set a hint pause of 50 seconds.
  Application.HintPause := 0;
  Application.HintHidePause := 50000;
  // Switch the stopper to off.
  abort := true;
  // Prevents the ListView from flickering when entries are added.
  DoubleBuffered := true;
  StatusBar1.DoubleBuffered := true;

  if not DirectoryExists(MainDir + 'Data\Key List\') then
    ForceDirectories(MainDir + 'Data\Key List\');

  { It acts as a bridge for older Windows software to map registry calls
    onto modern OS versions. }
  if not FileExists(MainDir + 'Data\Driver\ext-ms-win-kernel32-registry-l1-1-0.dll') then
  begin
    ShowMessage
      ('"ext-ms-win-kernel32-registry-l1-1-0.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end else begin
    try
      DllHandle := LoadLibrary(PWideChar(MainDir + 'Data\Driver\ext-ms-win-kernel32-registry-l1-1-0.dll'));
    finally
      FreeLibrary(DllHandle);
    end;
  end;

  { developer library (Microsoft.Win32.Registry.dll) for managing
    Windows registry keys }
  if not FileExists(MainDir + 'Data\Driver\registry.dll') then
  begin
    ShowMessage
      ('"registry.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end else begin
    try
      DllHandle := LoadLibrary(PWideChar(MainDir + 'Data\Driver\registry.dll'));
    finally
      FreeLibrary(DllHandle);
    end;
  end;

  { system component (Multi-User Windows USER API Client DLL) that handles
    crucial user interface elements. }
  if not FileExists(MainDir + 'Data\Driver\user32.dll') then
  begin
    ShowMessage
      ('"user32.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end else begin
    try
      DllHandle := LoadLibrary(PWideChar(MainDir + 'Data\Driver\user32.dll'));
    finally
      FreeLibrary(DllHandle);
    end;
  end;

  { RegCtrl_32.dll is typically a 32-bit Dynamic Link Library (DLL)
    component associated with various legacy or third-party Windows
    software programs. It allows applications to interface with and
    manage functions in the Windows Registry. }
  if not FileExists(MainDir + 'Data\Driver\RegCtrl_32.dll') then
  begin
    ShowMessage
      ('"RegCtrl_32.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end else begin
    try
      DllHandle := LoadLibrary(PWideChar(MainDir + 'Data\Driver\RegCtrl_32.dll'));
    finally
      FreeLibrary(DllHandle);
    end;
  end;

  { This is not a standard Windows driver file; it is the administrator
    manifest required to edit the registry. }
  if not FileExists(MainDir + 'Data\Driver\admin.dll') then
  begin
    ShowMessage
      ('"admin.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end;

  { Windows Registry is managed by system processes like regedit.exe and
    core libraries like advapi32.dll. }
  if not FileExists(MainDir + 'Data\Driver\registry.dll') then
  begin
    ShowMessage
      ('"registry.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end else begin
    try
      DllHandle := LoadLibrary(PWideChar(MainDir + 'Data\Driver\registry.dll'));
    finally
      FreeLibrary(DllHandle);
    end;
  end;

  { typically a module related to encryption, security, or
    authentication (such as a Hardware USB/PKI token or cryptographic
    service provider). If you need to check if a security or PKI-related DLL
    is registered in the Windows Registry or locate. }
  if not FileExists(MainDir + 'Data\Driver\Token.dll') then
  begin
    ShowMessage
      ('"Token.dll" not found, check driver folder, Application Terminate');
    Application.Terminate;
  end;

  { Registration database of links that have been collected or found
    during a search. }
  if not FileExists(MainDir + 'Data\Key List\Key List.ini') then
  begin
    ShowMessage
      ('"Key List.ini" not found, check Key List folder, Application Terminate');
  end else begin
    try
      ListBox1.Items.LoadFromFile(MainDir + 'Data\Key List\Key List.ini');
    except
      ShowMessage('"Key List.ini" not found.');
    end;
  end;

  Memo1.Clear;
  // Determine the Windows version using the Windows console.
  GetDosOutput('wmic os get caption', 'C:', Memo1);

  // load registry pathes to reg jumper
  ComboBox1.Items := ListBox1.Items;
  FReg := TRegistry.Create;

  Label9.Caption := '             OS : ' + Memo1.Lines[1];

  // Check whether the Windows version is 32-bit or 64-bit.
  if IsWindows64 = true then
  begin
    Label9.Caption := Label9.Caption + '- x64 bit';
  end
  else
  begin
    Label9.Caption := Label9.Caption + '- x32 bit';
  end;

  // Determine the exact Windows build.
  ErmittleWindows10Build;

  // Check if your local Windows account has administrator rights.
  if IsWindowsAdministrator = true then
  begin
    Label15.Caption := 'You have Administrative Rights.'
  end else begin
    Label15.Caption := 'You have not Administrative Rights.';
  end;

  CheckBox1.Hint := 'Hierarchical folders in the Windows Registry that store' + #13#10+
                    'vital configuration settings for the OS, hardware, and ' +#13#10+
                    'installed applications';
  CheckBox2.Hint := 'Values are the individual data entries stored inside' + #13#10+
                    'Keys. Think of a Key as a folder, and the Values as' +#13#10+
                    'the files inside it. Every registry value has three' +#13#10+
                    'components: a Name, a Data Type, and the actual Data.';
  CheckBox3.Hint := 'Registry data refers to organized, structured' + #13#10+
                    'information systematically collected by institutions' +#13#10+
                    'to evaluate specific outcomes, track populations,' +#13#10+
                    'or monitor regulations.';
  CheckBox4.Hint := 'HKEY_CLASSES_ROOT (HKCR) is a folder in the' + #13#10+
                    'Windows Registry. It holds file associations' +#13#10+
                    'and program shortcuts. It tells Windows which' +#13#10+
                    'app to open when you click a file.';
  CheckBox5.Hint := 'HKEY_CURRENT_USER (HKCU) is a top-level folder' + #13#10+
                    'in the Windows Registry. It stores settings' +#13#10+
                    'and personal data for the person currently' +#13#10+
                    'logged into the computer.';
  CheckBox6.Hint := 'HKEY_LOCAL_MACHINE (often abbreviated as HKLM)' + #13#10+
                    'is a master database for your Windows computer.' +#13#10+
                    'It holds settings and rules that apply to every' +#13#10+
                    'single user on that machine.';
  CheckBox7.Hint := 'HKEY_DYN_DATA (often abbreviated as HKDD) is a' + #13#10+
                    'Windows Registry root key. It holds dynamic (changing)' +#13#10+
                    'information about your computer`s hardware and devices.' +#13#10+
                    'It is stored in your computer`s short-term memory (RAM)' +#13#10+
                    'so your system can adapt instantly to device changes.';
  CheckBox8.Hint := 'HKEY_USERS (abbreviated as HKU) is a central root key' + #13#10+
                    'in the Windows Registry. It stores the settings and' +#13#10+
                    'personal configurations of all user accounts on your computer.';
  CheckBox9.Hint := 'It is not a real folder in the Windows Registry; it' + #13#10+
                    'is a virtual key. It serves as a bridge. Programs' +#13#10+
                    'use it to query system performance information in real time.';
  CheckBox10.Hint:= 'HKEY_CURRENT_CONFIG (HKCC) stores the current ' + #13#10+
                    'hardware settings. It indicates which hardware' +#13#10+
                    'profile the system is currently using.';
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  // stop sniffer thread
  Timer1.Enabled := false;
  // registry free
  FReg.Free;
end;

// scan the registry
procedure TForm1.Scan(Key: String);
var
  S: TStringList;
  i: Integer;
begin
  if abort = true then
  begin
    Exit;
  end;

  if FReg.OpenKeyReadOnly(Key) then
    try
      S := TStringList.Create;
      try
        FReg.GetValueNames(S);
        for i := 0 to S.Count - 1 do
        begin
          IsValidData(Key, S.Strings[i], '');

          if abort = true then
          begin
            Exit;
          end;

          if FReg.GetDataType(S.Strings[i]) in [rdString, rdExpandString] then
            IsValidData(Key, S.Strings[i], FReg.ReadString(S.Strings[i]));

          if abort = true then
          begin
            Exit;
          end;
        end;

        // scroll then listview to bottom
        ListView1.Perform(WM_VSCROLL, SB_BOTTOM, 0);

        S.Clear;
        FReg.GetKeyNames(S);
        for i := 0 to S.Count - 1 do
          if S.Strings[i] <> '' then
            Scan(Key + '\' + S.Strings[i]);

        if abort = true then
        begin
          Exit;
        end;
        Application.ProcessMessages;
      finally
        S.Free;
      end;
    finally
      FReg.CloseKey;
    end;
end;

// start sniffer
procedure TForm1.InitScan;
begin
  FTotal := 0;
  FLast := 0;
  BitBtn1.Enabled := false;
  edValue.Enabled := false;

  try
    if CheckBox4.Checked then
    begin
      FReg.RootKey := HKEY_CLASSES_ROOT;
      StatusBar1.Panels.Items[5].Text := 'HKEY_CLASSES_ROOT';
      Scan('');
    end;

    if CheckBox5.Checked then
    begin
      FReg.RootKey := HKEY_CURRENT_USER;
      StatusBar1.Panels.Items[5].Text := 'HKEY_CURRENT_USER';
      Scan('');
    end;

    if CheckBox6.Checked then
    begin
      FReg.RootKey := HKEY_LOCAL_MACHINE;
      StatusBar1.Panels.Items[5].Text := 'HKEY_LOCAL_MACHINE';
      Scan('');
    end;

    if CheckBox8.Checked then
    begin
      FReg.RootKey := HKEY_USERS;
      StatusBar1.Panels.Items[5].Text := 'HKEY_USERS';
      Scan('');
    end;

    if CheckBox9.Checked then
    begin
      FReg.RootKey := HKEY_PERFORMANCE_DATA;
      StatusBar1.Panels.Items[5].Text := 'HKEY_PERFORMANCE_DATA';
      Scan('');
    end;

    if CheckBox10.Checked then
    begin
      FReg.RootKey := HKEY_CURRENT_CONFIG;
      StatusBar1.Panels.Items[5].Text := 'HKEY_CURRENT_CONFIG';
      Scan('');
    end;

    if CheckBox9.Checked then
    begin
      FReg.RootKey := HKEY_DYN_DATA;
      StatusBar1.Panels.Items[5].Text := 'HKEY_DYN_DATA';
      Scan('');
    end;
  finally
    if abort = true then
    begin
      StatusBar1.Panels[7].Text := 'SCAN STOP !';
      StatusBar1.Panels[5].Text := 'Access finish.';
    end;

    StatusBar1.Panels.Items[7].Text := '';
    StatusBar1.Panels.Items[7].Text := 'SCAN STOP !';
    StatusBar1.Panels.Items[5].Text := 'Access finish.';

    BitBtn3.Enabled := ListView1.Items.Count > 0;
    BitBtn1.Enabled := true;
    StartSniffer1.Enabled := true;
    SearchingKey1.Enabled := true;
    edValue.Enabled := true;
    enable;
  end;
end;

// add entries to the ListView
procedure TForm1.IsValidData(const AKey, AValue, AData: String);
const
  TOTAL = 'Total Keys: ';
  FIND = 'Find Keys: ';
var
  TmpStr: String;
  item : TListItem;
begin
  Inc(FTotal);

  // Count the keys sought and the values found after the set search time.
  if FTotal - FLast > ScrollBar1.Position then
  begin
    FLast := FTotal;
    StatusBar1.Panels.Items[1].Text := TOTAL + IntToStr(FTotal);
    StatusBar1.Panels.Items[3].Text := FIND + IntToStr(ListView1.Items.Count);

    TmpStr := AKey;
    if AValue <> '' then
      TmpStr := TmpStr + ' {' + AValue + '}';
    StatusBar1.Panels.Items[7].Text := TmpStr;
    Application.ProcessMessages;
  end;


  // Output of the found keys
  if AKey <> '' then
    if CheckBox1.Checked then
      if Pos(edValue.Text, AKey) > 0 then
        begin
            item := ListView1.Items.Add;
            item.ImageIndex := 0;
            item.Caption := StatusBar1.Panels.Items[5].Text;
            item.SubItems.Add(AKey);
            item.SubItems.Add('');
            item.SubItems.Add('');
        end;

  // Output of the found values
  if AValue <> '' then
    if CheckBox2.Checked then
      if Pos(edValue.Text, AValue) > 0 then
        begin
            item := ListView1.Items.Add;
            item.ImageIndex := 6;
            item.Caption := StatusBar1.Panels.Items[5].Text;
            item.SubItems.Add(AKey);
            item.SubItems.Add(AValue);
            item.SubItems.Add('');
        end;

  // Output of the retrieved data
  if AData <> '' then
    if CheckBox3.Checked then
      if Pos(edValue.Text, AData) > 0 then
        begin
            item := ListView1.Items.Add;
            item.ImageIndex := 5;
            item.Caption := StatusBar1.Panels.Items[5].Text;
            item.SubItems.Add(AKey);
            item.SubItems.Add(AValue);
            item.SubItems.Add(AData);
        end;
end;

procedure TForm1.edValueChange(Sender: TObject);
begin
  BitBtn1.Enabled := edValue.Text <> '';
  BitBtn2.Enabled := edValue.Text <> '';
  StartSniffer1.Enabled := edValue.Text <> '';
  StopSniffer1.Enabled := edValue.Text <> '';
end;

// Setting the search mode and the main keys to be searched for
procedure TForm1.ComboBox3Change(Sender: TObject);
var
  i : integer;
begin
  if ComboBox3.ItemIndex = 0 then
  begin
    for i := 1 to 7 do
    begin
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := true;
    end;

    for i := 8 to 10 do
    begin
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := false;
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Checked := false;
    end;

    Normal1.Checked := true;
    Deep1.Checked := false;
    F1.Checked := false;
    Normal1.Checked := true;
  end;

  if ComboBox3.ItemIndex = 1 then
  begin
    for i := 1 to 10 do
    begin
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := true;
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Checked := true;
    end;

    Normal1.Checked := false;
    Deep1.Checked := true;
    F1.Checked := false;
    Deep1.Checked := true;
  end;

  if ComboBox3.ItemIndex = 2 then
  begin
    for i := 1 to 6 do
    begin
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := true;
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Checked := true;
    end;

    for i := 7 to 10 do
    begin
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := false;
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Checked := false;
    end;

    for i := 2 to 3 do
    begin
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Enabled := false;
      TCheckbox(findcomponent('Checkbox' + inttostr(i))).Checked := false;
    end;

    Normal1.Checked := false;
    Deep1.Checked := false;
    F1.Checked := true;
    F1.Checked := true;
  end;
  StatusBar1.SetFocus;
end;

// Windows version setting for the various registry trees stored in "Registry.dll".
procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0:  Windows20001.Checked := true;
    1:  WindowsXP1.Checked := true;
    2:  WindowsVISTAx861.Checked := true;
    3:  WindowsVISTAx862.Checked := true;
    4:  Windows7x861.Checked := true;
    5:  Windows7x862.Checked := true;
    6:  Windows81x861.Checked := true;
    7:  Windows81x862.Checked := true;
    8:  Windows10x861.Checked := true;
    9:  Windows10x862.Checked := true;
    10: Windows11x861.Checked := true;
    11: Windows11x862.Checked := true;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.ListView1Click(Sender: TObject);
var
  i: Integer;
  Reg: TRegistry;
begin
  i := ListView1.ItemIndex;

  // prevents an item error if none exists
  if i = -1 then
  Begin
    Exit;
  End;

  if ListView1.Items.Count = 0 then
    Exit;


  // jump to main hotkey
  if ComboBox4.ItemIndex = 0 then
  begin
    for i := 0 to ListView1.Items.Count - 1 do
    begin
      ComboBox1.Text := ListView1.Items[i].Caption;
    end;
  end;

  // jump to key path
  if ComboBox4.ItemIndex = 1 then
  begin
    for i := 0 to ListView1.Items.Count - 1 do
      ComboBox1.Text := ListView1.Items[i].Caption + ListView1.Items
        [ListView1.ItemIndex].SubItems[0] + '\';
  end;

  // jump to hotkey path and value
  if ComboBox4.ItemIndex = 2 then
  begin
    for i := 0 to ListView1.Items.Count - 1 do
      ComboBox1.Text := ListView1.Items[i].Caption + ListView1.Items
        [ListView1.ItemIndex].SubItems[0] + '\' + ListView1.Items
        [ListView1.ItemIndex].SubItems[1];
  end;

  // jump to hotkey path value & data
  if ComboBox4.ItemIndex = 3 then
  begin
    if ListView1.Items[ListView1.ItemIndex].SubItems[1] = '' then
    begin
      for i := 0 to ListView1.Items.Count - 1 do
        ComboBox1.Text := ListView1.Items[i].Caption + ListView1.Items
          [ListView1.ItemIndex].SubItems[0] + ListView1.Items
          [ListView1.ItemIndex].SubItems[1] + '\' + ListView1.Items
          [ListView1.ItemIndex].SubItems[2];
      Exit;
    end;

    // jump to hotkey path value & data without value
    for i := 0 to ListView1.Items.Count - 1 do
        ComboBox1.Text := ListView1.Items[i].Caption + ListView1.Items
          [ListView1.ItemIndex].SubItems[0] + '\' + ListView1.Items
          [ListView1.ItemIndex].SubItems[1] + '\' + ListView1.Items
          [ListView1.ItemIndex].SubItems[2];
  end;

  begin
    Reg := TRegistry.Create;
    // reg.RootKey
    try
      case RadioGroup3.ItemIndex of
        0: Reg.RootKey := HKEY_CLASSES_ROOT;
        1: Reg.RootKey := HKEY_CURRENT_USER;
        2: Reg.RootKey := HKEY_LOCAL_MACHINE;
        3: Reg.RootKey := HKEY_USERS;
        4: Reg.RootKey := HKEY_CURRENT_CONFIG;
      end;

      Reg.OpenKey(ListView1.Items[ListView1.ItemIndex].SubItems[0], false);
      Reg.GetKeyNames(ListBox3.Items);
      Reg.GetValueNames(ListBox2.Items);
    finally
      Reg.Free
    end;
  end;

end;

procedure TForm1.Jump1Click(Sender: TObject);
begin
  ComboBox1.Text := ListView1.Selected.Caption + ListView1.Items
    [ListView1.ItemIndex].SubItems[0];
  BitBtn4.Click;
end;

procedure TForm1.StartSniffer1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
  const Rect: TRect);
begin
  StatusBar.Canvas.FillRect(Rect);

  if Panel.Index = 0 then
  ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top-1, 0);

  if Panel.Index = 2 then
  ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top-1, 1);

  if Panel.Index = 4 then
  ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top-1, 2);

  if BitBtn1.Enabled = false then
  begin
    if Panel.Index = 6 then
    ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top-1, 4);
  end;

  if BitBtn1.Enabled = true then
  begin
    if Panel.Index = 6 then
    ImageList1.Draw(StatusBar.Canvas, Rect.Left, Rect.Top-1, 3);
  end;
end;

procedure TForm1.StopSniffer1Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TForm1.Normal1Click(Sender: TObject);
begin
  ComboBox3.ItemIndex := 0;
  ComboBox3.OnChange(Sender);
end;

procedure TForm1.Deep1Click(Sender: TObject);
begin
  ComboBox3.ItemIndex := 1;
  ComboBox3.OnChange(Sender);
end;

procedure TForm1.Savelog1Click(Sender: TObject);
begin
  BitBtn3.Click;
end;

procedure TForm1.AddKeytoKeyList1Click(Sender: TObject);
begin
  BitBtn5.Click;
end;

procedure TForm1.LoadKeyListfromFile1Click(Sender: TObject);
begin
  L2.Click;
end;

procedure TForm1.GridLines1Click(Sender: TObject);
begin
  if GridLines1.Checked = true then
  begin
    ListView1.GridLines := true;
  end
  else
  begin
    ListView1.GridLines := false;
  end;
end;

procedure TForm1.SearchingKey1Click(Sender: TObject);
begin
  SearchingKey1.Enabled := false;
  try
    form2 := TForm2.Create(self);
    form2.ShowModal;
  finally
  end;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
  BitBtn8.Click;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  if C1.Checked = true then
  begin
    Panel2.Visible := true;
  end
  else
  begin
    Panel2.Visible := false;
  end;
end;

procedure TForm1.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Len: Integer;
  NewText: String;
begin
  NewText := ListBox1.Items[Index];

  with ListBox1.Canvas do
  begin
    FillRect(Rect);
    TextOut(Rect.Left + 1, Rect.Top, NewText);
    Len := TextWidth(NewText) + Rect.Left + 10;
    if Len > flbHorzScrollWidth then
    begin
      flbHorzScrollWidth := Len;
      ListBox1.Perform(LB_SETHORIZONTALEXTENT, flbHorzScrollWidth, 0);
    end;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ListBox1.Perform(LB_SETHORIZONTALEXTENT, 1000, Longint(0));
  ListBox2.Perform(LB_SETHORIZONTALEXTENT, 1000, Longint(0));
  ListBox3.Perform(LB_SETHORIZONTALEXTENT, 1000, Longint(0));
  ListBox1.Perform(WM_VSCROLL, SB_BOTTOM, 0);

  ReadOptions;
  L3.OnClick(Sender);
  CheckBox12.OnClick(Sender);
  C1.OnClick(Sender);

  CheckBox1.OnClick(Sender);
  CheckBox2.OnClick(Sender);
  CheckBox3.OnClick(Sender);

  ListView1.Font.Size := StrToInt(Label28.Caption);
  ListView1.Font.Name := Label6.Caption;
  ListView1.Font.Color := Shape1.Brush.Color;

  ComboBox2.OnChange(Sender);
  ComboBox3.OnChange(Sender);
  ScrollBar1.OnChange(Sender);
  GridLines1.OnClick(Sender);
end;

procedure TForm1.F1Click(Sender: TObject);
begin
  ComboBox3.ItemIndex := 2;
  ComboBox3.OnChange(Sender);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  Keys1.Checked := not Keys1.Checked;

  if CheckBox1.Checked = true then
  begin
    ListView1.Column[1].Width := 320
  end
  else
  begin
    ListView1.Column[1].Width := 0;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Values1.Checked := not Values1.Checked;

  if CheckBox2.Checked = true then
  begin
    ListView1.Column[2].Width := 130
  end
  else
  begin
    ListView1.Column[2].Width := 0;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  Data1.Checked := not Data1.Checked;

  if CheckBox3.Checked = true then
  begin
    ListView1.Column[3].Width := 400
  end
  else
  begin
    ListView1.Column[3].Width := 0;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  HKEYCLASSESROOT1.Checked := not HKEYCLASSESROOT1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  HKEYCURRENTUSER1.Checked := not HKEYCURRENTUSER1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  HKEYLOCALMACHINE1.Checked := not HKEYLOCALMACHINE1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  HKEYDYNDATA1.Checked := not HKEYDYNDATA1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  HKEYUSERS1.Checked := not HKEYUSERS1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
  HKEYPERFORMANCEDATA1.Checked := not HKEYPERFORMANCEDATA1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  HKEYCURRENTCONFIG1.Checked := not HKEYCURRENTCONFIG1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox13Click(Sender: TObject);
begin
  A1.Checked := not A1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.L1Click(Sender: TObject);
begin
  RadioGroup4.ItemIndex := 0;
end;

procedure TForm1.V1Click(Sender: TObject);
begin
  RadioGroup4.ItemIndex := 1;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
  RadioGroup4.ItemIndex := 2;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  L: Integer;
begin
  if ListBox1.Count >= 1 then
  begin
    for L := ListBox1.Count - 1 downto 0 do
    begin
      if ListBox1.Items.Strings[L] = '' then
      begin
        ListBox1.Items.Delete(L);
      end;
    end;
  end;

  Timer1.Enabled := false;
  WriteOptions;
end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin
  if CheckBox12.Checked = true then
  begin
    Timer1.Enabled := true;
    Label3.Enabled := true;
    Label26.Enabled := true;
    T2.Checked := true;
  end
  else
  begin
    Label3.Enabled := false;
    Label26.Enabled := false;
    T2.Checked := false;
    Timer1.Enabled := false;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.S2Click(Sender: TObject);
var
  L: Integer;
begin
  if ListBox1.Count >= 1 then
  begin
    for L := ListBox1.Count - 1 downto 0 do
    begin
      if ListBox1.Items.Strings[L] = '' then
      begin
        ListBox1.Items.Delete(L);
      end;
    end;
  end;
  Beep;
  ListBox1.Items.SaveToFile(ExtractFilePath(Application.ExeName) +
    'Data\Key List\Key List.ini');
  MessageDlg('Key List Saved, Check Key List Folder!', mtInformation,
    [mbOK], 0);

  StatusBar1.SetFocus;
end;

procedure TForm1.L2Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
  begin
    ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
    ComboBox1.Items := ListBox1.Items;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.R1Click(Sender: TObject);
var
  n: Integer;
begin
  for n := ListBox1.Items.Count - 1 downto 0 do
    if ListBox1.Selected[n] then
      ListBox1.Items.Delete(n);
  ComboBox1.Items := ListBox1.Items;
  StatusBar1.SetFocus;
end;

procedure TForm1.C2Click(Sender: TObject);
begin
  ListBox1.Clear;
  ComboBox1.Items := ListBox1.Items;
  StatusBar1.SetFocus;
end;

procedure TForm1.J1Click(Sender: TObject);
begin
  Label2.Caption := ListBox1.Items[ListBox1.ItemIndex];
  JumpToKey(Label2.Caption);
  StatusBar1.SetFocus;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
Var
  SIcon: TIcon;
begin
  StatusBar1.SetFocus;

  // change the search icon in statusbar
  SIcon := TIcon.Create;
  Try
    ImageList1.GetIcon(3, SIcon);
    SendMessage(StatusBar1.Handle, SB_SETICON, 6, SIcon.Handle);

    //StatusBar1.Repaint;
    Application.ProcessMessages;
  Finally
    SIcon.Free;
  End;



  if (CheckBox1.Checked = false) and (CheckBox2.Checked = false) and
     (CheckBox3.Checked = false) then
     begin
      MessageDlg('No keys, values, or data are selected.',mtWarning, [mbOK], 0);
      Exit;
     end;

  if (CheckBox4.Checked = false) and (CheckBox5.Checked = false) and
     (CheckBox6.Checked = false) and (CheckBox7.Checked = false) and
     (CheckBox8.Checked = false) then
     begin
      MessageDlg('No HOTKEY was selected..',mtWarning, [mbOK], 0);
      Exit;
     end;

  ListView1.Clear;
  disable;

  // select the sort type in listview
  case RadioGroup1.ItemIndex of
    0 : ListView1.SortType := stText;
    1 : ListView1.SortType := stData;
    2 : ListView1.SortType := stBoth;
    3 : ListView1.SortType := stNone;
  end;

  InitScan;
end;

// stop the sniffer
procedure TForm1.BitBtn2Click(Sender: TObject);
var
  SIcon: TIcon;
begin
  enable;
  StatusBar1.SetFocus;

  // change the search icon in statusbar
  SIcon := TIcon.Create;
  Try
    ImageList1.GetIcon(4, SIcon);
    SendMessage(StatusBar1.Handle, SB_SETICON, 6, SIcon.Handle);
  Finally
    SIcon.Free;
  End;
end;

// save listview report to file
procedure TForm1.BitBtn3Click(Sender: TObject);
var
  i: Integer;
  S: TStringList;
begin
  if ListView1.Items.Count = 0 then
  begin
    Beep;
    MessageDlg('No Registry Report found!', mtError, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  if SaveDialog1.Execute then
  begin
    S := TStringList.Create;
    try
      for i := 0 to ListView1.Items.Count - 1 do
      begin
        S.Add('HKEY: ' + ListView1.Items.Item[i].Caption);
        S.Add('Key: ' + ListView1.Items.Item[i].SubItems.Strings[0]);
        S.Add('Value: ' + ListView1.Items.Item[i].SubItems.Strings[1]);
        S.Add('Data: ' + ListView1.Items.Item[i].SubItems.Strings[2]);
        S.Add('====================================================================');
        S.Add('');
      end;
      S.SaveToFile(SaveDialog1.FileName + '.txt');
    finally
      S.Free;
    end;
    StatusBar1.SetFocus;
  end;
  StatusBar1.SetFocus;
end;

// add selected registry path to list
procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then
  begin
    Beep;
    ShowMessage('No Key to Add');
    StatusBar1.SetFocus;
    Exit;
  end;
  ListBox1.Items.Add(ComboBox1.Text);
  // Listbox1.Items.Exchange(Listbox1.ItemIndex, Listbox1.ItemIndex-1);
  S2.Click;
  StatusBar1.SetFocus;
end;

// activate jump to reg keys
procedure TForm1.BitBtn4Click(Sender: TObject);
begin

  if ComboBox1.Text = '' then
  begin
    Beep;
    MessageDlg('No Registry Key to Jump!', mtError, [mbOK], 0);
    StatusBar1.SetFocus;
    Exit;
  end;

  JumpToKey(ComboBox1.Text);
  StatusBar1.SetFocus;
end;

// set process priority
procedure TForm1.RadioGroup2Click(Sender: TObject);
const
  Priority: array [0 .. 3] of Integer = (IDLE_PRIORITY_CLASS,
    NORMAL_PRIORITY_CLASS, HIGH_PRIORITY_CLASS, REALTIME_PRIORITY_CLASS);
  PLevels: array [0 .. 3] of byte = (4, 8, 13, 24);
begin
  StatusBar1.SetFocus;
  SetPriorityClass(GetCurrentProcess, Priority[(Sender as TRadioGroup).Tag]);

  case RadioGroup1.ItemIndex of
    0 : begin
          L4.Checked := true;
          RadioGroup2.Tag := 0;
        end;
    1 : begin
          N13.Checked := true;
          RadioGroup2.Tag := 1;
        end;
    2 : begin
          H1.Checked := true;
          RadioGroup2.Tag := 2;
        end;
    3 : begin
          R2.Checked := true;
          RadioGroup2.Tag := 3;
        end;
  end;
end;

// set the report style from listview
procedure TForm1.RadioGroup4Click(Sender: TObject);
begin
  case RadioGroup4.ItemIndex of
    0: ListView1.ViewStyle := vsList;
    1: ListView1.ViewStyle := vsReport;
    2: ListView1.ViewStyle := vsIcon;
  end;
end;

// select report font
procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    ListView1.Font := FontDialog1.Font;
    Label6.Caption := FontDialog1.Font.Name;
    Label28.Caption := IntToStr(FontDialog1.Font.Size);
    Shape1.Brush.Color := FontDialog1.Font.Color;
  end;
  StatusBar1.SetFocus;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  SavelastKeyListbyend1.Checked := not SavelastKeyListbyend1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  SaveLastSearchingKey1.Checked := not SaveLastSearchingKey1.Checked;
  StatusBar1.SetFocus;
end;

// delete registry key
procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  StatusBar1.SetFocus;
  if ComboBox1.Text = '' then
  begin
    Beep;
    MessageDlg('No Registry Key Selected!', mtError, [mbOK], 0);
    Exit;
  end;

  Beep;
  if MessageDlg('ATTENTION !' + #13 + 'This will Delete Key from Registry.. ' +
    #13 + 'Are your Sure to Continue ?', mtWarning, [mbYes, mbNo], 0)
    = mrYes THEN
  BEGIN
    with TRegistry.Create do
    begin
      try
        if ListView1.Selected.Caption = 'HKEY_CLASSES_ROOT' then
        begin
          RootKey := HKEY_CLASSES_ROOT;
        end;
        if ListView1.Selected.Caption = 'HKEY_CURRENT_USER' then
        begin
          RootKey := HKEY_CURRENT_USER;
        end;
        if ListView1.Selected.Caption = 'HKEY_LOCAL_MACHINE' then
        begin
          RootKey := HKEY_LOCAL_MACHINE;
        end;
        if ListView1.Selected.Caption = 'HKEY_USERS' then
        begin
          RootKey := HKEY_USERS;
        end;
        if ListView1.Selected.Caption = 'HKEY_CURRENT_CONFIG' then
        begin
          RootKey := HKEY_CURRENT_CONFIG;
        end;
        begin
          DeleteKey(ListView1.Selected.SubItems[0]);
        end;
      except
        MessageDlg('Registry Key not found!', mtError, [mbOK], 0);
        Free;
      end;
    end;
    Beep;
    MessageDlg('Registry Key deleted!', mtInformation, [mbOK], 0);
  end;
end;

procedure TForm1.D1Click(Sender: TObject);
begin
  BitBtn6.Click;
end;

procedure TForm1.C3Click(Sender: TObject);
begin
  ListView1.Clear;
  ComboBox1.Clear;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Label8.Caption := 'Last : ' + IntToStr(ScrollBar1.Position);
end;

procedure TForm1.HKEYCLASSESROOT1Click(Sender: TObject);
begin
  CheckBox4.Checked := not CheckBox4.Checked;
end;

procedure TForm1.HKEYCURRENTUSER1Click(Sender: TObject);
begin
  CheckBox5.Checked := not CheckBox5.Checked;
end;

procedure TForm1.HKEYLOCALMACHINE1Click(Sender: TObject);
begin
  CheckBox6.Checked := not CheckBox6.Checked;
end;

procedure TForm1.HKEYDYNDATA1Click(Sender: TObject);
begin
  CheckBox7.Checked := not CheckBox7.Checked;
end;

procedure TForm1.Keys1Click(Sender: TObject);
begin
  CheckBox1.Checked := not CheckBox1.Checked;
end;

procedure TForm1.Values1Click(Sender: TObject);
begin
  CheckBox2.Checked := not CheckBox2.Checked;
end;

procedure TForm1.Data1Click(Sender: TObject);
begin
  CheckBox3.Checked := not CheckBox3.Checked;
end;

procedure TForm1.HKEYUSERS1Click(Sender: TObject);
begin
  CheckBox8.Checked := not CheckBox8.Checked;
end;

procedure TForm1.HKEYPERFORMANCEDATA1Click(Sender: TObject);
begin
  CheckBox9.Checked := not CheckBox9.Checked;
end;

procedure TForm1.HKEYCURRENTCONFIG1Click(Sender: TObject);
begin
  CheckBox10.Checked := not CheckBox10.Checked;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then
  begin
    Beep;
    ShowMessage('No Key Selected..');
    StatusBar1.SetFocus;
    Exit;
  end;

  try
    form3 := TForm3.Create(self);
    form3.ShowModal;
  finally
  end;
end;

procedure TForm1.ListView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  if ListView1.Selected <> nil then
  begin
    Label16.Caption := ListView1.Selected.Caption;

    if Label16.Caption = 'HKEY_CLASSES_ROOT' then
    begin
      RadioGroup3.ItemIndex := 0;
    end;

    if Label16.Caption = 'HKEY_CURRENT_USER' then
    begin
      RadioGroup3.ItemIndex := 1;
    end;

    if Label16.Caption = 'HKEY_LOCAL_MACHINE' then
    begin
      RadioGroup3.ItemIndex := 2;
    end;

    if Label16.Caption = 'HKEY_USERS' then
    begin
      RadioGroup3.ItemIndex := 3;
    end;
  end;
end;

procedure TForm1.Windows20001Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 0;
end;

procedure TForm1.WindowsXP1Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 1;
end;

procedure TForm1.WindowsVISTAx861Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 2;
end;

procedure TForm1.WindowsVISTAx862Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 3;
end;

procedure TForm1.Windows7x861Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 4;
end;

procedure TForm1.Windows7x862Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 5;
end;

procedure TForm1.Windows81x861Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 6;
end;

procedure TForm1.Windows81x862Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 7;
end;

procedure TForm1.Windows10x861Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 8;
end;

procedure TForm1.Windows10x862Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 9;
end;

procedure TForm1.Windows11x861Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 10;
end;

procedure TForm1.Windows11x862Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 11;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  pmc: PPROCESS_MEMORY_COUNTERS;
  cb: Integer;
begin
  cb := SizeOf(_PROCESS_MEMORY_COUNTERS);
  GetMem(pmc, cb);
  pmc^.cb := cb;
  if GetProcessMemoryInfo(GetCurrentProcess(), pmc, cb) then
  begin
    Label26.Caption := IntToStr(pmc^.WorkingSetSize div 10000) + ' Kb'
  end
  else
  begin
    Label26.Caption := 'Failed!';
  end;
  FreeMem(pmc);

  DSiTrimWorkingSet;
end;

procedure TForm1.T2Click(Sender: TObject);
begin
  CheckBox12.Checked := not CheckBox12.Checked;
end;

procedure TForm1.E2Click(Sender: TObject);
var
  LReg: TRegistry;
begin
  if not SetTokenPrivilege('SeBackupPrivilege', true) then
    Exit;

  SaveDialog2.FileName := ListView1.Items[ListView1.ItemIndex].SubItems
    [0] + '.reg';

  if SaveDialog2.Execute then
  begin

    LReg := TRegistry.Create(KEY_ALL_ACCESS);
    try

      case RadioGroup3.ItemIndex of
        0:
          LReg.RootKey := HKEY_CLASSES_ROOT;
        1:
          LReg.RootKey := HKEY_CURRENT_USER;
        2:
          LReg.RootKey := HKEY_LOCAL_MACHINE;
        3:
          LReg.RootKey := HKEY_USERS;
        4:
          LReg.RootKey := HKEY_CURRENT_CONFIG;
      end;
      // LReg.RootKey := HKEY_CURRENT_USER;
      if not LReg.SaveKey(ListView1.Items[ListView1.ItemIndex].SubItems[0],
        SaveDialog2.FileName) then
        ShowMessage('Could not Save Registry File');
    finally
      LReg.Free;
    end;

  end;
end;

procedure TForm1.CheckBox15Click(Sender: TObject);
begin
  RegistryTokenPrivilegs1.Checked := not RegistryTokenPrivilegs1.Checked;
  StatusBar1.SetFocus;
end;

procedure TForm1.L3Click(Sender: TObject);
begin
  if L3.Checked = true then
  begin
    Panel4.Visible := true;
  end
  else
  begin
    Panel4.Visible := false;
  end;
end;

procedure TForm1.L4Click(Sender: TObject);
begin
  RadioGroup2.ItemIndex := 0;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  RadioGroup2.ItemIndex := 1;
end;

procedure TForm1.H1Click(Sender: TObject);
begin
  RadioGroup2.ItemIndex := 2;
end;

procedure TForm1.R2Click(Sender: TObject);
begin
  RadioGroup2.ItemIndex := 3;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
  CheckBox13.Checked := not CheckBox13.Checked;
end;

procedure TForm1.RegistryTokenPrivilegs1Click(Sender: TObject);
begin
  CheckBox15.Checked := not CheckBox15.Checked;
end;

procedure TForm1.SavelastKeyListbyend1Click(Sender: TObject);
begin
  CheckBox11.Checked := not CheckBox11.Checked;
end;

procedure TForm1.SaveLastSearchingKey1Click(Sender: TObject);
begin
  CheckBox14.Checked := not CheckBox14.Checked;
end;

end.
