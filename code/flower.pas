unit flower;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createflower: TX3DRootNode;
procedure RegisterflowerScripts(const Scene: TCastleSceneCore);
procedure DetachflowerScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript18Script_MFVec3Array = array of TVector3;
  TScript18Script_MFInt32Array = array of Int32;
  TScript18Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Fcoordinates: TScript18Script_MFVec3Array;
    FEvent_coordinates: TX3DEvent;
    FBack_coordinates: TMFVec3f;
    FDirty_coordinates: Boolean;
    FcoordIndexes: TScript18Script_MFInt32Array;
    FEvent_coordIndexes: TX3DEvent;
    FBack_coordIndexes: TMFInt32;
    FDirty_coordIndexes: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AEvent_coordinates: TX3DEvent; const AEvent_coordIndexes: TX3DEvent);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript18Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure GenerateCoordinates(const resolution: Integer; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TflowerScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group7: TGroupNode;
  NavigationInfo8: TNavigationInfoNode;
  DirectionalLight9: TDirectionalLightNode;
  Background10: TBackgroundNode;
  Viewpoint11: TViewpointNode;
  Transform12: TTransformNode;
  Shape13: TShapeNode;
  Appearance14: TAppearanceNode;
  Material15: TMaterialNode;
  IndexedFaceSet16: TIndexedFaceSetNode;
  Coordinate17: TCoordinateNode;
  Script18: TScriptNode;
  FieldVal19: TX3DEvent;
  FieldVal20: TX3DEvent;
  FieldVal21: TX3DEvent;
  CompiledScript18List: array of TScript18Script;
  TimeSensor22: TTimeSensorNode;

constructor TScript18Script.Create(const AHandlerPrefix: String; const AEvent_coordinates: TX3DEvent; const AEvent_coordIndexes: TX3DEvent);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
  Fcoordinates := nil;
  FEvent_coordinates := nil;
  FBack_coordinates := TMFVec3f.CreateUndefined(nil, False, 'coordinates');
  FDirty_coordinates := False;
  FcoordIndexes := nil;
  FEvent_coordIndexes := nil;
  FBack_coordIndexes := TMFInt32.CreateUndefined(nil, False, 'coordIndexes');
  FDirty_coordIndexes := False;
  FEvent_coordinates := AEvent_coordinates;
  FEvent_coordIndexes := AEvent_coordIndexes;
end;

class function TScript18Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript18Script;
begin
  Result := TScript18Script.Create(AHandlerPrefix, AScriptNode.AnyEvent('coordinates'), AScriptNode.AnyEvent('coordIndexes'));
end;

destructor TScript18Script.Destroy;
begin
  FreeAndNil(FBack_coordinates);
  FreeAndNil(FBack_coordIndexes);
  inherited Destroy;
end;

procedure TScript18Script.Detach;
begin
end;

procedure TScript18Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_coordinates then
  begin
    FDirty_coordinates := False;
    if FEvent_coordinates <> nil then
    begin
      FBack_coordinates.Items.Clear;
      for _i := 0 to High(Fcoordinates) do
        FBack_coordinates.Items.Add(Fcoordinates[_i]);
      FEvent_coordinates.Send(FBack_coordinates, Time);
    end;
  end;
  if FDirty_coordIndexes then
  begin
    FDirty_coordIndexes := False;
    if FEvent_coordIndexes <> nil then
    begin
      FBack_coordIndexes.Items.Clear;
      for _i := 0 to High(FcoordIndexes) do
        FBack_coordIndexes.Items.Add(FcoordIndexes[_i]);
      FEvent_coordIndexes.Send(FBack_coordIndexes, Time);
    end;
  end;
end;

procedure TScript18Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript18Script.Initialize(Value: TX3DField; const Time: TX3DTime);
var
  localci: TScript18Script_MFInt32Array;
  arrIndex: Integer;
  i: Integer;
  j: Integer;
begin
  FScriptInitialized := True;
  GenerateCoordinates(resolution, Time);
  localci := [];
  arrIndex := 0;
  for i := 0 to (resolution - 1) - 1 do
  begin
    for j := 0 to (resolution - 1) - 1 do
    begin
      if (arrIndex) >= Length(localci) then SetLength(localci, (arrIndex) + 1);
      localci[arrIndex] := i * resolution + j;
      arrIndex := arrIndex + 1;
      if (arrIndex) >= Length(localci) then SetLength(localci, (arrIndex) + 1);
      localci[arrIndex] := i * resolution + j + 1;
      arrIndex := arrIndex + 1;
      if (arrIndex) >= Length(localci) then SetLength(localci, (arrIndex) + 1);
      localci[arrIndex] := (i + 1) * resolution + j + 1;
      arrIndex := arrIndex + 1;
      if (arrIndex) >= Length(localci) then SetLength(localci, (arrIndex) + 1);
      localci[arrIndex] := (i + 1) * resolution + j;
      arrIndex := arrIndex + 1;
      if (arrIndex) >= Length(localci) then SetLength(localci, (arrIndex) + 1);
      localci[arrIndex] := -1;
      arrIndex := arrIndex + 1;
    end;
  end;
  FcoordIndexes := localci;
  FDirty_coordIndexes := True;
  FlushOutputs(Time);
end;

procedure TScript18Script.GenerateCoordinates(const resolution: Integer; const Time: TX3DTime);
var
  theta: Single;
  phi: Single;
  delta: Single;
  localc: TScript18Script_MFVec3Array;
  arrIndex: Integer;
  i: Integer;
  j: Integer;
  rho: Single;
begin
  theta := 0.0;
  phi := 0.0;
  delta := 2 * 3.141592653 / (resolution - 1);
  localc := [];
  arrIndex := 0;
  for i := 0 to (resolution) - 1 do
  begin
    for j := 0 to (resolution) - 1 do
    begin
      rho := e + f * Cos(g * theta) * Cos(h * phi);
      if (arrIndex) >= Length(localc) then SetLength(localc, (arrIndex) + 1);
      localc[arrIndex] := Vector3(rho * Cos(phi) * Cos(theta), rho * Cos(phi) * Sin(theta), rho * Sin(phi));
      arrIndex := arrIndex + 1;
      theta := theta + (delta);
    end;
    phi := phi + (delta);
  end;
  Fcoordinates := localc;
  FDirty_coordinates := True;
end;

procedure TScript18Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
var
  choice: Integer;
  f: Integer;
  g: Integer;
  h: Integer;
begin
  t := t + (0.5);
  p := p + (0.5);
  choice := Floor(Random * 4);
  case choice of
    0:
    begin
      e := e + (Floor(Random * 2) * 2 - 1);
    end;
    1:
    begin
      f := f + (Floor(Random * 2) * 2 - 1);
    end;
    2:
    begin
      g := g + (Floor(Random * 2) * 2 - 1);
    end;
    3:
    begin
      h := h + (Floor(Random * 2) * 2 - 1);
    end;
  end;
  if f < 1 then
  begin
    f := 10;
  end;
  if g < 1 then
  begin
    g := 4;
  end;
  if h < 1 then
  begin
    h := 4;
  end;
  GenerateCoordinates(resolution, Time);
  FlushOutputs(Time);
end;

procedure TflowerScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script18_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript18List);
    Prefix := 'Script18_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript18List, Idx + 1);
    CompiledScript18List[Idx] := TScript18Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitflowerPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'flower.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/flower.x3d';
