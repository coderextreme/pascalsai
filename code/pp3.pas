unit pp3;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createpp3: TX3DRootNode;
procedure Registerpp3Scripts(const Scene: TCastleSceneCore);
procedure Detachpp3Scripts;

implementation

uses Classes, SysUtils, X3DLoad, CastleVectors, Math, X3DTime;

function CreateEmptyPrototype(const AName: String): TX3DPrototype;
var
  Stream: TStringStream;
  TempRoot: TX3DRootNode;
  CopyState: TX3DNodeDeepCopyState;
begin
  Stream := TStringStream.Create('#X3D V4.0 utf8' + LineEnding + 'PROFILE Full' + LineEnding + 'PROTO ' + AName + ' [] {}');
  try
    TempRoot := LoadNode(Stream, '', 'model/x3d+vrml');
    try
      CopyState := TX3DNodeDeepCopyState.Create;
      try
        Result := TempRoot.Prototypes[0].DeepCopy(CopyState) as TX3DPrototype;
      finally
        FreeAndNil(CopyState);
      end;
    finally
      FreeAndNil(TempRoot);
    end;
  finally
    FreeAndNil(Stream);
  end;
end;

type
  TScript60Script_MFStringArray = array of String;
  TScript60Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Frightlines: TScript60Script_MFStringArray;
    FEvent_rightlines: TX3DEvent;
    FBack_rightlines: TMFString;
    FDirty_rightlines: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AEvent_rightlines: TX3DEvent);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript60Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_rightstring(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript63Script_MFStringArray = array of String;
  TScript63Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Fuplines: TScript63Script_MFStringArray;
    FEvent_uplines: TX3DEvent;
    FBack_uplines: TMFString;
    FDirty_uplines: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AEvent_uplines: TX3DEvent);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript63Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_upstring(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript66Script_MFStringArray = array of String;
  TScript66Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Fcenterlines: TScript66Script_MFStringArray;
    FEvent_centerlines: TX3DEvent;
    FBack_centerlines: TMFString;
    FDirty_centerlines: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AEvent_centerlines: TX3DEvent);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript66Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_centerstring(Value: TX3DField; const Time: TX3DTime);
  end;

  Tpp3ScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group10: TGroupNode;
  ProtoDeclare11: TX3DPrototype;
  Group13: TGroupNode;
  Transform14: TTransformNode;
  Shape15: TShapeNode;
  Appearance16: TAppearanceNode;
  Material17: TMaterialNode;
  Extrusion18: TExtrusionNode;
  Transform19: TTransformNode;
  Shape20: TShapeNode;
  Appearance21: TAppearanceNode;
  Material22: TMaterialNode;
  Extrusion23: TExtrusionNode;
  Transform24: TTransformNode;
  Shape25: TShapeNode;
  Appearance26: TAppearanceNode;
  Material27: TMaterialNode;
  Text28: TTextNode;
  StringSensor29: TStringSensorNode;
  TouchSensor30: TTouchSensorNode;
  Transform31: TTransformNode;
  Shape32: TShapeNode;
  Appearance33: TAppearanceNode;
  Material34: TMaterialNode;
  Extrusion35: TExtrusionNode;
  Transform36: TTransformNode;
  Shape37: TShapeNode;
  Appearance38: TAppearanceNode;
  Text40: TTextNode;
  StringSensor41: TStringSensorNode;
  TouchSensor42: TTouchSensorNode;
  Transform43: TTransformNode;
  Shape44: TShapeNode;
  Appearance45: TAppearanceNode;
  Material46: TMaterialNode;
  Extrusion47: TExtrusionNode;
  Transform48: TTransformNode;
  Shape49: TShapeNode;
  Appearance50: TAppearanceNode;
  Material51: TMaterialNode;
  Sphere52: TSphereNode;
  Transform53: TTransformNode;
  Shape54: TShapeNode;
  Appearance55: TAppearanceNode;
  Text57: TTextNode;
  StringSensor58: TStringSensorNode;
  TouchSensor59: TTouchSensorNode;
  Script60: TScriptNode;
  FieldVal61: TX3DEvent;
  FieldVal62: TX3DEvent;
  CompiledScript60List: array of TScript60Script;
  Script63: TScriptNode;
  FieldVal64: TX3DEvent;
  FieldVal65: TX3DEvent;
  CompiledScript63List: array of TScript63Script;
  Script66: TScriptNode;
  FieldVal67: TX3DEvent;
  FieldVal68: TX3DEvent;
  CompiledScript66List: array of TScript66Script;
  NavigationInfo78: TNavigationInfoNode;
  Viewpoint79: TViewpointNode;
  Transform80: TTransformNode;
  ProtoInstance81: TX3DPrototypeNode;
  Transform82: TTransformNode;
  ProtoInstance83: TX3DPrototypeNode;
  Transform84: TTransformNode;
  ProtoInstance85: TX3DPrototypeNode;

