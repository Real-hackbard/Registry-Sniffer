unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ShellApi,
  Dialogs, Registry, StdCtrls, ComCtrls, ExtCtrls, Menus, Buttons, IniFiles,
  ImgList, psApi, CommCtrl, System.ImageList, XPMan;

type
  TForm1 = class(TForm)
    sbCount: TStatusBar;
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
    InvertLog1: TMenuItem;
    StayTop1: TMenuItem;
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
    T1: TMenuItem;
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
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox6: TCheckBox;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    CheckBox13: TCheckBox;
    RadioGroup2: TRadioGroup;
    TabSheet4: TTabSheet;
    Bevel5: TBevel;
    Image1: TImage;
    BitBtn6: TBitBtn;
    CheckBox14: TCheckBox;
    D1: TMenuItem;
    Label2: TLabel;
    CheckBox4: TCheckBox;
    Label27: TLabel;
    Label28: TLabel;
    Panel2: TPanel;
    cbKeys: TCheckBox;
    cbValues: TCheckBox;
    cbData: TCheckBox;
    cbHKEY_CLASSES_ROOT: TCheckBox;
    cbHKEY_CURRENT_USER: TCheckBox;
    cbHKEY_LOCAL_MACHINE: TCheckBox;
    cbHKEY_DYN_DATA: TCheckBox;
    cbHKEY_USERS: TCheckBox;
    cbHKEY_PERFORMANCE_DATA: TCheckBox;
    cbHKEY_CURRENT_CONFIG: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    Label26: TLabel;
    lvResult: TListView;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ComboBox4: TComboBox;
    BitBtn7: TBitBtn;
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
    CheckBox7: TCheckBox;
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edValueChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
     procedure JumpToKey(Key: string);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure lvResultClick(Sender: TObject);
    procedure Jump1Click(Sender: TObject);
    procedure StartSniffer1Click(Sender: TObject);
    procedure StopSniffer1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Deep1Click(Sender: TObject);
    procedure InvertLog1Click(Sender: TObject);
    procedure Savelog1Click(Sender: TObject);
    procedure StayTop1Click(Sender: TObject);
    procedure AddKeytoKeyList1Click(Sender: TObject);
    procedure LoadKeyListfromFile1Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure GridLines1Click(Sender: TObject);
    procedure SearchingKey1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure cbKeysClick(Sender: TObject);
    procedure cbValuesClick(Sender: TObject);
    procedure cbDataClick(Sender: TObject);
    procedure cbHKEY_CLASSES_ROOTClick(Sender: TObject);
    procedure cbHKEY_CURRENT_USERClick(Sender: TObject);
    procedure cbHKEY_LOCAL_MACHINEClick(Sender: TObject);
    procedure cbHKEY_DYN_DATAClick(Sender: TObject);
    procedure cbHKEY_USERSClick(Sender: TObject);
    procedure cbHKEY_PERFORMANCE_DATAClick(Sender: TObject);
    procedure cbHKEY_CURRENT_CONFIGClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
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
    procedure CheckBox13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
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
    procedure lvResultMouseDown(Sender: TObject; Button: TMouseButton;
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
    procedure CheckBox7Click(Sender: TObject);
    procedure L3Click(Sender: TObject);
    procedure L4Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure RegistryTokenPrivilegs1Click(Sender: TObject);
    procedure SavelastKeyListbyend1Click(Sender: TObject);
    procedure SaveLastSearchingKey1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
   FColorKey: TCOLOR;
    FReg: TRegistry;
    FTotal, FLast: Integer;
    flbHorzScrollWidth: Integer;
    //FEnable: Boolean;
    procedure Scan(Key: String);
    procedure InitScan;
    procedure IsValidData(const AKey, AValue, AData: String);
    procedure disable;
    procedure enable;
    public
    { Public-Deklarationen }
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form1: TForm1;
  TIF : TIniFile;
  key : integer = 0 ;
  value : integer = 0 ;
  data : integer = 0 ;

type
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

Function CheckTokenMembership(TokenHandle: THandle; SIdToCheck: PSID; var IsMember: Boolean): Boolean; StdCall; External AdvApi32;

implementation

uses Unit2, Unit3;

{$R *.dfm}
{$R 'admin.res'}
function MainDir : string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

procedure TForm1.WriteOptions;    // ################### Options Write
var OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(MainDir + 'Data\Options\')
   then ForceDirectories(MainDir + 'Data\Options\');

   TIF := TIniFile.Create(MainDir + 'Data\Options\Options.ini');
   with TIF do
   begin
   WriteBool(OPT,'StayTop',CheckBox1.Checked);
   WriteBool(OPT,'Trz',CheckBox2.Checked);
   WriteBool(OPT,'Invert',CheckBox3.Checked);
   WriteBool(OPT,'Grids',CheckBox5.Checked);
   WriteBool(OPT,'AdminPrivilegs',CheckBox6.Checked);
   WriteBool(OPT,'ListReport',CheckBox8.Checked);
   WriteBool(OPT,'VSReport',CheckBox9.Checked);
   WriteBool(OPT,'BlockReport',CheckBox10.Checked);
   WriteString(OPT,'FontName',Label6.Caption);
   WriteString(OPT,'FontSize',Label28.Caption);
   WriteInteger(OPT,'FontColor',Shape1.Brush.Color);
   WriteBool(OPT,'KeyList',CheckBox11.Checked);
   WriteString(OPT,'LastSearchKeyString',edValue.Text);
   WriteBool(OPT,'RAMScan',CheckBox12.Checked);
   WriteInteger(OPT,'SortType',RadioGroup1.ItemIndex);
   WriteBool(OPT,'Hide',CheckBox13.Checked);
   WriteInteger(OPT,'ProcessPrio',RadioGroup2.ItemIndex);
   WriteBool(OPT,'LastSearchKey',CheckBox14.Checked);
   WriteInteger(OPT,'Jump',ComboBox4.ItemIndex);
   WriteBool(OPT,'Control',C1.Checked);
   WriteInteger(OPT,'Scan',ComboBox3.ItemIndex);
   WriteInteger(OPT,'OS',ComboBox2.ItemIndex);
   WriteBool(OPT,'RegToken',CheckBox7.Checked);
   WriteBool(OPT,'List',L3.Checked);

   WriteBool(OPT,'SniffKeys',cbKeys.Checked);
   WriteBool(OPT,'SniffValues',cbValues.Checked);
   WriteBool(OPT,'SniffDatas',cbData.Checked);
   WriteBool(OPT,'SniffcbHKEY_CLASSES_ROOT',cbHKEY_CLASSES_ROOT.Checked);
   WriteBool(OPT,'SniffcbHKEY_CURRENT_USER',cbHKEY_CURRENT_USER.Checked);
   WriteBool(OPT,'SniffcbHKEY_LOCAL_MACHINE',cbHKEY_LOCAL_MACHINE.Checked);
   WriteBool(OPT,'SniffcbHKEY_DYN_DATA',cbHKEY_DYN_DATA.Checked);
   WriteBool(OPT,'SniffcbHKEY_USERS',cbHKEY_USERS.Checked);
   WriteBool(OPT,'SniffcbHKEY_PERFORMANCE_DATA',cbHKEY_PERFORMANCE_DATA.Checked);
   WriteBool(OPT,'SniffcbHKEY_CURRENT_CONFIG',cbHKEY_CURRENT_CONFIG.Checked);

   WriteInteger(OPT,'Last',Scrollbar1.Position);

   Free;
   end;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var OPT:string;
begin
  OPT := 'Options';
  if FileExists(MainDir + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(MainDir + 'Data\Options\Options.ini');
  with TIF do
  begin
  CheckBox1.Checked:=ReadBool(OPT,'StayTop',CheckBox1.Checked);
  CheckBox2.Checked:=ReadBool(OPT,'Trz',CheckBox2.Checked);
  CheckBox3.Checked:=ReadBool(OPT,'Invert',CheckBox3.Checked);
  CheckBox5.Checked:=ReadBool(OPT,'Grids',CheckBox5.Checked);
  CheckBox6.Checked:=ReadBool(OPT,'AdminPrivilegs',CheckBox6.Checked);
  CheckBox8.Checked:=ReadBool(OPT,'ListReport',CheckBox8.Checked);
  CheckBox9.Checked:=ReadBool(OPT,'VSReport',CheckBox9.Checked);
  CheckBox10.Checked:=ReadBool(OPT,'BlockReport',CheckBox10.Checked);
  Label6.Caption:=ReadString(OPT,'FontName',Label6.Caption);
  Label28.Caption:=ReadString(OPT,'FontSize',Label28.Caption);
  Shape1.Brush.Color:=ReadInteger(OPT,'FontColor',Shape1.Brush.Color);
  CheckBox11.Checked:=ReadBool(OPT,'KeyList',CheckBox11.Checked);
  ComboBox4.ItemIndex:=ReadInteger(OPT,'Jump',ComboBox4.ItemIndex);

  C1.Checked:=ReadBool(OPT,'Control',C1.Checked);
  CheckBox14.Checked:=ReadBool(OPT,'LastSearchKey',CheckBox14.Checked);

  if CheckBox14.Checked = true then begin
  edValue.Text:=ReadString(OPT,'LastSearchKeyString',edValue.Text); end;

  CheckBox12.Checked:=ReadBool(OPT,'RAMScan',CheckBox12.Checked);
  RadioGroup1.ItemIndex:=ReadInteger(OPT,'SortType',RadioGroup1.ItemIndex);
  CheckBox13.Checked:=ReadBool(OPT,'Hide',CheckBox13.Checked);
  RadioGroup2.ItemIndex:=ReadInteger(OPT,'ProcessPrio',RadioGroup2.ItemIndex);
  ComboBox3.ItemIndex:=ReadInteger(OPT,'Scan',ComboBox3.ItemIndex);
  ComboBox2.ItemIndex:=ReadInteger(OPT,'OS',ComboBox2.ItemIndex);
  CheckBox7.Checked:=ReadBool(OPT,'RegToken',CheckBox7.Checked);
  L3.Checked:=ReadBool(OPT,'List',L3.Checked);

  cbKeys.Checked:=ReadBool(OPT,'SniffKeys',cbKeys.Checked);
  cbValues.Checked:=ReadBool(OPT,'SniffValues',cbValues.Checked);
  cbData.Checked:=ReadBool(OPT,'SniffDatas',cbData.Checked);
  cbHKEY_CLASSES_ROOT.Checked:=ReadBool(OPT,'SniffcbHKEY_CLASSES_ROOT',cbHKEY_CLASSES_ROOT.Checked);
  cbHKEY_CURRENT_USER.Checked:=ReadBool(OPT,'SniffcbHKEY_CURRENT_USER',cbHKEY_CURRENT_USER.Checked);
  cbHKEY_LOCAL_MACHINE.Checked:=ReadBool(OPT,'SniffcbHKEY_LOCAL_MACHINE',cbHKEY_LOCAL_MACHINE.Checked);
  cbHKEY_DYN_DATA.Checked:=ReadBool(OPT,'SniffcbHKEY_DYN_DATA',cbHKEY_DYN_DATA.Checked);
  cbHKEY_USERS.Checked:=ReadBool(OPT,'SniffcbHKEY_USERS',cbHKEY_USERS.Checked);
  cbHKEY_PERFORMANCE_DATA.Checked:=ReadBool(OPT,'SniffcbHKEY_PERFORMANCE_DATA',cbHKEY_PERFORMANCE_DATA.Checked);
  cbHKEY_CURRENT_CONFIG.Checked:=ReadBool(OPT,'SniffcbHKEY_CURRENT_CONFIG',cbHKEY_CURRENT_CONFIG.Checked);

  Scrollbar1.Position:=ReadInteger(OPT,'Last',Scrollbar1.Position);

  Free;
  end;
  end;
end;

procedure TForm1.disable;
begin
  if CheckBox12.Checked = true then begin
  Timer1.Enabled := true; Label3.Enabled := true; Label26.Enabled := true;
  end;

  CheckBox4.Checked := false;
  SearchingKey1.Enabled := false;
  StartSniffer1.Enabled := false;
  BitBtn3.Enabled := false; BitBtn4.Enabled := false; BitBtn5.Enabled := false;

  cbKeys.Enabled := false; cbValues.Enabled := false; cbData.Enabled := false;
  cbHKEY_CLASSES_ROOT.Enabled := false; cbHKEY_CURRENT_USER.Enabled := false;
  cbHKEY_LOCAL_MACHINE.Enabled := false; cbHKEY_DYN_DATA.Enabled := false;
  cbHKEY_USERS.Enabled := false; cbHKEY_PERFORMANCE_DATA.Enabled := false;
  cbHKEY_CURRENT_CONFIG.Enabled := false;
  Label1.Enabled := false;  Label4.Enabled := false;
  ComboBox2.Enabled := false; ComboBox3.Enabled := false;
  ComboBox1.Enabled := false; ComboBox4.Enabled := false;
  D1.Enabled := false; Jump1.Enabled := false;  Savelog1.Enabled := false;
  C3.Enabled := false; S3.Enabled := false; E1.Enabled := false;
  O1.Enabled := false; E2.Enabled := false;

  LoadKeyListfromFile1.Enabled := false; AddKeytoKeyList1.Enabled := false;
  BitBtn7.Enabled := false;
end;

procedure TForm1.enable;
begin
  Timer1.Enabled := false;
  CheckBox4.Checked := true;

  cbKeys.Enabled := true; cbValues.Enabled := true; cbData.Enabled := true;
  cbHKEY_CLASSES_ROOT.Enabled := true; cbHKEY_CURRENT_USER.Enabled := true;
  cbHKEY_LOCAL_MACHINE.Enabled := true; cbHKEY_DYN_DATA.Enabled := true;
  cbHKEY_USERS.Enabled := true; cbHKEY_PERFORMANCE_DATA.Enabled := true;
  cbHKEY_CURRENT_CONFIG.Enabled := true;
  Label1.Enabled := true;  Label4.Enabled := true;
  ComboBox2.Enabled := true; ComboBox3.Enabled := true;
  ComboBox1.Enabled := true; ComboBox4.Enabled := true;
  D1.Enabled := true; Jump1.Enabled := true; Savelog1.Enabled := true;
  C3.Enabled := true; S3.Enabled := true; E1.Enabled := true;
  O1.Enabled := true; E2.Enabled := true;

  LoadKeyListfromFile1.Enabled := true; AddKeytoKeyList1.Enabled := true;
  BitBtn7.Enabled := true;
  BitBtn3.Enabled := true; BitBtn4.Enabled := true; BitBtn5.Enabled := true;
end;

function IsWindowsAdministrator: Boolean;
// Returns TRUE if the user has administrator priveleges
// Returns a boolean indicating whether or not user has admin
// privileges. Call only when running under NT. Win9.x will return false!
var
  hAccessToken       : tHandle;
  ptgGroups          : pTokenGroups;
  dwInfoBufferSize   : DWORD;
  psidAdministrators : PSID;
  int                : integer;            // counter
  blnResult          : boolean;            // return flag

const
  SECURITY_NT_AUTHORITY: SID_IDENTIFIER_AUTHORITY =
    (Value: (0,0,0,0,0,5)); // ntifs
  SECURITY_BUILTIN_DOMAIN_RID: DWORD = $00000020;
  DOMAIN_ALIAS_RID_ADMINS: DWORD = $00000220;
  DOMAIN_ALIAS_RID_USERS : DWORD = $00000221;
  DOMAIN_ALIAS_RID_GUESTS: DWORD = $00000222;
  DOMAIN_ALIAS_RID_POWER_: DWORD = $00000223;

begin
  Result := False;
  blnResult := OpenThreadToken( GetCurrentThread, TOKEN_QUERY,
                                True, hAccessToken );
  if ( not blnResult ) then
  begin
    if GetLastError = ERROR_NO_TOKEN then
    blnResult := OpenProcessToken( GetCurrentProcess,
                       TOKEN_QUERY, hAccessToken );
  end;

  ptgGroups := nil;

  if ( blnResult ) then
  try

    GetMem(ptgGroups, 1024);
    blnResult := GetTokenInformation( hAccessToken, TokenGroups,
                                      ptgGroups, 1024,
                                      dwInfoBufferSize );
    CloseHandle( hAccessToken );

    if ( blnResult ) then
    begin

      AllocateAndInitializeSid( SECURITY_NT_AUTHORITY, 2,
                                SECURITY_BUILTIN_DOMAIN_RID,
                                DOMAIN_ALIAS_RID_ADMINS,
                    0, 0, 0, 0, 0, 0,
                    psidAdministrators );
      {$IFOPT R+}
        {$DEFINE RMINUS}
        {$R-}
      {$ENDIF}
      for int := 0 to ptgGroups.GroupCount - 1 do

        if EqualSid( psidAdministrators,
                     ptgGroups.Groups[ int ].Sid ) then
        begin
          Result := True;
          Break;
        end;
      {$IFDEF IMINUS}
        {$R-}
        {$UNDEF IMINUS}
      {$ENDIF}

      FreeSid( psidAdministrators );
    end;

  finally
    If ptgGroups <> nil then
      FreeMem( ptgGroups );
  end;
end;

function SetTokenPrivilege(const APrivilege: string; const AEnable: Boolean): Boolean;
var
  LToken: THandle;
  LTokenPriv: TOKEN_PRIVILEGES;
  LPrevTokenPriv: TOKEN_PRIVILEGES;
  LLength: Cardinal;
  LErrval: Cardinal;
begin
  Result := False;
  if OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, LToken) then
  try
    if LookupPrivilegeValue(nil, PChar(APrivilege), LTokenPriv.Privileges[0].Luid) then
    begin
      LTokenPriv.PrivilegeCount := 1;
      case AEnable of
        True: LTokenPriv.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
        False: LTokenPriv.Privileges[0].Attributes := 0;
      end;
      LPrevTokenPriv := LTokenPriv;
      Result := AdjustTokenPrivileges(LToken, False, LTokenPriv, SizeOf(LPrevTokenPriv), LPrevTokenPriv, LLength);
    end;
  finally
    CloseHandle(LToken);
  end;
end;

procedure DSiTrimWorkingSet;
var
  hProcess: THandle;
begin
  hProcess := OpenProcess(PROCESS_SET_QUOTA, false, GetCurrentProcessId);
  try
    SetProcessWorkingSetSize(hProcess, $FFFFFFFF, $FFFFFFFF);
  finally CloseHandle(hProcess); end;
end;

function ErmittleWindows10Build: String;
var  Reg: TRegistry;
begin
  Result := ''; try
  Reg := TRegistry.Create(KEY_READ);
    try Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Windows NT\CurrentVersion') then
      begin
        //Form1.Label10.Caption := Reg.ReadString('ProductName');
        //Form1.Label10.Caption := Reg.ReadString('EditionID');
        Form1.Label10.Caption := 'Display Version : ' +Reg.ReadString('DisplayVersion');
        Form1.Label11.Caption := 'Current Version : ' + Reg.ReadString('CurrentVersion');
        Form1.Label12.Caption := '      ReleaseId : ' + Reg.ReadString('ReleaseId');
        Form1.Label13.Caption := '  Current Build : ' + Reg.ReadString('CurrentBuild');
        Reg.CloseKey;
      end;
    finally Reg.Free; end; except end;
end;

function IsWindows64: Boolean;
type
  TIsWow64Process = function(
    Handle: Windows.THandle; var Res: Windows.BOOL
  ): Windows.BOOL; stdcall;
var
  IsWow64Result: Windows.BOOL;
  IsWow64Process: TIsWow64Process;
begin
  IsWow64Process := Windows.GetProcAddress(
    Windows.GetModuleHandle('kernel32'), 'IsWow64Process' 
  );
  if Assigned(IsWow64Process) then
  begin
    if not IsWow64Process(
      Windows.GetCurrentProcess, IsWow64Result
    ) then
      raise SysUtils.Exception.Create('IsWindows64: bad process handle');
    Result := IsWow64Result;
  end
  else
    Result := False;
end;

procedure GetDosOutput(CommandLine, WorkDir: string; aMemo: TMemo);
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  Handle: Boolean;
begin
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE);
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            AMemo.Text := AMemo.Text + String(Buffer);
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

function GlobalMemoryStatusEx(var lpBuffer: TMemoryStatusEx): BOOL; stdcall;
type
  TFNGlobalMemoryStatusEx = function(var msx: TMemoryStatusEx): BOOL; stdcall;
var
  FNGlobalMemoryStatusEx: TFNGlobalMemoryStatusEx;
begin
  FNGlobalMemoryStatusEx := TFNGlobalMemoryStatusEx(
    GetProcAddress(GetModuleHandle(kernel32), 'GlobalMemoryStatusEx'));
  if not Assigned(FNGlobalMemoryStatusEx) then
  begin
    SetLastError(ERROR_CALL_NOT_IMPLEMENTED);
    Result := False;
  end
  else
    Result := FNGlobalMemoryStatusEx(lpBuffer);
end;

procedure TForm1.JumpToKey(Key: string);
var i, n: Integer; hWin: HWND; ExecInfo: ShellExecuteInfoA;
begin
  hWin := FindWindowA(PAnsiChar('RegEdit_RegEdit'), nil);  if hWin = 0 then
  begin FillChar(ExecInfo, 60, #0);
    with ExecInfo do begin cbSize := 60;
      fMask  := SEE_MASK_NOCLOSEPROCESS; lpVerb := PAnsiChar('open');
      lpFile := PAnsiChar('regedit.exe'); nShow  := 1;
    end; ShellExecuteExA(@ExecInfo);
    WaitForInputIdle(ExecInfo.hProcess, 200);
    hWin := FindWindowA(PAnsiChar('RegEdit_RegEdit'), nil);
  end; ShowWindow(hWin, SW_SHOWNORMAL);
  hWin := FindWindowExA(hWin, 0, PAnsiChar('SysTreeView32'), nil);
   SetForegroundWindow(hWin);
  i := 30; repeat SendMessageA(hWin, WM_KEYDOWN, VK_LEFT, 0);
    Dec(i); until i = 0; Sleep(500);
  SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0); Sleep(500); i := 1;
  n := Length(Key); repeat if Key[i] = '\' then begin
      SendMessageA(hWin, WM_KEYDOWN, VK_RIGHT, 0); Sleep(500); end else
    SendMessageA(hWin, WM_CHAR, Integer(Key[i]), 0);
    i := i + 1; until i = n;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Panel1.DoubleBuffered := true;

   if not DirectoryExists(MainDir + 'Data\Key List\')
   then ForceDirectories(MainDir + 'Data\Key List\');

   if FileExists(MainDir + 'Data\Driver\ext-ms-win-kernel32-registry-l1-1-0.dll') then begin
   end else begin ShowMessage('ext-ms-win-kernel32-registry-l1-1-0.dll not found Application Terminate');
   Application.Terminate; end;

   if FileExists(MainDir + 'Data\Driver\registry.dll') then begin
   end else begin ShowMessage('registry.dll not found Application Terminate');
   Application.Terminate; end;

   if FileExists(MainDir + 'Data\Driver\user32.dll') then begin
     end else begin ShowMessage('user32.dll not found !');end;

   if FileExists(MainDir + 'Data\Driver\RegCtrl_32.dll') then begin
   end else begin ShowMessage('RegCtrl_32.dll not found Application Terminate');
   Application.Terminate; end;

   if FileExists(MainDir + 'Data\Driver\RegCtrl_64.dll') then begin
   end else begin ShowMessage('RegCtrl_64.dll not found Application Terminate');
   Application.Terminate; end;

   if FileExists(MainDir + 'Data\Key List\Key List.ini') then begin
   ListBox1.Items.LoadFromFile(MainDir + 'Data\Key List\Key List.ini');
     end else begin ShowMessage('Key List.ini not found !');end;

   if FileExists(MainDir + 'Data\Driver\admin.dll') then begin
   end else begin ShowMessage('admin.dll not found Application Terminate');
   Application.Terminate; end;

   if FileExists(MainDir + 'Data\Driver\registry.dll') then begin
   end else begin ShowMessage('registry.dll not found Application Terminate');
   Application.Terminate; end;

   if FileExists(MainDir + 'Data\Driver\Token.dll') then begin
   end else begin ShowMessage('Token.dll not found Application Terminate');
   Application.Terminate; end;

   Memo1.Clear;
   GetDosOutput('wmic os get caption', 'C:', Memo1);

   Application.HintPause := 0;
   Application.HintHidePause := 50000;

   sbCount.DoubleBuffered := true;
   lvResult.DoubleBuffered := true;
   Panel2.DoubleBuffered := true;

   ComboBox1.Items := ListBox1.Items;
   FReg := TRegistry.Create;

   Label9.Caption := '             OS : ' + Memo1.Lines[1];

   if IsWindows64 = true then begin
   Label9.Caption := Label9.Caption + '- x64 bit';
   end else begin
   Label9.Caption := Label9.Caption + '- x32 bit';
   end;
   ErmittleWindows10Build;


   if IsWindowsAdministrator = true then begin
    Label15.Caption := 'You have Administrative Rights.'
    end else begin
    Label15.Caption := 'You have not Administrative Rights.';
    end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Timer1.Enabled := false;
  FReg.Free;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  lvResult.Columns.BeginUpdate;
  lvResult.Repaint;
  lvResult.Columns.EndUpdate;
end;

procedure TForm1.Scan(Key: String);
var S : TStringList; i : Integer;
begin
  if CheckBox4.Checked = true  then  begin Exit; end;

  if FReg.OpenKeyReadOnly(Key) then
  try
    S := TStringList.Create;
      try
      FReg.GetValueNames(S);
      for I := 0 to S.Count - 1 do begin
           IsValidData(Key, S.Strings[I], '');

           if CheckBox4.Checked = true  then  begin Exit; end;

        if FReg.GetDataType(S.Strings[I]) in [rdString, rdExpandString] then
          IsValidData(Key, S.Strings[I], FReg.ReadString(S.Strings[I]));

          if CheckBox4.Checked = true  then  begin Exit; end;
      end;
      lvResult.Perform(WM_VSCROLL, SB_BOTTOM, 0);
      S.Clear;
      FReg.GetKeyNames(S);
      for I := 0 to S.Count - 1 do
       if S.Strings[I] <> '' then Scan(Key + '\' + S.Strings[I]);

       if CheckBox4.Checked = true  then  begin Exit; end;
       Application.ProcessMessages;
    finally
    S.Free;
    end;
    finally
    FReg.CloseKey;
    end;
end;

procedure TForm1.InitScan;
begin
  FTotal := 0;  FLast := 0; BitBtn1.Enabled := False;
  edValue.Enabled := False;

  try
   if cbHKEY_CLASSES_ROOT.Checked then
    begin
      FReg.RootKey := HKEY_CLASSES_ROOT;
      sbCount.Panels.Items[5].Text := 'HKEY_CLASSES_ROOT'; Scan('');
    end;

    if cbHKEY_CURRENT_USER.Checked then
    begin
      FReg.RootKey := HKEY_CURRENT_USER;
      sbCount.Panels.Items[5].Text := 'HKEY_CURRENT_USER'; Scan('');
    end;

    if cbHKEY_LOCAL_MACHINE.Checked then
    begin
      FReg.RootKey := HKEY_LOCAL_MACHINE;
      sbCount.Panels.Items[5].Text := 'HKEY_LOCAL_MACHINE'; Scan('');
    end;

    if cbHKEY_USERS.Checked then
    begin
      FReg.RootKey := HKEY_USERS;
      sbCount.Panels.Items[5].Text := 'HKEY_USERS'; Scan('');
    end;

    if cbHKEY_PERFORMANCE_DATA.Checked then
    begin
      FReg.RootKey := HKEY_PERFORMANCE_DATA;
      sbCount.Panels.Items[5].Text := 'HKEY_PERFORMANCE_DATA'; Scan('');
    end;

    if cbHKEY_CURRENT_CONFIG.Checked then
    begin
      FReg.RootKey := HKEY_CURRENT_CONFIG;
      sbCount.Panels.Items[5].Text := 'HKEY_CURRENT_CONFIG'; Scan('');
    end;

    if cbHKEY_PERFORMANCE_DATA.Checked then
    begin
      FReg.RootKey := HKEY_DYN_DATA;
      sbCount.Panels.Items[5].Text := 'HKEY_DYN_DATA'; Scan('');
    end;
  finally
    if CheckBox4.Checked = true then begin
    sbCount.Panels[7].Text := 'SCAN STOP !';
    sbCount.Panels[5].Text := 'Access finish.';
    end;

    sbCount.Panels.Items[7].Text := '';
    sbCount.Panels.Items[7].Text := 'SCAN STOP !';
    sbCount.Panels.Items[5].Text := 'Access finish.';


    BitBtn3.Enabled := lvResult.Items.Count > 0;
    BitBtn1.Enabled := True;
    StartSniffer1.Enabled := true;
    SearchingKey1.Enabled := true;
    edValue.Enabled := True;
    enable;
  end;
end;

procedure TForm1.IsValidData(const AKey, AValue, AData: String);
const
  TOTAL = 'Total Keys: ';
  FIND = 'Find Keys: ';
var
  TmpStr: String;
begin
  Inc(FTotal);
  if FTotal - FLast > ScrollBar1.Position then
  begin
    FLast := FTotal;
    sbCount.Panels.Items[1].Text := TOTAL + IntToStr(FTotal);
    sbCount.Panels.Items[3].Text := FIND + IntToStr(lvResult.Items.Count);
    Application.ProcessMessages;

    TmpStr := AKey;
    if AValue <> '' then
      TmpStr := TmpStr + ' {' + AValue + '}';
    sbCount.Panels.Items[7].Text := TmpStr;
    Application.ProcessMessages;
  end;

  if AKey <> '' then
    if cbKeys.Checked then
      if Pos(edValue.Text, AKey) > 0 then
        with lvResult.Items.Add do
        begin
          Caption := sbCount.Panels.Items[5].Text;
          SubItems.Add(AKey);
          SubItems.Add('');
          SubItems.Add('');
        end;

  if AValue <> '' then
    if cbValues.Checked then
      if Pos(edValue.Text, AValue) > 0 then
        with lvResult.Items.Add do
        begin
          Caption := sbCount.Panels.Items[5].Text;
          SubItems.Add(AKey);
          SubItems.Add(AValue);
          SubItems.Add('');
        end;
        
  if AData <> '' then
    if cbData.Checked then
      if Pos(edValue.Text, AData) > 0 then
        with lvResult.Items.Add do
        begin
          Caption := sbCount.Panels.Items[5].Text;
          SubItems.Add(AKey);
          SubItems.Add(AValue);
          SubItems.Add(AData);
        end;
end;

procedure TForm1.edValueChange(Sender: TObject);
begin
  BitBtn1.Enabled := edValue.Text <> '';
  BitBtn2.Enabled := edValue.Text <> '';
  StartSniffer1.Enabled := edValue.Text <> '';
  StopSniffer1.Enabled := edValue.Text <> '';
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked = true then begin
    StayTop1.Checked := true;
    SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
    SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
    end else begin
    StayTop1.Checked := false;
    SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
    SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); end;
    sbCount.SetFocus;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
   if CheckBox3.Checked = true then begin
   lvResult.Color := clBlack; lvResult.Font.Color := clYellow;
   InvertLog1.Checked := true; Shape1.Brush.Color := clYellow;
   end else begin
   lvResult.Color := clWhite; lvResult.Font.Color := clBlack;
   InvertLog1.Checked := false; Shape1.Brush.Color := clBlack; end;
   sbCount.SetFocus;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then begin
  T1.Checked := true;
   SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
  SetLayeredWindowAttributes(Handle, ColorToRGB(FColorKey), 210, LWA_ALPHA);
  end else begin
  T1.Checked := false;
   SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
  SetLayeredWindowAttributes(Handle, ColorToRGB(FColorKey), 255, LWA_ALPHA);
  end; sbCount.SetFocus;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
   if ComboBox3.ItemIndex = 0 then begin
   cbKeys.Checked := true; cbValues.Checked := true; cbData.Checked := true;
   cbHKEY_CLASSES_ROOT.Checked := true; cbHKEY_CURRENT_USER.Checked := true;
   cbHKEY_LOCAL_MACHINE.Checked := true; cbHKEY_USERS.Checked := true;
   cbHKEY_PERFORMANCE_DATA.Checked := false;
   cbHKEY_DYN_DATA.Checked := false;
   cbHKEY_CURRENT_CONFIG.Checked := true;
   Normal1.Checked := true; Deep1.Checked := false; F1.Checked := false;
   Normal1.Checked := true;
   end;

   if ComboBox3.ItemIndex = 1 then begin
   cbKeys.Checked := true; cbValues.Checked := true; cbData.Checked := true;
   cbHKEY_CLASSES_ROOT.Checked := true; cbHKEY_CURRENT_USER.Checked := true;
   cbHKEY_LOCAL_MACHINE.Checked := true; cbHKEY_USERS.Checked := true;
   cbHKEY_PERFORMANCE_DATA.Checked := true;
   cbHKEY_DYN_DATA.Checked := true; cbHKEY_CURRENT_CONFIG.Checked := true;
   Normal1.Checked := false; Deep1.Checked := true; F1.Checked := false;
   Deep1.Checked := true;
   end;

   if ComboBox3.ItemIndex = 2 then begin
   cbKeys.Checked := true; cbValues.Checked := true; cbData.Checked := true;
   cbHKEY_CLASSES_ROOT.Checked := true; cbHKEY_CURRENT_USER.Checked := true;
   cbHKEY_LOCAL_MACHINE.Checked := false; cbHKEY_USERS.Checked := true;
   cbHKEY_PERFORMANCE_DATA.Checked := false;
   cbHKEY_DYN_DATA.Checked := false; cbHKEY_CURRENT_CONFIG.Checked := false;
   Normal1.Checked := false; Deep1.Checked := false; F1.Checked := true;
   F1.Checked := true;
   end;
   sbCount.SetFocus;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
   case ComboBox2.ItemIndex of
   0 : Windows20001.Checked := true;
   1 : WindowsXP1.Checked := true;
   2 : WindowsVISTAx861.Checked := true;
   3 : WindowsVISTAx862.Checked := true;
   4 : Windows7x861.Checked := true;
   5 : Windows7x862.Checked := true;
   6 : Windows81x861.Checked := true;
   7 : Windows81x862.Checked := true;
   8 : Windows10x861.Checked := true;
   9 : Windows10x862.Checked := true;
   10 : Windows11x861.Checked := true;
   11 : Windows11x862.Checked := true;
   end;

   sbCount.SetFocus;
end;

procedure TForm1.lvResultClick(Sender: TObject);
var  i : integer;
     reg : TRegistry;
begin
  i:= lvResult.ItemIndex;
    if i = -1 then
       Begin
       //s:=lvResult.Selected.Caption;
       //ShowMessage(s)
       Exit;
       End;

  if lvResult.Items.Count = 0 then Exit;

  if ComboBox4.ItemIndex = 0 then begin
  for i := 0 to lvResult.Items.Count -1 do
  begin
  ComboBox1.Text := lvResult.Items[i].Caption;
  end;
  end;

  if ComboBox4.ItemIndex = 1 then
  begin
  for i := 0 to lvResult.Items.Count -1 do
  ComboBox1.Text := lvResult.Items[i].Caption + lvResult.Items[lvResult.ItemIndex].SubItems[0] + '\';
  end;

  if ComboBox4.ItemIndex = 2 then
  begin
  for i := 0 to lvResult.Items.Count -1 do
  ComboBox1.Text := lvResult.Items[i].Caption + lvResult.Items[lvResult.ItemIndex].SubItems[0]
                    + '\' + lvResult.Items[lvResult.ItemIndex].SubItems[1];
  end;


  if ComboBox4.ItemIndex = 3 then
  begin
  if lvResult.Items[lvResult.ItemIndex].SubItems[1] = '' then begin
  for i := 0 to lvResult.Items.Count -1 do
  ComboBox1.Text := lvResult.Items[i].Caption + lvResult.Items[lvResult.ItemIndex].SubItems[0]
                    + lvResult.Items[lvResult.ItemIndex].SubItems[1]
                    + '\' + lvResult.Items[lvResult.ItemIndex].SubItems[2];
  Exit;
  end;


  for i := 0 to lvResult.Items.Count -1 do
  ComboBox1.Text := lvResult.Items[i].Caption + lvResult.Items[lvResult.ItemIndex].SubItems[0]
                    + '\' + lvResult.Items[lvResult.ItemIndex].SubItems[1]
                    + '\' + lvResult.Items[lvResult.ItemIndex].SubItems[2];
  end;

  begin
  reg := tregistry.Create;
  //reg.RootKey := HKEY_LOCAL_MACHINE;
  try
  case RadioGroup3.ItemIndex of
   0 : reg.RootKey := HKEY_CLASSES_ROOT;
   1 : reg.RootKey := HKEY_CURRENT_USER;
   2 : reg.RootKey := HKEY_LOCAL_MACHINE;
   3 : reg.RootKey := HKEY_USERS;
   4 : reg.RootKey := HKEY_CURRENT_CONFIG;
   end;

  reg.OpenKey(lvResult.Items[lvResult.ItemIndex].SubItems[0],false);
  Reg.GetKeyNames(ListBox3.Items);
  Reg.GetValueNames(ListBox2.Items);
  finally
  reg.Free
  end;
  end;

end;

procedure TForm1.Jump1Click(Sender: TObject);
begin
  ComboBox1.Text := lvResult.Selected.Caption + lvResult.Items[lvResult.ItemIndex].SubItems[0];
  BitBtn4.Click;
end;

procedure TForm1.StartSniffer1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TForm1.StopSniffer1Click(Sender: TObject);
begin
  BitBtn2.Click;
end;

procedure TForm1.Normal1Click(Sender: TObject);
begin
   ComboBox3.ItemIndex := 0; ComboBox3.OnChange(Sender);
end;

procedure TForm1.Deep1Click(Sender: TObject);
begin
   ComboBox3.ItemIndex := 1; ComboBox3.OnChange(Sender);
end;

procedure TForm1.InvertLog1Click(Sender: TObject);
begin
   if CheckBox3.Checked = true then begin
   CheckBox3.Checked := false; InvertLog1.Checked := false;
   end else begin
   CheckBox3.Checked := true; InvertLog1.Checked := true;
   end;
end;

procedure TForm1.Savelog1Click(Sender: TObject);
begin
  BitBtn3.Click;
end;

procedure TForm1.StayTop1Click(Sender: TObject);
begin
    if CheckBox1.Checked = false then begin
   CheckBox1.Checked := true; StayTop1.Checked := true;
   end else begin
   CheckBox1.Checked := false; StayTop1.Checked := false;
   end;
end;


procedure TForm1.AddKeytoKeyList1Click(Sender: TObject);
begin
   BitBtn5.Click;
end;

procedure TForm1.LoadKeyListfromFile1Click(Sender: TObject);
begin
  L2.Click;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  if CheckBox5.Checked = false then begin
  lvResult.GridLines := false; GridLines1.Checked := false;
  end else begin
  lvResult.GridLines := true; GridLines1.Checked := true; end;
  sbCount.SetFocus;
end;

procedure TForm1.GridLines1Click(Sender: TObject);
begin
   if CheckBox5.Checked = true then begin
   CheckBox5.Checked := false;
   GridLines1.Checked := false; lvResult.GridLines := false;
   end else begin
   CheckBox5.Checked := true;
   GridLines1.Checked := true; lvResult.GridLines := true;
   end;
end;

procedure TForm1.SearchingKey1Click(Sender: TObject);
begin
  SearchingKey1.Enabled := false;
  try form2 := TForm2.Create(self); form2.ShowModal; finally end;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
    BitBtn6.Click;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  if C1.Checked = true then begin
  Panel2.Visible := true; end else begin Panel2.Visible := false;
  end;
end;

procedure TForm1.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
 Len: Integer;
 NewText: String;
begin
  NewText:=Listbox1.Items[Index];

  with Listbox1.Canvas do
  begin
    FillRect(Rect);
    TextOut(Rect.Left + 1, Rect.Top, NewText);
    Len := TextWidth(NewText) + Rect.Left + 10;
    if Len>flbHorzScrollWidth then
    begin
      flbHorzScrollWidth:=Len;
      Listbox1.Perform(LB_SETHORIZONTALEXTENT, flbHorzScrollWidth, 0 );
    end;
  end;
end;
procedure TForm1.FormShow(Sender: TObject);
begin
  Listbox1.Perform(LB_SetHorizontalExtent, 1000, Longint(0));
  Listbox2.Perform(LB_SetHorizontalExtent, 1000, Longint(0));
  Listbox3.Perform(LB_SetHorizontalExtent, 1000, Longint(0));
  Listbox1.Perform(WM_VSCROLL, SB_BOTTOM, 0);

  ReadOptions;
  L3.OnClick(sender);
  CheckBox12.OnClick(Sender);
  C1.OnClick(sender);
  cbKeys.OnClick(sender);
  cbValues.OnClick(sender);
  cbData.OnClick(sender);

  lvResult.Font.Size := StrToInt(Label28.Caption);
  lvResult.Font.Name := Label6.Caption;
  lvResult.Font.Color := Shape1.Brush.Color;
  ComboBox3.OnChange(sender);
  ComboBox2.OnChange(sender);
  ScrollBar1.OnChange(sender);
end;

procedure TForm1.T1Click(Sender: TObject);
begin
  if CheckBox2.Checked = false then begin
  CheckBox2.Checked := true; T1.Checked := true;
  end else begin
  CheckBox2.Checked := false; T1.Checked := false;
  end;
end;

procedure TForm1.F1Click(Sender: TObject);
begin
  ComboBox3.ItemIndex := 2; ComboBox3.OnChange(Sender);
end;

procedure TForm1.cbKeysClick(Sender: TObject);
begin
  Keys1.Checked := not Keys1.Checked;

  if cbKeys.Checked = true then begin
  lvResult.Column[1].Width := 320
  end else begin
  lvResult.Column[1].Width := 0;
  end;
  sbCount.SetFocus;
end;

procedure TForm1.cbValuesClick(Sender: TObject);
begin
  Values1.Checked := not Values1.Checked;

  if cbValues.Checked = true then begin
  lvResult.Column[2].Width := 130
  end else begin
  lvResult.Column[2].Width := 0;
  end;
  sbCount.SetFocus;
end;

procedure TForm1.cbDataClick(Sender: TObject);
begin
  Data1.Checked := not Data1.Checked;

  if cbData.Checked = true then begin
  lvResult.Column[3].Width := 400
  end else begin
  lvResult.Column[3].Width := 0;
  end;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_CLASSES_ROOTClick(Sender: TObject);
begin
  HKEYCLASSESROOT1.Checked := not HKEYCLASSESROOT1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_CURRENT_USERClick(Sender: TObject);
begin
  HKEYCURRENTUSER1.Checked := not HKEYCURRENTUSER1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_LOCAL_MACHINEClick(Sender: TObject);
begin
  HKEYLOCALMACHINE1.Checked := not HKEYLOCALMACHINE1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_DYN_DATAClick(Sender: TObject);
begin
  HKEYDYNDATA1.Checked := not HKEYDYNDATA1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_USERSClick(Sender: TObject);
begin
  HKEYUSERS1.Checked := not HKEYUSERS1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_PERFORMANCE_DATAClick(Sender: TObject);
begin
  HKEYPERFORMANCEDATA1.Checked := not HKEYPERFORMANCEDATA1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.cbHKEY_CURRENT_CONFIGClick(Sender: TObject);
begin
  HKEYCURRENTCONFIG1.Checked := not HKEYCURRENTCONFIG1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  sbCount.SetFocus;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  A1.Checked := not A1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  if CheckBox8.Checked = true then begin
  CheckBox9.Checked := false; CheckBox10.Checked := false;
  lvResult.ViewStyle := vsList;
  L1.Checked := true; V1.Checked := false; B1.Checked := false;
  end; sbCount.SetFocus;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
  if CheckBox9.Checked = true then begin
  CheckBox8.Checked := false; CheckBox10.Checked := false;
  lvResult.ViewStyle := vsReport;
  L1.Checked := false; V1.Checked := true; B1.Checked := false;
  end; sbCount.SetFocus;
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  if CheckBox10.Checked = true then begin
  CheckBox8.Checked := false; CheckBox9.Checked := false;
  lvResult.ViewStyle := vsIcon;
  L1.Checked := false; V1.Checked := false; B1.Checked := true;
  end; sbCount.SetFocus;
end;

procedure TForm1.L1Click(Sender: TObject);
begin
   CheckBox8.Checked := true;
end;

procedure TForm1.V1Click(Sender: TObject);
begin
  CheckBox9.Checked := true;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
  CheckBox10.Checked := true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var L : integer;
begin
  if ListBox1.Count >= 1 then
  begin
    for L := ListBox1.Count -1 downto 0 do
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
  if CheckBox12.Checked = true then begin
  Timer1.Enabled := true;
  Label3.Enabled := true; Label26.Enabled := true; T2.Checked := true;
  end else begin
  Label3.Enabled := false; Label26.Enabled := false; T2.Checked := false;
  Timer1.Enabled := false;
  end;
  sbCount.SetFocus;
end;

procedure TForm1.S2Click(Sender: TObject);
var l : integer;
begin
    if ListBox1.Count >= 1 then
  begin
    for L := ListBox1.Count -1 downto 0 do
    begin
      if ListBox1.Items.Strings[L] = '' then
      begin
        ListBox1.Items.Delete(L);
      end;
    end;
  end;
  Beep;
  ListBox1.Items.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\Key List\Key List.ini');
   MessageDlg('Key List Saved, Check Key List Folder!',mtInformation, [mbOK], 0);

   sbcount.SetFocus;
end;

procedure TForm1.L2Click(Sender: TObject);
begin
  If OpenDialog1.Execute then begin
   ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
   ComboBox1.Items := ListBox1.Items;
   end;  sbcount.SetFocus;
end;

procedure TForm1.R1Click(Sender: TObject);
var     n: Integer;
begin
   for n := ListBox1.Items.Count - 1 downto 0 do
   if ListBox1.Selected[n] then ListBox1.Items.Delete(n);
   ComboBox1.Items := ListBox1.Items; sbcount.SetFocus;
end;

procedure TForm1.C2Click(Sender: TObject);
begin
  ListBox1.Clear;
   ComboBox1.Items := ListBox1.Items; sbcount.SetFocus;
end;

procedure TForm1.J1Click(Sender: TObject);
begin
  Label2.Caption := ListBox1.Items[ListBox1.ItemIndex];
  JumpToKey(Label2.Caption); sbcount.SetFocus;
end;

procedure TForm1.CheckBox13Click(Sender: TObject);
begin
  if CheckBox13.Checked = true then begin
  ShowWindow( Application.Handle, SW_HIDE );
  end else begin
  ShowWindow( Application.Handle, SW_SHOW );
  end; sbCount.SetFocus;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
Var SIcon: TIcon;
begin
  SIcon := TIcon.Create;
  Try
   ImageList1.GetIcon(3, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 6, SIcon.Handle);
  Finally
  SIcon.Free;
  Application.ProcessMessages;
  End;

  lvResult.Clear;
  disable;
  if RadioGroup1.ItemIndex = 0 then begin lvResult.SortType := stText; end;
  if RadioGroup1.ItemIndex = 1 then begin lvResult.SortType := stData; end;
  if RadioGroup1.ItemIndex = 2 then begin lvResult.SortType := stBoth; end;
  if RadioGroup1.ItemIndex = 3 then begin lvResult.SortType := stNone; end;

  InitScan;
  sbCount.SetFocus;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
Var SIcon: TIcon;
begin
  enable;
  sbCount.SetFocus;

  SIcon := TIcon.Create;
  Try
   sbCount.Panels[7].Text := 'Scan Stop';
   ImageList1.GetIcon(4, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 6, SIcon.Handle);
  Finally
  SIcon.Free;
  Application.ProcessMessages;
  End;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var  I: Integer;  S: TStringList;
begin
  if lvResult.Items.Count = 0 then begin
  Beep;
  MessageDlg('No Registry Report found!',mtError, [mbOK], 0);
  sbCount.SetFocus; Exit;
  end;

  if SaveDialog1.Execute then begin S := TStringList.Create;
    try for I := 0 to lvResult.Items.Count - 1 do begin
        S.Add('HKEY: ' + lvResult.Items.Item[I].Caption);
        S.Add('Key: ' + lvResult.Items.Item[I].SubItems.Strings[0]);
        S.Add('Value: ' + lvResult.Items.Item[I].SubItems.Strings[1]);
        S.Add('Data: ' + lvResult.Items.Item[I].SubItems.Strings[2]);
        S.Add('====================================================================');
        S.Add(''); end; S.SaveToFile(SaveDialog1.FileName + '.txt'); finally S.Free; end;
    sbCount.SetFocus;
  end;
  sbCount.SetFocus;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then begin beep; ShowMessage('No Key to Add');
  sbCount.SetFocus; Exit; end;
  ListBox1.Items.Add(Combobox1.Text);
  //Listbox1.Items.Exchange(Listbox1.ItemIndex, Listbox1.ItemIndex-1);
  S2.Click; sbCount.SetFocus;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then begin
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
              SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); end;

  if ComboBox1.Text = '' then begin
  Beep;
  MessageDlg('No Registry Key to Jump!',mtError, [mbOK], 0);
  sbCount.SetFocus; Exit;
  end;

  if CheckBox1.Checked = true then begin
  SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
              SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); end;

  JumpToKey(ComboBox1.Text); sbCount.SetFocus;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
const Priority : array[0..3] of integer = (IDLE_PRIORITY_CLASS, NORMAL_PRIORITY_CLASS, HIGH_PRIORITY_CLASS, REALTIME_PRIORITY_CLASS);
      PLevels  : array[0..3] of byte    = (4, 8, 13, 24);
begin
  SetPriorityClass(GetCurrentProcess, Priority[(Sender as TRadioGroup).Tag]);
  if RadioGroup2.ItemIndex = 0 then begin L4.Checked := true; RadioGroup2.Tag := 0; end;
  if RadioGroup2.ItemIndex = 1 then begin N13.Checked := true; RadioGroup2.Tag := 1; end;
  if RadioGroup2.ItemIndex = 2 then begin H1.Checked := true; RadioGroup2.Tag := 2; end;
  if RadioGroup2.ItemIndex = 3 then begin R2.Checked := true; RadioGroup2.Tag := 3; end;
  sbCount.SetFocus;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  if FontDialog1.Execute then begin
  lvResult.Font := FontDialog1.Font;
  Label6.Caption := FontDialog1.Font.Name;
  Label28.Caption := IntToStr(FontDialog1.Font.Size);
  Shape1.Brush.Color := FontDialog1.Font.Color;
  end;  sbCount.SetFocus;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  sbCount.SetFocus;
end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  SavelastKeyListbyend1.Checked := not SavelastKeyListbyend1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
  sbCount.SetFocus;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  SaveLastSearchingKey1.Checked := not SaveLastSearchingKey1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then begin
  SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
              SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); end;

  if ComboBox1.Text = '' then begin
  Beep;
  MessageDlg('No Registry Key Selected!',mtError, [mbOK], 0);
  sbCount.SetFocus; Exit;
  end;
  
  Beep;
  if MessageDlg('ATTENTION !'+#13+
                'This will Delete Key from Registry.. ' +#13+
                'Are your Sure to Continue ?',mtWarning,[mbYes, mbNo], 0) = mrYes THEN
  BEGIN
  with TRegistry.Create do
      begin
       try
       if lvResult.Selected.Caption = 'HKEY_CLASSES_ROOT' then begin
          Rootkey:= HKEY_CLASSES_ROOT; end;
       if lvResult.Selected.Caption = 'HKEY_CURRENT_USER' then begin
          Rootkey:= HKEY_CURRENT_USER; end;
       if lvResult.Selected.Caption = 'HKEY_LOCAL_MACHINE' then begin
          Rootkey:= HKEY_LOCAL_MACHINE; end;
       if lvResult.Selected.Caption = 'HKEY_USERS' then begin
          Rootkey:= HKEY_USERS; end;
       if lvResult.Selected.Caption = 'HKEY_CURRENT_CONFIG' then begin
          Rootkey:= HKEY_CURRENT_CONFIG; end;
             begin
            DeleteKey(lvResult.Selected.SubItems[0]);
             end;
          except
        MessageDlg('Registry Key not found!',mtError, [mbOK], 0);
      Free;
    end;
 end;
 Beep;
 MessageDlg('Registry Key deleted!',mtInformation, [mbOK], 0);
 end;
 if CheckBox1.Checked = true then begin
 SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
              SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE); end;
