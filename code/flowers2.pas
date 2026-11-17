unit flowers2;

interface

uses X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createflowers2: TX3DRootNode;
procedure Registerflowers2Scripts(const Scene: TCastleSceneCore);

implementation

uses Classes, SysUtils, X3DLoad, CastleVectors, Math, X3DTime;

function CreateEmptyPrototype(const AName: String): TX3DPrototype;
var
  Stream: TStringStream;
  TempRoot: TX3DRootNode;
  CopyState: TX3DNodeDeepCopyState;
begin
  Stream := TStringStream.Create('#X3D V4.0 utf8' + LineEnding + 'PROTO ' + AName + ' [] {}');
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
  TScript32Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fcoordinates: array of TVector3;
    FField_coordinates: TMFVec3f;
    FBack_coordinates: TMFVec3f;
    FDirty_coordinates: Boolean;
    FcoordIndexes: array of Int32;
    FField_coordIndexes: TMFInt32;
    FBack_coordIndexes: TMFInt32;
    FDirty_coordIndexes: Boolean;
    Fe: Single;
    FField_e: TSFFloat;
    FBack_e: TSFFloat;
    FDirty_e: Boolean;
    Ff: Single;
    FField_f: TSFFloat;
    FBack_f: TSFFloat;
    FDirty_f: Boolean;
    Fg: Single;
    FField_g: TSFFloat;
    FBack_g: TSFFloat;
    FDirty_g: Boolean;
    Fh: Single;
    FField_h: TSFFloat;
    FBack_h: TSFFloat;
    FDirty_h: Boolean;
    Fresolution: Int32;
    FField_resolution: TSFInt32;
    FBack_resolution: TSFInt32;
    FDirty_resolution: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_coordinates: TMFVec3f; const AField_coordIndexes: TMFInt32; const AField_e: TSFFloat; const AField_f: TSFFloat; const AField_g: TSFFloat; const AField_h: TSFFloat; const AField_resolution: TSFInt32);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript32Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure GenerateCoordinates(const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  Tflowers2ScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group11: TGroupNode;
  NavigationInfo12: TNavigationInfoNode;
  Viewpoint13: TViewpointNode;
  Group14: TGroupNode;
  DirectionalLight15: TDirectionalLightNode;
  ProtoDeclare16: TX3DPrototype;
  FieldDecl18: TX3DInterfaceDeclaration;
  FieldVal18: TSFVec3f;
  FieldDecl19: TX3DInterfaceDeclaration;
  FieldVal19: TSFColor;
  FieldDecl20: TX3DInterfaceDeclaration;
  FieldVal20: TSFColor;
  FieldDecl21: TX3DInterfaceDeclaration;
  FieldVal21: TSFFloat;
  Group23: TGroupNode;
  TimeSensor24: TTimeSensorNode;
  OrientationInterpolator25: TOrientationInterpolatorNode;
  Transform26: TTransformNode;
  Shape27: TShapeNode;
  Appearance28: TAppearanceNode;
  Material29: TMaterialNode;
  IndexedFaceSet30: TIndexedFaceSetNode;
  Coordinate31: TCoordinateNode;
  Script32: TScriptNode;
  FieldVal33: TX3DEvent;
  FieldVal34: TMFVec3f;
  FieldVal35: TMFInt32;
  FieldVal36: TSFFloat;
  FieldVal37: TSFFloat;
  FieldVal38: TSFFloat;
  FieldVal39: TSFFloat;
  FieldVal40: TSFInt32;
  CompiledScript32List: array of TScript32Script;
  ProtoInstance46: TX3DPrototypeNode;
  ProtoInstance51: TX3DPrototypeNode;

constructor TScript32Script.Create(const AHandlerPrefix: String; const AField_coordinates: TMFVec3f; const AField_coordIndexes: TMFInt32; const AField_e: TSFFloat; const AField_f: TSFFloat; const AField_g: TSFFloat; const AField_h: TSFFloat; const AField_resolution: TSFInt32);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fcoordinates := nil;
  FField_coordinates := nil;
  FBack_coordinates := TMFVec3f.CreateUndefined(nil, False, 'coordinates');
  FDirty_coordinates := False;
  FcoordIndexes := nil;
  FField_coordIndexes := nil;
  FBack_coordIndexes := TMFInt32.CreateUndefined(nil, False, 'coordIndexes');
  FDirty_coordIndexes := False;
  Fe := 0.0;
  FField_e := nil;
  FBack_e := TSFFloat.Create(nil, False, 'e', 0.0);
  FDirty_e := False;
  Ff := 0.0;
  FField_f := nil;
  FBack_f := TSFFloat.Create(nil, False, 'f', 0.0);
  FDirty_f := False;
  Fg := 0.0;
  FField_g := nil;
  FBack_g := TSFFloat.Create(nil, False, 'g', 0.0);
  FDirty_g := False;
  Fh := 0.0;
  FField_h := nil;
  FBack_h := TSFFloat.Create(nil, False, 'h', 0.0);
  FDirty_h := False;
  Fresolution := 0;
  FField_resolution := nil;
  FBack_resolution := TSFInt32.Create(nil, False, 'resolution', 0);
  FDirty_resolution := False;
  FField_coordinates := AField_coordinates;
  if AField_coordinates <> nil then
  begin
    SetLength(Fcoordinates, AField_coordinates.Items.Count);
    for _i := 0 to AField_coordinates.Items.Count - 1 do
      Fcoordinates[_i] := AField_coordinates.Items[_i];
  end;
  FField_coordIndexes := AField_coordIndexes;
  if AField_coordIndexes <> nil then
  begin
    SetLength(FcoordIndexes, AField_coordIndexes.Items.Count);
    for _i := 0 to AField_coordIndexes.Items.Count - 1 do
      FcoordIndexes[_i] := AField_coordIndexes.Items[_i];
  end;
  FField_e := AField_e;
  if AField_e <> nil then Fe := AField_e.Value;
  FField_f := AField_f;
  if AField_f <> nil then Ff := AField_f.Value;
  FField_g := AField_g;
  if AField_g <> nil then Fg := AField_g.Value;
  FField_h := AField_h;
  if AField_h <> nil then Fh := AField_h.Value;
  FField_resolution := AField_resolution;
  if AField_resolution <> nil then Fresolution := AField_resolution.Value;
end;

class function TScript32Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript32Script;
begin
  Result := TScript32Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('coordinates') as TMFVec3f, AScriptNode.FieldOrEvent('coordIndexes') as TMFInt32, AScriptNode.FieldOrEvent('e') as TSFFloat, AScriptNode.FieldOrEvent('f') as TSFFloat, AScriptNode.FieldOrEvent('g') as TSFFloat, AScriptNode.FieldOrEvent('h') as TSFFloat, AScriptNode.FieldOrEvent('resolution') as TSFInt32);