constructor TScript60Script.Create(const AHandlerPrefix: String; const AEvent_rightlines: TX3DEvent);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
  Frightlines := nil;
  FEvent_rightlines := nil;
  FBack_rightlines := TMFString.CreateUndefined(nil, False, 'rightlines');
  FDirty_rightlines := False;
  FEvent_rightlines := AEvent_rightlines;
end;

class function TScript60Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript60Script;
begin
  Result := TScript60Script.Create(AHandlerPrefix, AScriptNode.AnyEvent('rightlines'));
end;

destructor TScript60Script.Destroy;
begin
  FreeAndNil(FBack_rightlines);
  inherited Destroy;
end;

procedure TScript60Script.Detach;
begin
end;

procedure TScript60Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_rightlines then
  begin
    FDirty_rightlines := False;
    if FEvent_rightlines <> nil then
    begin
      FBack_rightlines.Items.Clear;
      for _i := 0 to High(Frightlines) do
        FBack_rightlines.Items.Add(Frightlines[_i]);
      FEvent_rightlines.Send(FBack_rightlines, Time);
    end;
  end;
end;

procedure TScript60Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_rightstring', {$ifdef FPC}@{$endif}Set_rightstring);
end;

procedure TScript60Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FScriptInitialized := True;
  Frightlines := [''];
  FDirty_rightlines := True;
  FlushOutputs(Time);
end;

procedure TScript60Script.Set_rightstring(Value: TX3DField; const Time: TX3DTime);
begin
  Frightlines := [(Value as TSFString).Value];
  FDirty_rightlines := True;
  FlushOutputs(Time);
end;

constructor TScript63Script.Create(const AHandlerPrefix: String; const AEvent_uplines: TX3DEvent);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
  Fuplines := nil;
  FEvent_uplines := nil;
  FBack_uplines := TMFString.CreateUndefined(nil, False, 'uplines');
  FDirty_uplines := False;
  FEvent_uplines := AEvent_uplines;
end;

class function TScript63Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript63Script;
begin
  Result := TScript63Script.Create(AHandlerPrefix, AScriptNode.AnyEvent('uplines'));
end;

destructor TScript63Script.Destroy;
begin
  FreeAndNil(FBack_uplines);
  inherited Destroy;
end;

procedure TScript63Script.Detach;
begin
end;

procedure TScript63Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_uplines then
  begin
    FDirty_uplines := False;
    if FEvent_uplines <> nil then
    begin
      FBack_uplines.Items.Clear;
      for _i := 0 to High(Fuplines) do
        FBack_uplines.Items.Add(Fuplines[_i]);
      FEvent_uplines.Send(FBack_uplines, Time);
    end;
  end;
end;

procedure TScript63Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_upstring', {$ifdef FPC}@{$endif}Set_upstring);
end;

procedure TScript63Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FScriptInitialized := True;
  Fuplines := [''];
  FDirty_uplines := True;
  FlushOutputs(Time);
end;

procedure TScript63Script.Set_upstring(Value: TX3DField; const Time: TX3DTime);
begin
  Fuplines := [(Value as TSFString).Value];
  FDirty_uplines := True;
  FlushOutputs(Time);
end;

constructor TScript66Script.Create(const AHandlerPrefix: String; const AEvent_centerlines: TX3DEvent);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
  Fcenterlines := nil;
  FEvent_centerlines := nil;
  FBack_centerlines := TMFString.CreateUndefined(nil, False, 'centerlines');
  FDirty_centerlines := False;
  FEvent_centerlines := AEvent_centerlines;
end;

class function TScript66Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript66Script;
begin
  Result := TScript66Script.Create(AHandlerPrefix, AScriptNode.AnyEvent('centerlines'));
end;

destructor TScript66Script.Destroy;
begin
  FreeAndNil(FBack_centerlines);
  inherited Destroy;
end;

procedure TScript66Script.Detach;
begin
end;