end;


procedure TForm1.D1Click(Sender: TObject);
begin
  BitBtn7.Click;
end;

procedure TForm1.FormResize(Sender: TObject);
Var SIcon: TIcon;
begin
  SIcon := TIcon.Create;
  Try
   ImageList1.GetIcon(1, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 0, SIcon.Handle);

   ImageList1.GetIcon(0, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 2, SIcon.Handle);

   ImageList1.GetIcon(2, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 4, SIcon.Handle);

   if BitBtn1.Enabled = false then begin
   ImageList1.GetIcon(3, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 6, SIcon.Handle);
   end;

   if BitBtn1.Enabled = true then begin
   ImageList1.GetIcon(4, SIcon);
   SendMessage(sbCount.Handle, SB_SETICON, 6, SIcon.Handle);
   end;
  Finally
  SIcon.Free;
  Application.ProcessMessages;
  End;
end;

procedure TForm1.C3Click(Sender: TObject);
begin
  lvResult.Clear;
  ComboBox1.Clear;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Label8.Caption := 'Last : ' + IntToStr(ScrollBar1.Position);
end;

procedure TForm1.HKEYCLASSESROOT1Click(Sender: TObject);
begin
  cbHKEY_CLASSES_ROOT.Checked := not cbHKEY_CLASSES_ROOT.Checked;