end;

destructor TScript32Script.Destroy;
begin
  FreeAndNil(FBack_coordinates);
  FreeAndNil(FBack_coordIndexes);
  FreeAndNil(FBack_e);
  FreeAndNil(FBack_f);
  FreeAndNil(FBack_g);
  FreeAndNil(FBack_h);
  FreeAndNil(FBack_resolution);
  inherited Destroy;
end;

procedure TScript32Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_coordinates then
  begin
    FDirty_coordinates := False;
    if FField_coordinates <> nil then
    begin
      FField_coordinates.Items.Clear;
      FBack_coordinates.Items.Clear;
      for _i := 0 to High(Fcoordinates) do
      begin
        FField_coordinates.Items.Add(Fcoordinates[_i]);
        FBack_coordinates.Items.Add(Fcoordinates[_i]);
      end;
      if (FField_coordinates.ParentNode is TX3DNode) and (TX3DNode(FField_coordinates.ParentNode).Scene <> nil) then
        FField_coordinates.EventOut.Send(FBack_coordinates, TX3DNode(FField_coordinates.ParentNode).Scene.NextEventTime)
      else
        FField_coordinates.EventOut.Send(FBack_coordinates, Time);
    end;
  end;
  if FDirty_coordIndexes then
  begin
    FDirty_coordIndexes := False;
    if FField_coordIndexes <> nil then
    begin
      FField_coordIndexes.Items.Clear;
      FBack_coordIndexes.Items.Clear;
      for _i := 0 to High(FcoordIndexes) do
      begin
        FField_coordIndexes.Items.Add(FcoordIndexes[_i]);
        FBack_coordIndexes.Items.Add(FcoordIndexes[_i]);
      end;
      if (FField_coordIndexes.ParentNode is TX3DNode) and (TX3DNode(FField_coordIndexes.ParentNode).Scene <> nil) then
        FField_coordIndexes.EventOut.Send(FBack_coordIndexes, TX3DNode(FField_coordIndexes.ParentNode).Scene.NextEventTime)
      else
        FField_coordIndexes.EventOut.Send(FBack_coordIndexes, Time);
    end;
  end;
  if FDirty_e then
  begin
    FDirty_e := False;
    if FField_e <> nil then
    begin
      FField_e.Value := Fe;
      FBack_e.Value := Fe;
      if (FField_e.ParentNode is TX3DNode) and (TX3DNode(FField_e.ParentNode).Scene <> nil) then
        FField_e.EventOut.Send(FBack_e, TX3DNode(FField_e.ParentNode).Scene.NextEventTime)
      else
        FField_e.EventOut.Send(FBack_e, Time);
    end;
  end;
  if FDirty_f then
  begin
    FDirty_f := False;
    if FField_f <> nil then
    begin
      FField_f.Value := Ff;
      FBack_f.Value := Ff;
      if (FField_f.ParentNode is TX3DNode) and (TX3DNode(FField_f.ParentNode).Scene <> nil) then
        FField_f.EventOut.Send(FBack_f, TX3DNode(FField_f.ParentNode).Scene.NextEventTime)
      else
        FField_f.EventOut.Send(FBack_f, Time);
    end;
  end;
  if FDirty_g then
  begin
    FDirty_g := False;
    if FField_g <> nil then
    begin
      FField_g.Value := Fg;
      FBack_g.Value := Fg;
      if (FField_g.ParentNode is TX3DNode) and (TX3DNode(FField_g.ParentNode).Scene <> nil) then
        FField_g.EventOut.Send(FBack_g, TX3DNode(FField_g.ParentNode).Scene.NextEventTime)
      else
        FField_g.EventOut.Send(FBack_g, Time);
    end;
  end;
  if FDirty_h then
  begin
    FDirty_h := False;
    if FField_h <> nil then
    begin
      FField_h.Value := Fh;
      FBack_h.Value := Fh;
      if (FField_h.ParentNode is TX3DNode) and (TX3DNode(FField_h.ParentNode).Scene <> nil) then
        FField_h.EventOut.Send(FBack_h, TX3DNode(FField_h.ParentNode).Scene.NextEventTime)
      else
        FField_h.EventOut.Send(FBack_h, Time);
    end;
  end;
  if FDirty_resolution then
  begin
    FDirty_resolution := False;
    if FField_resolution <> nil then
    begin
      FField_resolution.Value := Fresolution;
      FBack_resolution.Value := Fresolution;
      if (FField_resolution.ParentNode is TX3DNode) and (TX3DNode(FField_resolution.ParentNode).Scene <> nil) then
        FField_resolution.EventOut.Send(FBack_resolution, TX3DNode(FField_resolution.ParentNode).Scene.NextEventTime)
      else
        FField_resolution.EventOut.Send(FBack_resolution, Time);
    end;
  end;