procedure TScript66Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_centerlines then
  begin
    FDirty_centerlines := False;
    if FEvent_centerlines <> nil then
    begin
      FBack_centerlines.Items.Clear;
      for _i := 0 to High(Fcenterlines) do
        FBack_centerlines.Items.Add(Fcenterlines[_i]);
      FEvent_centerlines.Send(FBack_centerlines, Time);
    end;
  end;
end;

procedure TScript66Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_centerstring', {$ifdef FPC}@{$endif}Set_centerstring);
end;

procedure TScript66Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FScriptInitialized := True;
  Fcenterlines := [''];
  FDirty_centerlines := True;
  FlushOutputs(Time);
end;

procedure TScript66Script.Set_centerstring(Value: TX3DField; const Time: TX3DTime);
begin
  Fcenterlines := [(Value as TSFString).Value];
  FDirty_centerlines := True;
  FlushOutputs(Time);
end;

procedure Tpp3ScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script60_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript60List);
    Prefix := 'Script60_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_rightstring=' + Prefix + 'set_rightstring']);
    SetLength(CompiledScript60List, Idx + 1);
    CompiledScript60List[Idx] := TScript60Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script63_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript63List);
    Prefix := 'Script63_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_upstring=' + Prefix + 'set_upstring']);
    SetLength(CompiledScript63List, Idx + 1);
    CompiledScript63List[Idx] := TScript63Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script66_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript66List);
    Prefix := 'Script66_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_centerstring=' + Prefix + 'set_centerstring']);
    SetLength(CompiledScript66List, Idx + 1);
    CompiledScript66List[Idx] := TScript66Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Initpp3Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'pp3.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['translator'] := 'John Carlson';
X3D0.Meta['created'] := '5 May 2015';
X3D0.Meta['modified'] := '23 Dec 2022';
X3D0.Meta['description'] := 'A process pipeline between three spheres (try typing on spheres and blue';
X3D0.Meta['identifier'] := 'https://coderextreme.net/x3d/pp3.x3d';
X3D0.Meta['generator'] := 'manual';
Group10 := TGroupNode.Create;
ProtoDeclare11 := CreateEmptyPrototype('Process');
ProtoDeclare11.X3DName := 'Process';
Group13 := TGroupNode.Create;
{ left }
Transform14 := TTransformNode.Create;
Transform14.Scale := Vector3(0.5, 0.5, 0.5);
Shape15 := TShapeNode.Create;
Appearance16 := TAppearanceNode.Create;
Material17 := TMaterialNode.Create;
Material17.DiffuseColor := Vector3(0.7, 1, 0);
Material17.Transparency := 0.5;
Appearance16.Material := Material17;
Shape15.Appearance := Appearance16;
Extrusion18 := TExtrusionNode.Create;
Extrusion18.CreaseAngle := 0.785;
Extrusion18.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion18.SetSpine([Vector3(-2.5, 0, 0), Vector3(-2, 0, 0), Vector3(-1.5, 0, 0)]);
Shape15.Geometry := Extrusion18;
Transform14.FdChildren.Add(Shape15);
{ <Transform translation="-2.5 0 0"> <Shape> <Text DEF="LeftString" string='"l"'/> </Shape> </Transform> <StringSensor DEF="LeftSensor" enabled="false"/> <TouchSensor DEF="LeftTouch" enabled="true"/> }
Group13.FdChildren.Add(Transform14);
{ right }
Transform19 := TTransformNode.Create;
Transform19.Scale := Vector3(0.5, 0.5, 0.5);
Shape20 := TShapeNode.Create;
Appearance21 := TAppearanceNode.Create;
Material22 := TMaterialNode.Create;
end;

