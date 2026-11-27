unit geobubbles;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, HAnimDisplacerSupport, CastleSceneCore;

function Creategeobubbles: TX3DRootNode;
procedure RegistergeobubblesScripts(const Scene: TCastleSceneCore);
procedure DetachgeobubblesScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript18Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fval: Single;
    FField_val: TSFFloat;
    FBack_val: TSFFloat;
    FDirty_val: Boolean;
    Fpositions: Single;
    FField_positions: TMFVec3d;
    FBack_positions: TMFVec3d;
    FDirty_positions: Boolean;
    Fposition: Single;
    FField_position: TMFVec3d;
    FBack_position: TMFVec3d;
    FDirty_position: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_val: TSFFloat; const AField_positions: TMFVec3d; const AField_position: TMFVec3d);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript18Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_cycle(Value: TX3DField; const Time: TX3DTime);
  end;

  TgeobubblesScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group8: TGroupNode;
  GeoViewpoint9: TGeoViewpointNode;
  Background10: TBackgroundNode;
  Transform11: TTransformNode;
  Shape12: TShapeNode;
  Sphere13: TSphereNode;
  Appearance14: TAppearanceNode;
  Material15: TMaterialNode;
  TimeSensor16: TTimeSensorNode;
  GeoPositionInterpolator17: TGeoPositionInterpolatorNode;
  Script18: TScriptNode;
  FieldVal19: TX3DEvent;
  FieldVal20: TSFFloat;
  FieldVal21: TMFVec3d;
  FieldVal22: TMFVec3d;
  CompiledScript18List: array of TScript18Script;

constructor TScript18Script.Create(const AHandlerPrefix: String; const AField_val: TSFFloat; const AField_positions: TMFVec3d; const AField_position: TMFVec3d);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fval := 0.0;
  FField_val := nil;
  FBack_val := TSFFloat.Create(nil, False, 'val', 0.0);
  FDirty_val := False;
  Fpositions := nil;
  FField_positions := nil;
  FBack_positions := TMFVec3d.CreateUndefined(nil, False, 'positions');
  FDirty_positions := False;
  Fposition := nil;
  FField_position := nil;
  FBack_position := TMFVec3d.CreateUndefined(nil, False, 'position');
  FDirty_position := False;
  FField_val := AField_val;
  if AField_val <> nil then Fval := AField_val.Value;
  FField_positions := AField_positions;
  if AField_positions <> nil then
  begin
    SetLength(Fpositions, AField_positions.Items.Count);
    for _i := 0 to AField_positions.Items.Count - 1 do
      Fpositions[_i] := AField_positions.Items[_i];
  end;
  FField_position := AField_position;
  if AField_position <> nil then
  begin
    SetLength(Fposition, AField_position.Items.Count);
    for _i := 0 to AField_position.Items.Count - 1 do
      Fposition[_i] := AField_position.Items[_i];
  end;
end;

class function TScript18Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript18Script;
begin
  Result := TScript18Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('val') as TSFFloat, AScriptNode.FieldOrEvent('positions') as TMFVec3d, AScriptNode.FieldOrEvent('position') as TMFVec3d);
end;

destructor TScript18Script.Destroy;
begin
  FreeAndNil(FBack_val);
  FreeAndNil(FBack_positions);
  FreeAndNil(FBack_position);
  inherited Destroy;
end;

procedure TScript18Script.Detach;
begin
end;