X3D0.Meta['description'] := 'a flower';
Group7 := TGroupNode.Create;
NavigationInfo8 := TNavigationInfoNode.Create;
Group7.FdChildren.Add(NavigationInfo8);
DirectionalLight9 := TDirectionalLightNode.Create;
DirectionalLight9.Direction := Vector3(0, -0.8, -0.2);
DirectionalLight9.Intensity := 0.5;
Group7.FdChildren.Add(DirectionalLight9);
Background10 := TBackgroundNode.Create;
Background10.SetSkyColor([Vector3(1, 1, 1)]);
Group7.FdChildren.Add(Background10);
Viewpoint11 := TViewpointNode.Create;
Viewpoint11.Description := 'One mathematical orbital';
Viewpoint11.Position := Vector3(0, 0, 50);
Group7.FdChildren.Add(Viewpoint11);
Transform12 := TTransformNode.Create;
Transform12.Translation := Vector3(0, -1, 1);
Transform12.Rotation := Vector4(0, 1, 0, 3.1415926);
Transform12.Scale := Vector3(1.5, 1.5, 1.5);
Shape13 := TShapeNode.Create;
Appearance14 := TAppearanceNode.Create;
Material15 := TMaterialNode.Create;
Material15.Transparency := 0.1;
Material15.DiffuseColor := Vector3(0.9, 0.3, 0.3);
Material15.SpecularColor := Vector3(0.8, 0.8, 0.8);
Material15.Shininess := 0.145;
Appearance14.Material := Material15;
Shape13.Appearance := Appearance14;
IndexedFaceSet16 := TIndexedFaceSetNode.Create;
IndexedFaceSet16.Ccw := False;
IndexedFaceSet16.Convex := False;
IndexedFaceSet16.SetCoordIndex([0, 1, 2, -1]);
end;