procedure Initpp3Part1;
begin
Material22.DiffuseColor := Vector3(0, 0.7, 1);
Material22.Transparency := 0.5;
Appearance21.Material := Material22;
Shape20.Appearance := Appearance21;
Extrusion23 := TExtrusionNode.Create;
Extrusion23.CreaseAngle := 0.785;
Extrusion23.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion23.SetSpine([Vector3(1.5, 0, 0), Vector3(2, 0, 0), Vector3(2.5, 0, 0)]);
Shape20.Geometry := Extrusion23;
Transform19.FdChildren.Add(Shape20);
Transform24 := TTransformNode.Create;
Transform24.Translation := Vector3(2, 0, 0);
Shape25 := TShapeNode.Create;
Appearance26 := TAppearanceNode.Create;
Material27 := TMaterialNode.Create;
Material27.X3DName := 'MaterialLightBlue';
Material27.DiffuseColor := Vector3(1, 1, 1);
Appearance26.Material := Material27;
Shape25.Appearance := Appearance26;
Text28 := TTextNode.Create;
Text28.X3DName := 'RightString';
Text28.SetText(['r']);
Shape25.Geometry := Text28;
Transform24.FdChildren.Add(Shape25);
Transform19.FdChildren.Add(Transform24);
StringSensor29 := TStringSensorNode.Create;
StringSensor29.X3DName := 'RightSensor';
StringSensor29.Enabled := False;
Transform19.FdChildren.Add(StringSensor29);
TouchSensor30 := TTouchSensorNode.Create;
TouchSensor30.Description := 'touch to activate';
TouchSensor30.X3DName := 'RightTouch';
Transform19.FdChildren.Add(TouchSensor30);
Group13.FdChildren.Add(Transform19);
{ up }
Transform31 := TTransformNode.Create;
Transform31.Scale := Vector3(0.5, 0.5, 0.5);
Shape32 := TShapeNode.Create;
Appearance33 := TAppearanceNode.Create;
Material34 := TMaterialNode.Create;
end;

procedure Initpp3Part2;
begin
Material34.DiffuseColor := Vector3(0, 0.7, 1);
Material34.Transparency := 0.5;
Appearance33.Material := Material34;
Shape32.Appearance := Appearance33;
Extrusion35 := TExtrusionNode.Create;
Extrusion35.CreaseAngle := 0.785;
Extrusion35.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion35.SetSpine([Vector3(0, 1.5, 0), Vector3(0, 2, 0), Vector3(0, 2.5, 0)]);
Shape32.Geometry := Extrusion35;
Transform31.FdChildren.Add(Shape32);
Transform36 := TTransformNode.Create;
Transform36.Translation := Vector3(-0.5, 2, 0);
Shape37 := TShapeNode.Create;
Appearance38 := TAppearanceNode.Create;
Appearance38.Material := Material27;
Shape37.Appearance := Appearance38;
Text40 := TTextNode.Create;
Text40.X3DName := 'UpString';
Text40.SetText(['u']);
Shape37.Geometry := Text40;
Transform36.FdChildren.Add(Shape37);
Transform31.FdChildren.Add(Transform36);
StringSensor41 := TStringSensorNode.Create;
StringSensor41.X3DName := 'UpSensor';
StringSensor41.Enabled := False;
Transform31.FdChildren.Add(StringSensor41);
TouchSensor42 := TTouchSensorNode.Create;
TouchSensor42.Description := 'touch to activate';
TouchSensor42.X3DName := 'UpTouch';
Transform31.FdChildren.Add(TouchSensor42);
Group13.FdChildren.Add(Transform31);
{ down }
Transform43 := TTransformNode.Create;
Transform43.Scale := Vector3(0.5, 0.5, 0.5);
Shape44 := TShapeNode.Create;
Appearance45 := TAppearanceNode.Create;
Material46 := TMaterialNode.Create;
Material46.DiffuseColor := Vector3(0.7, 1, 0);
Material46.Transparency := 0.5;
Appearance45.Material := Material46;
end;