end;

procedure TScript32Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript32Script.Initialize(Value: TX3DField; const Time: TX3DTime);
var
  arrIndex: Integer;
  i: Integer;
  j: Integer;
begin
  FInitialized := True;
  GenerateCoordinates(Time);
  arrIndex := 0;
  for i := 0 to (Fresolution - 1) - 1 do
  begin
    for j := 0 to (Fresolution - 1) - 1 do
    begin
      if (arrIndex) >= Length(FcoordIndexes) then SetLength(FcoordIndexes, (arrIndex) + 1);
      FcoordIndexes[arrIndex] := i * Fresolution + j;
      arrIndex := arrIndex + 1;
      FDirty_coordIndexes := True;
      if (arrIndex) >= Length(FcoordIndexes) then SetLength(FcoordIndexes, (arrIndex) + 1);
      FcoordIndexes[arrIndex] := i * Fresolution + j + 1;
      arrIndex := arrIndex + 1;
      FDirty_coordIndexes := True;
      if (arrIndex) >= Length(FcoordIndexes) then SetLength(FcoordIndexes, (arrIndex) + 1);
      FcoordIndexes[arrIndex] := (i + 1) * Fresolution + j + 1;
      arrIndex := arrIndex + 1;
      FDirty_coordIndexes := True;
      if (arrIndex) >= Length(FcoordIndexes) then SetLength(FcoordIndexes, (arrIndex) + 1);
      FcoordIndexes[arrIndex] := (i + 1) * Fresolution + j;
      arrIndex := arrIndex + 1;
      FDirty_coordIndexes := True;
      if (arrIndex) >= Length(FcoordIndexes) then SetLength(FcoordIndexes, (arrIndex) + 1);
      FcoordIndexes[arrIndex] := -1;
      arrIndex := arrIndex + 1;
      FDirty_coordIndexes := True;
    end;
  end;
  FlushOutputs(Time);