end;

procedure TForm1.HKEYCURRENTUSER1Click(Sender: TObject);
begin
  cbHKEY_CURRENT_USER.Checked := not cbHKEY_CURRENT_USER.Checked;
end;

procedure TForm1.HKEYLOCALMACHINE1Click(Sender: TObject);
begin
  cbHKEY_LOCAL_MACHINE.Checked := not cbHKEY_LOCAL_MACHINE.Checked;
end;

procedure TForm1.HKEYDYNDATA1Click(Sender: TObject);
begin
  cbHKEY_DYN_DATA.Checked := not cbHKEY_DYN_DATA.Checked;
end;

procedure TForm1.Keys1Click(Sender: TObject);
begin
  cbKeys.Checked := not cbKeys.Checked;
end;

procedure TForm1.Values1Click(Sender: TObject);
begin
  cbValues.Checked := not cbValues.Checked;
end;

procedure TForm1.Data1Click(Sender: TObject);
begin
  cbData.Checked := not cbData.Checked;
end;

procedure TForm1.HKEYUSERS1Click(Sender: TObject);
begin
  cbHKEY_USERS.Checked := not cbHKEY_USERS.Checked;
end;

procedure TForm1.HKEYPERFORMANCEDATA1Click(Sender: TObject);
begin
  cbHKEY_PERFORMANCE_DATA.Checked := not cbHKEY_PERFORMANCE_DATA.Checked;