procedure Initpp3Part3;
begin
Shape44.Appearance := Appearance45;
Extrusion47 := TExtrusionNode.Create;
Extrusion47.CreaseAngle := 0.785;
Extrusion47.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion47.SetSpine([Vector3(0, -2.5, 0), Vector3(0, -2, 0), Vector3(0, -1.5, 0)]);
Shape44.Geometry := Extrusion47;
Transform43.FdChildren.Add(Shape44);
{ <Transform translation="-0.5 -2.5 0"> <Shape> <Text DEF="DownString" string='"d"'/> </Shape> </Transform> <StringSensor DEF="DownSensor" enabled="false"/> <TouchSensor description='touch to activate' DEF="DownTouch" enabled="true"/> }
Group13.FdChildren.Add(Transform43);
{ center }
Transform48 := TTransformNode.Create;
Shape49 := TShapeNode.Create;
Appearance50 := TAppearanceNode.Create;
Material51 := TMaterialNode.Create;
Material51.DiffuseColor := Vector3(1, 0, 0.7);
Appearance50.Material := Material51;
Shape49.Appearance := Appearance50;
Sphere52 := TSphereNode.Create;
Shape49.Geometry := Sphere52;
Transform48.FdChildren.Add(Shape49);
Transform53 := TTransformNode.Create;
Transform53.Scale := Vector3(0.5, 0.5, 0.5);
Transform53.Translation := Vector3(-0.5, 0, 1);
Shape54 := TShapeNode.Create;
Appearance55 := TAppearanceNode.Create;
Appearance55.Material := Material27;
Shape54.Appearance := Appearance55;
Text57 := TTextNode.Create;
Text57.X3DName := 'CenterString';
Shape54.Geometry := Text57;
Transform53.FdChildren.Add(Shape54);
Transform48.FdChildren.Add(Transform53);
StringSensor58 := TStringSensorNode.Create;
StringSensor58.X3DName := 'CenterSensor';
StringSensor58.Enabled := False;
Transform48.FdChildren.Add(StringSensor58);
TouchSensor59 := TTouchSensorNode.Create;
TouchSensor59.Description := 'touch to activate';
TouchSensor59.X3DName := 'CenterTouch';
Transform48.FdChildren.Add(TouchSensor59);
end;

procedure Initpp3Part4;
begin
Group13.FdChildren.Add(Transform48);
ProtoDeclare11.Node.AddChildren([Group13]);
Script60 := TScriptNode.Create;
Script60.X3DName := 'RightSingleToMultiString';
FieldVal61 := TSFString.CreateEvent(Script60, 'set_rightstring', True);
Script60.AddCustomFieldOrEvent(FieldVal61);
FieldVal62 := TMFString.CreateEvent(Script60, 'rightlines', False);
Script60.AddCustomFieldOrEvent(FieldVal62);
Script60.SetUrl(['compiled:' + LineEnding +
  'initialize=Script60_initialize' + LineEnding +
  'set_rightstring=Script60_set_rightstring']);
ProtoDeclare11.Node.AddChildren([Script60]);
Script63 := TScriptNode.Create;
Script63.X3DName := 'UpSingleToMultiString';
FieldVal64 := TSFString.CreateEvent(Script63, 'set_upstring', True);
Script63.AddCustomFieldOrEvent(FieldVal64);
FieldVal65 := TMFString.CreateEvent(Script63, 'uplines', False);
Script63.AddCustomFieldOrEvent(FieldVal65);
Script63.SetUrl(['compiled:' + LineEnding +
  'initialize=Script63_initialize' + LineEnding +
  'set_upstring=Script63_set_upstring']);
ProtoDeclare11.Node.AddChildren([Script63]);
Script66 := TScriptNode.Create;
Script66.X3DName := 'CenterSingleToMultiString';
FieldVal67 := TSFString.CreateEvent(Script66, 'set_centerstring', True);
Script66.AddCustomFieldOrEvent(FieldVal67);
FieldVal68 := TMFString.CreateEvent(Script66, 'centerlines', False);
Script66.AddCustomFieldOrEvent(FieldVal68);
Script66.SetUrl(['compiled:' + LineEnding +
  'initialize=Script66_initialize' + LineEnding +
  'set_centerstring=Script66_set_centerstring']);
ProtoDeclare11.Node.AddChildren([Script66]);
{ ROUTE CenterSensor.enteredText TO CenterSingleToMultiString.set_centerstring }
ProtoDeclare11.Node.AddRoute(StringSensor58.EventEnteredText, FieldVal67);
{ ROUTE CenterSingleToMultiString.centerlines TO CenterString.set_string }
ProtoDeclare11.Node.AddRoute(FieldVal68, Text57.FdString.EventIn);
{ ROUTE CenterTouch.isOver TO CenterSensor.set_enabled }
ProtoDeclare11.Node.AddRoute(TouchSensor59.EventIsOver, StringSensor58.FdEnabled.EventIn);
{ ROUTE RightSensor.enteredText TO RightSingleToMultiString.set_rightstring }
ProtoDeclare11.Node.AddRoute(StringSensor29.EventEnteredText, FieldVal61);
{ ROUTE RightSingleToMultiString.rightlines TO RightString.set_string }
ProtoDeclare11.Node.AddRoute(FieldVal62, Text28.FdString.EventIn);
{ ROUTE RightTouch.isOver TO RightSensor.set_enabled }
ProtoDeclare11.Node.AddRoute(TouchSensor30.EventIsOver, StringSensor29.FdEnabled.EventIn);
{ ROUTE UpSensor.enteredText TO UpSingleToMultiString.set_upstring }
ProtoDeclare11.Node.AddRoute(StringSensor41.EventEnteredText, FieldVal64);
end;