procedure InitflowerPart1;
begin
IndexedFaceSet16.X3DName := 'Orbit';
Coordinate17 := TCoordinateNode.Create;
Coordinate17.X3DName := 'OrbitCoordinates';
Coordinate17.SetPoint([Vector3(0, 0, 1), Vector3(0, 1, 0), Vector3(1, 0, 0)]);
IndexedFaceSet16.Coord := Coordinate17;
Shape13.Geometry := IndexedFaceSet16;
Transform12.FdChildren.Add(Shape13);
Group7.FdChildren.Add(Transform12);
Script18 := TScriptNode.Create;
Script18.X3DName := 'OrbitScript';
FieldVal19 := TSFFloat.CreateEvent(Script18, 'set_fraction', True);
Script18.AddCustomFieldOrEvent(FieldVal19);
FieldVal20 := TMFVec3f.CreateEvent(Script18, 'coordinates', False);
Script18.AddCustomFieldOrEvent(FieldVal20);
FieldVal21 := TMFInt32.CreateEvent(Script18, 'coordIndexes', False);
Script18.AddCustomFieldOrEvent(FieldVal21);
{ <field accessType="inputOutput" name="e" type="SFFloat" value="5"/> }
{ <field accessType="inputOutput" name="f" type="SFFloat" value="5"/> }
{ <field accessType="inputOutput" name="g" type="SFFloat" value="5"/> }
{ <field accessType="inputOutput" name="h" type="SFFloat" value="5"/> }
{ <field accessType="inputOutput" name="t" type="SFFloat" value="0"/> }
{ <field accessType="inputOutput" name="p" type="SFFloat" value="0"/> }
{ <field accessType="inputOutput" name="resolution" type="SFInt32" value="150"/> }
Script18.SetUrl(['compiled:' + LineEnding +
  'initialize=Script18_initialize' + LineEnding +
  'set_fraction=Script18_set_fraction']);
Group7.FdChildren.Add(Script18);
TimeSensor22 := TTimeSensorNode.Create;
TimeSensor22.X3DName := 'Clock';
TimeSensor22.CycleInterval := 16;
TimeSensor22.Loop := True;
Group7.FdChildren.Add(TimeSensor22);
{ ROUTE OrbitScript.coordIndexes TO Orbit.set_coordIndex }
Group7.AddRoute(FieldVal21, IndexedFaceSet16.EventSet_coordIndex);
{ ROUTE OrbitScript.coordinates TO OrbitCoordinates.point }
Group7.AddRoute(FieldVal20, Coordinate17.FdPoint.EventIn);
{ ROUTE Clock.fraction_changed TO OrbitScript.set_fraction }
Group7.AddRoute(TimeSensor22.EventFraction_changed, FieldVal19);
X3D0.AddChildren([Group7]);
end;

function Createflower: TX3DRootNode;
var
  Binder: TflowerScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript18List) do
    FreeAndNil(CompiledScript18List[_i]);
  SetLength(CompiledScript18List, 0);
  InitflowerPart0;
  InitflowerPart1;
  Binder := TflowerScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterflowerScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript18List) do
  begin
    CompiledScript18List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript18List[_i].Initialized) then
      CompiledScript18List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure DetachflowerScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript18List) do
  begin
    CompiledScript18List[_i].Detach;
    FreeAndNil(CompiledScript18List[_i]);
  end;
  SetLength(CompiledScript18List, 0);
end;

finalization
  while Length(CompiledScript18List) > 0 do
  begin
    FreeAndNil(CompiledScript18List[High(CompiledScript18List)]);
    SetLength(CompiledScript18List, Length(CompiledScript18List) - 1);
  end;
end.
