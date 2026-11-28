unit browser;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createbrowser: TX3DRootNode;
procedure RegisterbrowserScripts(const Scene: TCastleSceneCore);
procedure DetachbrowserScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript8Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript8Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript9Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript9Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Cumulustranslation(const Time: TX3DTime);
  end;

  TbrowserScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group7: TGroupNode;
  Script8: TScriptNode;
  CompiledScript8List: array of TScript8Script;
  Script9: TScriptNode;
  CompiledScript9List: array of TScript9Script;

constructor TScript8Script.Create(const AHandlerPrefix: String);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
end;

class function TScript8Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript8Script;
begin
  Result := TScript8Script.Create(AHandlerPrefix);
end;

destructor TScript8Script.Destroy;
begin
  inherited Destroy;
end;

procedure TScript8Script.Detach;
begin
end;

procedure TScript8Script.FlushOutputs(const Time: TX3DTime);
begin
end;

procedure TScript8Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
end;

procedure TScript8Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FScriptInitialized := True;
  WriteLn('DUDES'#10 + '"DUDETTES');
end;

constructor TScript9Script.Create(const AHandlerPrefix: String);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
end;

class function TScript9Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript9Script;
begin
  Result := TScript9Script.Create(AHandlerPrefix);
end;

destructor TScript9Script.Destroy;
begin
  inherited Destroy;
end;

procedure TScript9Script.Detach;
begin
end;

procedure TScript9Script.FlushOutputs(const Time: TX3DTime);
begin
end;

procedure TScript9Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
end;

procedure TScript9Script.Cumulustranslation(const Time: TX3DTime);
var
  xxx: String;
begin
  xxx := ' ' + ' ' + #9'Transform'#9#9#10 + '    ' + '               '#9#10;
end;

procedure TbrowserScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script8_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript8List);
    Prefix := 'Script8_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize']);
    SetLength(CompiledScript8List, Idx + 1);
    CompiledScript8List[Idx] := TScript8Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitbrowserPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'browser.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/browser.x3d';
X3D0.Meta['description'] := 'a script test with embedded \n between single quotes, a double backslash \\\\ a backslash \\ and a closing quote "';
Group7 := TGroupNode.Create;
Script8 := TScriptNode.Create;
Script8.X3DName := 'Browser';
Script8.SetUrl(['compiled:' + LineEnding +
  'initialize=Script8_initialize']);
Group7.FdChildren.Add(Script8);
Script9 := TScriptNode.Create;
Script9.X3DName := 'Clouds';
Script9.SetUrl(['compiled:' + LineEnding +
  '']);
Group7.FdChildren.Add(Script9);
X3D0.AddChildren([Group7]);
end;

function Createbrowser: TX3DRootNode;
var
  Binder: TbrowserScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript8List) do
    FreeAndNil(CompiledScript8List[_i]);
  SetLength(CompiledScript8List, 0);
  for _i := 0 to High(CompiledScript9List) do
    FreeAndNil(CompiledScript9List[_i]);
  SetLength(CompiledScript9List, 0);
  InitbrowserPart0;
  Binder := TbrowserScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterbrowserScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript8List) do
  begin
    CompiledScript8List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript8List[_i].Initialized) then
      CompiledScript8List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript9List) do
  begin
    CompiledScript9List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachbrowserScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript8List) do
  begin
    CompiledScript8List[_i].Detach;
    FreeAndNil(CompiledScript8List[_i]);
  end;
  SetLength(CompiledScript8List, 0);
  for _i := 0 to High(CompiledScript9List) do
  begin
    CompiledScript9List[_i].Detach;
    FreeAndNil(CompiledScript9List[_i]);
  end;
  SetLength(CompiledScript9List, 0);
end;

finalization
  while Length(CompiledScript8List) > 0 do
  begin
    FreeAndNil(CompiledScript8List[High(CompiledScript8List)]);
    SetLength(CompiledScript8List, Length(CompiledScript8List) - 1);
  end;
  while Length(CompiledScript9List) > 0 do
  begin
    FreeAndNil(CompiledScript9List[High(CompiledScript9List)]);
    SetLength(CompiledScript9List, Length(CompiledScript9List) - 1);
  end;
end.