procedure TScript18Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_val then
  begin
    FDirty_val := False;
    if FField_val <> nil then
    begin
      FField_val.Value := Fval;
      FBack_val.Value := Fval;
      if (FField_val.ParentNode is TX3DNode) and (TX3DNode(FField_val.ParentNode).Scene <> nil) then
        FField_val.EventOut.Send(FBack_val, TX3DNode(FField_val.ParentNode).Scene.NextEventTime)
      else
        FField_val.EventOut.Send(FBack_val, Time);
    end;
  end;
  if FDirty_positions then
  begin
    FDirty_positions := False;
    if FField_positions <> nil then
    begin
      FField_positions.Items.Clear;
      FBack_positions.Items.Clear;
      for _i := 0 to High(Fpositions) do
      begin
        FField_positions.Items.Add(Fpositions[_i]);
        FBack_positions.Items.Add(Fpositions[_i]);
      end;
      if (FField_positions.ParentNode is TX3DNode) and (TX3DNode(FField_positions.ParentNode).Scene <> nil) then
        FField_positions.EventOut.Send(FBack_positions, TX3DNode(FField_positions.ParentNode).Scene.NextEventTime)
      else
        FField_positions.EventOut.Send(FBack_positions, Time);
    end;
  end;
  if FDirty_position then
  begin
    FDirty_position := False;
    if FField_position <> nil then
    begin
      FField_position.Items.Clear;
      FBack_position.Items.Clear;
      for _i := 0 to High(Fposition) do
      begin
        FField_position.Items.Add(Fposition[_i]);
        FBack_position.Items.Add(Fposition[_i]);
      end;
      if (FField_position.ParentNode is TX3DNode) and (TX3DNode(FField_position.ParentNode).Scene <> nil) then
        FField_position.EventOut.Send(FBack_position, TX3DNode(FField_position.ParentNode).Scene.NextEventTime)
      else
        FField_position.EventOut.Send(FBack_position, Time);
    end;
  end;
end;

procedure TScript18Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_cycle', {$ifdef FPC}@{$endif}Set_cycle);
end;

procedure TScript18Script.Set_cycle(Value: TX3DField; const Time: TX3DTime);
var
  cartesianMult: Single;
  ov: Single;
  vc: Single;
begin
  cartesianMult := -150;
  ov := Fval;
  repeat
    Fval := Floor(Random * 2);
    FDirty_val := True;
    vc := Fval;
    if (vc) >= Length(Fpositions) then SetLength(Fpositions, (vc) + 1);
    Fpositions[vc] := Vector3Double(Round(Random * 2) * 0.0015708 * cartesianMult, Round(Random * 2) * 0.0015708 * cartesianMult, 4);
    FDirty_positions := True;
  until not (((Fpositions[ov][0] = Fpositions[vc][0]) and (Fpositions[ov][1] = Fpositions[vc][1])) and (Fpositions[ov][2] = Fpositions[vc][2]));
  Fposition := [];
  FDirty_position := True;
  if (0) >= Length(Fposition) then SetLength(Fposition, (0) + 1);
  Fposition[0] := Vector3Double(Fpositions[ov][0], Fpositions[ov][1], Fpositions[ov][2]);
  FDirty_position := True;
  if (1) >= Length(Fposition) then SetLength(Fposition, (1) + 1);
  Fposition[1] := Vector3Double(Fpositions[vc][0], Fpositions[vc][1], Fpositions[vc][2]);
  FDirty_position := True;
  FlushOutputs(Time);
end;

procedure TgeobubblesScriptBinder.BindNode(Node: TX3DNode);
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
      'set_cycle=' + Prefix + 'set_cycle']);
    SetLength(CompiledScript18List, Idx + 1);
    CompiledScript18List[Idx] := TScript18Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitgeobubblesPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Geospatial'] := 1;
