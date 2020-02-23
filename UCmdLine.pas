unit UCmdLine;

interface

uses
  Windows, WinSock, SysUtils, Classes, dialogs;

type
  TCmdThread = class(TThread)
  private
    FOnCmdLine: TNotifyEvent;
    FCmdLine: string;
    FOutCmdLine: String;
    FStoped: Boolean;
  public
  protected
   procedure DoCmdLine; virtual;
  public
  procedure Execute; Override;
  constructor Create(cmdLine: string); virtual;
  procedure Stop; virtual;
  destructor Destroy; override;
  property OnCmdLine: TNotifyEvent read FOnCmdLine write FOnCmdLine;
  property OutCmdLine: String read FOutCmdLine;
  property Stoped: Boolean read FStoped;
  end;

implementation

constructor TCmdThread.Create(CmdLine: string);
begin
  inherited Create(True);
  FreeOnTerminate:= True;
  FCmdLine:= CmdLine;
  Resume;
end;

destructor TCmdThread.Destroy;
begin
 FStoped:= true;
  inherited;
end;

procedure TCmdThread.DoCmdLine;
 begin
if Assigned(FOnCmdLine) then
    FOnCmdLine(Self);
end;

procedure TCmdThread.Stop;
 begin
 FStoped:= true;
  Terminate;
end;

procedure TCmdThread.Execute;
const BUFSIZE = 2000;
var SecAttr    : TSecurityAttributes;
   hReadPipe,
   hWritePipe : THandle;
   StartupInfo: TStartUpInfo;
   ProcessInfo: TProcessInformation;
   Buffer     : PAnsiChar;
   WaitReason,
   BytesRead  : DWord;
begin
with SecAttr do
begin
  nlength              := SizeOf(TSecurityAttributes);
  binherithandle       := true;
  lpsecuritydescriptor := nil;
end;
if Createpipe (hReadPipe, hWritePipe, @SecAttr, 0) then
begin
  Buffer  := AllocMem(BUFSIZE + 1);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb          := SizeOf(StartupInfo);
  StartupInfo.hStdOutput  := hWritePipe;
  StartupInfo.hStdInput   := hReadPipe;
  StartupInfo.dwFlags     := STARTF_USESTDHANDLES +
                             STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := SW_HIDE;
  if CreateProcess(nil,
     PChar(FCmdLine),
     @SecAttr,
     @SecAttr,
     true,
     NORMAL_PRIORITY_CLASS,
     nil,
     nil,
     StartupInfo,
     ProcessInfo) then
  while not Terminated do
      begin
      WaitReason := WaitForSingleObject(ProcessInfo.hProcess, 1);
       if (WaitReason <> WAIT_TIMEOUT) or (FStoped) then
       Terminate;
        BytesRead := 0;
        ReadFile(hReadPipe, Buffer[0], BUFSIZE, BytesRead, nil);
        Buffer[BytesRead]:= #0;
        OemToAnsi(Buffer,Buffer);
        FOutCmdLine:= PAnsiChar(Buffer);
        Synchronize(DoCmdLine);
    end;
  FreeMem(Buffer);
  CloseHandle(ProcessInfo.hProcess);
  CloseHandle(ProcessInfo.hThread);
  CloseHandle(hReadPipe);
  CloseHandle(hWritePipe);
end;
end;

end.