end;

procedure TScript32Script.GenerateCoordinates(const Time: TX3DTime);
var
  theta: Single;
  phi: Single;
  delta: Single;
  arrIndex: Integer;
  i: Integer;
  j: Integer;
  rho: Single;
begin
  theta := 0.0;
  phi := 0.0;
  delta := 2 * 3.141592653 / (Fresolution - 1);
  arrIndex := 0;
  for i := 0 to (Fresolution) - 1 do
  begin
    for j := 0 to (Fresolution) - 1 do
    begin
      rho := Fe + Ff * Cos(Fg * theta) * Cos(Fh * phi);
      if (arrIndex) >= Length(Fcoordinates) then SetLength(Fcoordinates, (arrIndex) + 1);
      Fcoordinates[arrIndex] := Vector3(rho * Cos(phi) * Cos(theta), rho * Cos(phi) * Sin(theta), rho * Sin(phi));
      arrIndex := arrIndex + 1;
      FDirty_coordinates := True;
      theta := theta + (delta);
    end;
    phi := phi + (delta);
  end;
end;

procedure TScript32Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
var
  choice: Integer;
begin
  choice := Floor(Random * 4);
  case choice of
    0:
    begin
      Fe := Fe + (Floor(Random * 2) * 2 - 1);
      FDirty_e := True;
    end;
    1:
    begin
      Ff := Ff + (Floor(Random * 2) * 2 - 1);
      FDirty_f := True;
    end;
    2:
    begin
      Fg := Fg + (Floor(Random * 2) * 2 - 1);
      FDirty_g := True;
    end;
    3:
    begin
      Fh := Fh + (Floor(Random * 2) * 2 - 1);
      FDirty_h := True;
    end;
  end;
  if Fe < 1 then
  begin
    Ff := 10;
    FDirty_f := True;
  end;
  if Ff < 1 then
  begin
    Ff := 10;
    FDirty_f := True;
  end;
  if Fg < 1 then
  begin
    Fg := 4;
    FDirty_g := True;
  end;
  if Fh < 1 then
  begin
    Fh := 4;
    FDirty_h := True;
  end;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure Tflowers2ScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script32_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript32List);
    Prefix := 'Script32_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript32List, Idx + 1);
    CompiledScript32List[Idx] := TScript32Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Initflowers2Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Scripting'] := 1;