X3D0.Meta['title'] := 'geobubbles.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/geobubbles.x3d';
X3D0.Meta['description'] := 'geo bubbles';
Group8 := TGroupNode.Create;
{ Viewpoint DEF='Tour' position='0 0 4' orientation='1 0 0 0' description='Tour Views'/ }
{ PositionInterpolator DEF='TourPosition' key='0 1' keyValue='-0.5 -0.5 4 -0.5 0.5 4'/ }
GeoViewpoint9 := TGeoViewpointNode.Create;
GeoViewpoint9.X3DName := 'Tour';
GeoViewpoint9.Position := Vector3Double(0, 0, 4);
GeoViewpoint9.Orientation := Vector4(1, 0, 0, 0);
GeoViewpoint9.Description := 'Tour Views';
Group8.FdChildren.Add(GeoViewpoint9);
Background10 := TBackgroundNode.Create;
Background10.SetBackUrl(['../resources/images/BK.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/BK.png']);
Background10.SetBottomUrl(['../resources/images/BT.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/BT.png']);
Background10.SetFrontUrl(['../resources/images/FR.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/FR.png']);
Background10.SetLeftUrl(['../resources/images/LF.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/LF.png']);
Background10.SetRightUrl(['../resources/images/RT.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/RT.png']);
Background10.SetTopUrl(['../resources/images/TP.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/TP.png']);
Group8.FdChildren.Add(Background10);
Transform11 := TTransformNode.Create;
Shape12 := TShapeNode.Create;
Sphere13 := TSphereNode.Create;
Shape12.Geometry := Sphere13;
Appearance14 := TAppearanceNode.Create;
Material15 := TMaterialNode.Create;
Material15.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material15.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance14.Material := Material15;
Shape12.Appearance := Appearance14;
Transform11.FdChildren.Add(Shape12);
Group8.FdChildren.Add(Transform11);
TimeSensor16 := TTimeSensorNode.Create;
end;

procedure InitgeobubblesPart1;
begin
TimeSensor16.X3DName := 'TourTime';
TimeSensor16.CycleInterval := 5;
TimeSensor16.Loop := True;
Group8.FdChildren.Add(TimeSensor16);
GeoPositionInterpolator17 := TGeoPositionInterpolatorNode.Create;
GeoPositionInterpolator17.X3DName := 'TourPosition';
GeoPositionInterpolator17.SetKey([0, 1]);
GeoPositionInterpolator17.SetKeyValue(0.0015708, 0, 4, 0, 0.0015708, 4);
Group8.FdChildren.Add(GeoPositionInterpolator17);
Script18 := TScriptNode.Create;
Script18.X3DName := 'RandomTourTime';
FieldVal19 := TSFTime.CreateEvent(Script18, 'set_cycle', True);
Script18.AddCustomFieldOrEvent(FieldVal19);
FieldVal20 := TSFFloat.Create(Script18, True, 'val', 0);
Script18.AddCustomFieldOrEvent(FieldVal20);
FieldVal21 := TMFVec3d.Create(Script18, True, 'positions', 0.0015708, 0, 4, 0, 0.0015708, 4);
Script18.AddCustomFieldOrEvent(FieldVal21);
FieldVal22 := TMFVec3d.Create(Script18, True, 'position', 0.0015708, 0, 4, 0, 0.0015708, 4);
Script18.AddCustomFieldOrEvent(FieldVal22);
Script18.SetUrl(['compiled:' + LineEnding +
  'set_cycle=Script18_set_cycle']);
Group8.FdChildren.Add(Script18);
{ ROUTE TourTime.cycleTime TO RandomTourTime.set_cycle }
Group8.AddRoute(TimeSensor16.EventCycleTime, FieldVal19);
{ ROUTE RandomTourTime.position TO TourPosition.keyValue }
Group8.AddRoute(FieldVal22.EventOut, GeoPositionInterpolator17.FdKeyValue.EventIn);
{ ROUTE TourTime.fraction_changed TO TourPosition.set_fraction }
Group8.AddRoute(TimeSensor16.EventFraction_changed, GeoPositionInterpolator17.EventSet_fraction);
{ ROUTE TourPosition.geovalue_changed TO Tour.set_position }
Group8.AddRoute(GeoPositionInterpolator17.EventGeovalue_changed, GeoViewpoint9.FdPosition.EventIn);
X3D0.AddChildren([Group8]);
end;

function Creategeobubbles: TX3DRootNode;
var
  Binder: TgeobubblesScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript18List) do
    FreeAndNil(CompiledScript18List[_i]);
  SetLength(CompiledScript18List, 0);
  InitgeobubblesPart0;
  InitgeobubblesPart1;
  Binder := TgeobubblesScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegistergeobubblesScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript18List) do
  begin
    CompiledScript18List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachgeobubblesScripts;
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