end;

procedure TForm1.HKEYCURRENTCONFIG1Click(Sender: TObject);
begin
  cbHKEY_CURRENT_CONFIG.Checked := not cbHKEY_CURRENT_CONFIG.Checked;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  if ComboBox1.Text = '' then begin beep; ShowMessage('No Key Selected..');
  sbCount.SetFocus; Exit; end;

  try form3 := TForm3.Create(self); form3.ShowModal; finally end;
end;

procedure TForm1.lvResultMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

  if lvResult.Selected <> nil then begin
  Label16.Caption := lvResult.Selected.Caption;

  if Label16.Caption = 'HKEY_CLASSES_ROOT' then begin
  RadioGroup3.ItemIndex := 0; end;

  if Label16.Caption = 'HKEY_CURRENT_USER' then begin
  RadioGroup3.ItemIndex := 1; end;

  if Label16.Caption = 'HKEY_LOCAL_MACHINE' then begin
  RadioGroup3.ItemIndex := 2; end;

  if Label16.Caption = 'HKEY_USERS' then begin
  RadioGroup3.ItemIndex := 3; end;
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
  if GetProcessMemoryInfo(GetCurrentProcess(), pmc, cb) then begin

  Label26.Caption := IntToStr(pmc^.WorkingSetSize div 10000) + ' Kb'
  end else begin
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
  if not SetTokenPrivilege('SeBackupPrivilege', True) then
    Exit;

  SaveDialog2.FileName := lvResult.Items[lvResult.ItemIndex].SubItems[0] + '.reg';

  if SaveDialog2.Execute then begin

  LReg := TRegistry.Create(KEY_ALL_ACCESS);
  try

   case RadioGroup3.ItemIndex of
   0 : LReg.RootKey := HKEY_CLASSES_ROOT;
   1 : LReg.RootKey := HKEY_CURRENT_USER;
   2 : LReg.RootKey := HKEY_LOCAL_MACHINE;
   3 : LReg.RootKey := HKEY_USERS;
   4 : LReg.RootKey := HKEY_CURRENT_CONFIG;
   end;
    //LReg.RootKey := HKEY_CURRENT_USER;
    if not LReg.SaveKey(lvResult.Items[lvResult.ItemIndex].SubItems[0], SaveDialog2.FileName) then
      ShowMessage('Could not Save Registry File');
  finally
    LReg.Free;
  end;


  end;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  RegistryTokenPrivilegs1.Checked := not RegistryTokenPrivilegs1.Checked;
  sbCount.SetFocus;
end;

procedure TForm1.L3Click(Sender: TObject);
begin
  if L3.Checked = true then begin
  Panel4.Visible := true; end else begin Panel4.Visible := false;
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
  CheckBox6.Checked := not CheckBox6.Checked;
end;

procedure TForm1.RegistryTokenPrivilegs1Click(Sender: TObject);
begin
  CheckBox7.Checked := not CheckBox7.Checked;
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