procedure Initpp3Part5;
begin
{ ROUTE UpSingleToMultiString.uplines TO UpString.set_string }
ProtoDeclare11.Node.AddRoute(FieldVal65, Text40.FdString.EventIn);
{ ROUTE UpTouch.isOver TO UpSensor.set_enabled }
ProtoDeclare11.Node.AddRoute(TouchSensor42.EventIsOver, StringSensor41.FdEnabled.EventIn);
X3D0.AddPrototype(ProtoDeclare11);
NavigationInfo78 := TNavigationInfoNode.Create;
Group10.FdChildren.Add(NavigationInfo78);
Viewpoint79 := TViewpointNode.Create;
Viewpoint79.Description := 'Process pipes';
Viewpoint79.Orientation := Vector4(1, 0, 0, -0.4);
Viewpoint79.Position := Vector3(0, 5, 12);
Group10.FdChildren.Add(Viewpoint79);
Transform80 := TTransformNode.Create;
Transform80.Translation := Vector3(0, -2.5, 0);
ProtoInstance81 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
Transform80.FdChildren.Add(ProtoInstance81.Instantiate);
Group10.FdChildren.Add(Transform80);
Transform82 := TTransformNode.Create;
ProtoInstance83 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
Transform82.FdChildren.Add(ProtoInstance83.Instantiate);
Group10.FdChildren.Add(Transform82);
Transform84 := TTransformNode.Create;
Transform84.Translation := Vector3(0, 2.5, 0);
ProtoInstance85 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
Transform84.FdChildren.Add(ProtoInstance85.Instantiate);
Group10.FdChildren.Add(Transform84);
X3D0.AddChildren([Group10]);
end;

function Createpp3: TX3DRootNode;
var
  Binder: Tpp3ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript60List) do
    FreeAndNil(CompiledScript60List[_i]);
  SetLength(CompiledScript60List, 0);
  for _i := 0 to High(CompiledScript63List) do
    FreeAndNil(CompiledScript63List[_i]);
  SetLength(CompiledScript63List, 0);
  for _i := 0 to High(CompiledScript66List) do
    FreeAndNil(CompiledScript66List[_i]);
  SetLength(CompiledScript66List, 0);
  Initpp3Part0;
  Initpp3Part1;
  Initpp3Part2;
  Initpp3Part3;
  Initpp3Part4;
  Initpp3Part5;
  Binder := Tpp3ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registerpp3Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript60List) do
  begin
    CompiledScript60List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript60List[_i].Initialized) then
      CompiledScript60List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript63List) do
  begin
    CompiledScript63List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript63List[_i].Initialized) then
      CompiledScript63List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript66List) do
  begin
    CompiledScript66List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript66List[_i].Initialized) then
      CompiledScript66List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure Detachpp3Scripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript60List) do
  begin
    CompiledScript60List[_i].Detach;
    FreeAndNil(CompiledScript60List[_i]);
  end;
  SetLength(CompiledScript60List, 0);
  for _i := 0 to High(CompiledScript63List) do
  begin
    CompiledScript63List[_i].Detach;
    FreeAndNil(CompiledScript63List[_i]);
  end;
  SetLength(CompiledScript63List, 0);
  for _i := 0 to High(CompiledScript66List) do
  begin
    CompiledScript66List[_i].Detach;
    FreeAndNil(CompiledScript66List[_i]);
  end;
  SetLength(CompiledScript66List, 0);
end;

finalization
  while Length(CompiledScript60List) > 0 do
  begin
    FreeAndNil(CompiledScript60List[High(CompiledScript60List)]);
    SetLength(CompiledScript60List, Length(CompiledScript60List) - 1);
  end;
  while Length(CompiledScript63List) > 0 do
  begin
    FreeAndNil(CompiledScript63List[High(CompiledScript63List)]);
    SetLength(CompiledScript63List, Length(CompiledScript63List) - 1);
  end;
  while Length(CompiledScript66List) > 0 do
  begin
    FreeAndNil(CompiledScript66List[High(CompiledScript66List)]);
    SetLength(CompiledScript66List, Length(CompiledScript66List) - 1);
  end;
end.