X3D0.Meta['title'] := 'flowers2.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['created'] := '23 January 2005';
X3D0.Meta['modified'] := '9 November 2024';
X3D0.Meta['description'] := '2 random mathematical roses in spherical dimensions. rho = a + b * cos(c * theta) * cos(d * phi)';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/flowers2.x3d';
X3D0.Meta['generator'] := 'manually written';
X3D0.Meta['license'] := 'https://www.web3d.org/x3d/content/examples/license.html';
Group11 := TGroupNode.Create;
NavigationInfo12 := TNavigationInfoNode.Create;
Group11.FdChildren.Add(NavigationInfo12);
Viewpoint13 := TViewpointNode.Create;
Viewpoint13.Description := 'Two mathematical orbitals';
Viewpoint13.Position := Vector3(0, 0, 50);
Group11.FdChildren.Add(Viewpoint13);
Group14 := TGroupNode.Create;
DirectionalLight15 := TDirectionalLightNode.Create;
DirectionalLight15.Direction := Vector3(1, 1, 1);
Group14.FdChildren.Add(DirectionalLight15);
ProtoDeclare16 := CreateEmptyPrototype('orbit');
ProtoDeclare16.X3DName := 'orbit';
FieldVal18 := TSFVec3f.Create(nil, True, 'translation', Vector3(-8, 0, 0));
FieldDecl18 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl18.FieldOrEvent := FieldVal18;
FieldVal18.ParentInterfaceDeclaration := FieldDecl18;
ProtoDeclare16.InterfaceDeclarations.Add(FieldDecl18);
FieldVal19 := TSFColor.Create(nil, True, 'diffuseColor', Vector3(1, 0.5, 0));
FieldDecl19 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl19.FieldOrEvent := FieldVal19;
FieldVal19.ParentInterfaceDeclaration := FieldDecl19;
ProtoDeclare16.InterfaceDeclarations.Add(FieldDecl19);
FieldVal20 := TSFColor.Create(nil, True, 'specularColor', Vector3(1, 0.5, 0));
FieldDecl20 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl20.FieldOrEvent := FieldVal20;
FieldVal20.ParentInterfaceDeclaration := FieldDecl20;
end;

procedure Initflowers2Part1;
begin
ProtoDeclare16.InterfaceDeclarations.Add(FieldDecl20);
FieldVal21 := TSFFloat.Create(nil, True, 'transparency', 0.75);
FieldDecl21 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl21.FieldOrEvent := FieldVal21;
FieldVal21.ParentInterfaceDeclaration := FieldDecl21;
ProtoDeclare16.InterfaceDeclarations.Add(FieldDecl21);
Group23 := TGroupNode.Create;
TimeSensor24 := TTimeSensorNode.Create;
TimeSensor24.X3DName := 'Clock';
TimeSensor24.CycleInterval := 16;
TimeSensor24.Loop := True;
Group23.FdChildren.Add(TimeSensor24);
OrientationInterpolator25 := TOrientationInterpolatorNode.Create;
OrientationInterpolator25.X3DName := 'OrbitPath';
OrientationInterpolator25.SetKey([0, 0.5, 1]);
OrientationInterpolator25.SetKeyValue([Vector4(1, 0, 0, 0), Vector4(1, 0, 0, 3.14), Vector4(1, 0, 0, 6.28)]);
Group23.FdChildren.Add(OrientationInterpolator25);
Transform26 := TTransformNode.Create;
Transform26.X3DName := 'OrbitTransform';
Transform26.FieldOrEvent('translation', True).IsClauseNamesAdd('translation');
Shape27 := TShapeNode.Create;
Appearance28 := TAppearanceNode.Create;
Material29 := TMaterialNode.Create;
Material29.FieldOrEvent('diffuseColor', True).IsClauseNamesAdd('diffuseColor');
Material29.FieldOrEvent('specularColor', True).IsClauseNamesAdd('specularColor');
Material29.FieldOrEvent('transparency', True).IsClauseNamesAdd('transparency');
Appearance28.Material := Material29;
Shape27.Appearance := Appearance28;
{ <IndexedFaceSet DEF="Orbit"> }
{ <Coordinate DEF="OrbitCoordinates"/> }
{ </IndexedFaceSet> }
IndexedFaceSet30 := TIndexedFaceSetNode.Create;
IndexedFaceSet30.Ccw := False;
IndexedFaceSet30.Convex := False;
IndexedFaceSet30.SetCoordIndex([0, 1, 2, -1]);
IndexedFaceSet30.X3DName := 'Orbit';
Coordinate31 := TCoordinateNode.Create;
Coordinate31.X3DName := 'OrbitCoordinates';
Coordinate31.SetPoint([Vector3(0, 0, 1), Vector3(0, 1, 0), Vector3(1, 0, 0)]);
IndexedFaceSet30.Coord := Coordinate31;
end;

procedure Initflowers2Part2;
begin
Shape27.Geometry := IndexedFaceSet30;
Transform26.FdChildren.Add(Shape27);
Group23.FdChildren.Add(Transform26);
Script32 := TScriptNode.Create;
Script32.X3DName := 'OrbitScript';
FieldVal33 := TSFFloat.CreateEvent(Script32, 'set_fraction', True);
Script32.AddCustomFieldOrEvent(FieldVal33);
FieldVal34 := TMFVec3f.CreateUndefined(Script32, True, 'coordinates');
Script32.AddCustomFieldOrEvent(FieldVal34);
FieldVal35 := TMFInt32.CreateUndefined(Script32, True, 'coordIndexes');
Script32.AddCustomFieldOrEvent(FieldVal35);
FieldVal36 := TSFFloat.Create(Script32, True, 'e', 5);
Script32.AddCustomFieldOrEvent(FieldVal36);
FieldVal37 := TSFFloat.Create(Script32, True, 'f', 5);
Script32.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFFloat.Create(Script32, True, 'g', 5);
Script32.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TSFFloat.Create(Script32, True, 'h', 5);
Script32.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TSFInt32.Create(Script32, True, 'resolution', 50);
Script32.AddCustomFieldOrEvent(FieldVal40);
Script32.SetUrl(['compiled:' + LineEnding +
  'initialize=Script32_initialize' + LineEnding +
  'set_fraction=Script32_set_fraction']);
Group23.FdChildren.Add(Script32);
{ ROUTE OrbitScript.coordIndexes TO Orbit.set_coordIndex }
Group23.AddRoute(FieldVal35.EventOut, IndexedFaceSet30.EventSet_coordIndex);
{ ROUTE OrbitScript.coordinates TO OrbitCoordinates.point }
Group23.AddRoute(FieldVal34.EventOut, Coordinate31.FdPoint.EventIn);
{ ROUTE Clock.fraction_changed TO OrbitScript.set_fraction }
Group23.AddRoute(TimeSensor24.EventFraction_changed, FieldVal33);
{ ROUTE OrbitPath.value_changed TO OrbitTransform.rotation }
Group23.AddRoute(OrientationInterpolator25.EventValue_changed, Transform26.FdRotation.EventIn);
{ ROUTE Clock.fraction_changed TO OrbitPath.set_fraction }
Group23.AddRoute(TimeSensor24.EventFraction_changed, OrientationInterpolator25.EventSet_fraction);
ProtoDeclare16.Node.AddChildren([Group23]);
X3D0.AddPrototype(ProtoDeclare16);
ProtoInstance46 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare16);
(ProtoInstance46.Field('translation') as TSFVec3f).Value := Vector3(-8, 0, 0);
(ProtoInstance46.Field('diffuseColor') as TSFColor).Value := Vector3(1, 0.5, 0);
(ProtoInstance46.Field('specularColor') as TSFColor).Value := Vector3(1, 0.5, 0);
(ProtoInstance46.Field('transparency') as TSFFloat).Value := 0.75;
end;

procedure Initflowers2Part3;
begin
Group14.FdChildren.Add(ProtoInstance46.Instantiate);
ProtoInstance51 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare16);
(ProtoInstance51.Field('translation') as TSFVec3f).Value := Vector3(8, 0, 0);
(ProtoInstance51.Field('diffuseColor') as TSFColor).Value := Vector3(0, 0.5, 1);
(ProtoInstance51.Field('specularColor') as TSFColor).Value := Vector3(0, 0.5, 1);
(ProtoInstance51.Field('transparency') as TSFFloat).Value := 0.5;
Group14.FdChildren.Add(ProtoInstance51.Instantiate);
Group11.FdChildren.Add(Group14);
X3D0.AddChildren([Group11]);
end;

function Createflowers2: TX3DRootNode;
var
  Binder: Tflowers2ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript32List) do
    FreeAndNil(CompiledScript32List[_i]);
  SetLength(CompiledScript32List, 0);
  Initflowers2Part0;
  Initflowers2Part1;
  Initflowers2Part2;
  Initflowers2Part3;
  Binder := Tflowers2ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registerflowers2Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript32List) do
  begin
    CompiledScript32List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript32List[_i].Initialized) then
      CompiledScript32List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

finalization
  while Length(CompiledScript32List) > 0 do
  begin
    FreeAndNil(CompiledScript32List[High(CompiledScript32List)]);
    SetLength(CompiledScript32List, Length(CompiledScript32List) - 1);
  end;
end.
