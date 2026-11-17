unit arcold;

interface

uses X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createarcold: TX3DRootNode;
procedure RegisterarcoldScripts(const Scene: TCastleSceneCore);

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
  TScript38Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Ftranslation: TVector3;
    FField_translation: TSFVec3f;
    FBack_translation: TSFVec3f;
    FDirty_translation: Boolean;
    Fold: TVector3;
    FField_old: TSFVec3f;
    FBack_old: TSFVec3f;
    FDirty_old: Boolean;
    FkeyValue: array of TVector3;
    FEvent_keyValue: TX3DEvent;
    FBack_keyValue: TMFVec3f;
    FDirty_keyValue: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AEvent_keyValue: TX3DEvent);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript38Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_location(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript57Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fstartnode: TX3DNode;
    FField_startnode: TSFNode;
    FBack_startnode: TSFNode;
    FDirty_startnode: Boolean;
    Fendnode: TX3DNode;
    FField_endnode: TSFNode;
    FBack_endnode: TSFNode;
    FDirty_endnode: Boolean;
    Ftransnode: TX3DNode;
    FField_transnode: TSFNode;
    FBack_transnode: TSFNode;
    FDirty_transnode: Boolean;
    Frotscalenode: TX3DNode;
    FField_rotscalenode: TSFNode;
    FBack_rotscalenode: TSFNode;
    FDirty_rotscalenode: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
    procedure SendNodeFloat(const Node: TX3DNode; const EventName: String; const Val: Double; const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_startnode: TSFNode; const AField_endnode: TSFNode; const AField_transnode: TSFNode; const AField_rotscalenode: TSFNode);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript57Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Recompute(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
    procedure Recompute_and_route(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_startpoint(Value: TX3DField; const Time: TX3DTime);
    procedure Set_endpoint(Value: TX3DField; const Time: TX3DTime);
  end;

  TarcoldScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group7: TGroupNode;
  Viewpoint8: TViewpointNode;
  Background9: TBackgroundNode;
  Transform10: TTransformNode;
  Transform11: TTransformNode;
  Shape12: TShapeNode;
  Appearance13: TAppearanceNode;
  Material14: TMaterialNode;
  Cylinder15: TCylinderNode;
  Transform16: TTransformNode;
  Transform17: TTransformNode;
  Shape18: TShapeNode;
  Appearance19: TAppearanceNode;
  Material20: TMaterialNode;
  Cylinder21: TCylinderNode;
  Transform22: TTransformNode;
  Transform23: TTransformNode;
  Shape24: TShapeNode;
  Appearance25: TAppearanceNode;
  Material26: TMaterialNode;
  Cylinder27: TCylinderNode;
  ProtoDeclare28: TX3DPrototype;
  FieldDecl30: TX3DInterfaceDeclaration;
  FieldVal30: TSFVec3f;
  Transform32: TTransformNode;
  Shape33: TShapeNode;
  Sphere34: TSphereNode;
  Appearance35: TAppearanceNode;
  Material36: TMaterialNode;
  PositionInterpolator37: TPositionInterpolatorNode;
  Script38: TScriptNode;
  FieldVal39: TSFVec3f;
  FieldVal40: TSFVec3f;
  FieldVal41: TX3DEvent;
  FieldVal42: TX3DEvent;
  CompiledScript38List: array of TScript38Script;
  TimeSensor43: TTimeSensorNode;
  ProtoDeclare48: TX3DPrototype;
  FieldDecl50: TX3DInterfaceDeclaration;
  FieldVal50: TSFNode;
  FieldDecl51: TX3DInterfaceDeclaration;
  FieldVal51: TSFNode;
  FieldDecl52: TX3DInterfaceDeclaration;
  FieldVal52: TSFNode;
  FieldDecl53: TX3DInterfaceDeclaration;
  FieldVal53: TSFNode;
  FieldDecl54: TX3DInterfaceDeclaration;
  FieldVal54: TX3DEvent;
  FieldDecl55: TX3DInterfaceDeclaration;
  FieldVal55: TX3DEvent;
  Script57: TScriptNode;
  FieldVal58: TSFNode;
  FieldVal59: TSFNode;
  FieldVal60: TSFNode;
  FieldVal61: TSFNode;
  FieldVal62: TX3DEvent;
  FieldVal63: TX3DEvent;
  CompiledScript57List: array of TScript57Script;
  ProtoInstance64: TX3DPrototypeNode;
  ProtoInstance65: TX3DPrototypeNode;
  ProtoInstance66: TX3DPrototypeNode;
  ProtoInstance67: TX3DPrototypeNode;
  ProtoInstance68: TX3DPrototypeNode;
  ProtoInstance77: TX3DPrototypeNode;
  ProtoInstance86: TX3DPrototypeNode;

constructor TScript38Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AEvent_keyValue: TX3DEvent);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Ftranslation := Vector3(0, 0, 0);
  FField_translation := nil;
  FBack_translation := TSFVec3f.Create(nil, False, 'translation', Vector3(0, 0, 0));
  FDirty_translation := False;
  Fold := Vector3(0, 0, 0);
  FField_old := nil;
  FBack_old := TSFVec3f.Create(nil, False, 'old', Vector3(0, 0, 0));
  FDirty_old := False;
  FkeyValue := nil;
  FEvent_keyValue := nil;
  FBack_keyValue := TMFVec3f.CreateUndefined(nil, False, 'keyValue');
  FDirty_keyValue := False;
  FField_translation := AField_translation;
  if AField_translation <> nil then Ftranslation := AField_translation.Value;
  FField_old := AField_old;
  if AField_old <> nil then Fold := AField_old.Value;
  FEvent_keyValue := AEvent_keyValue;
end;

class function TScript38Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript38Script;
begin
  Result := TScript38Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.AnyEvent('keyValue'));
end;

destructor TScript38Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript38Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_translation then
  begin
    FDirty_translation := False;
    if FField_translation <> nil then
    begin
      FField_translation.Value := Ftranslation;
      FBack_translation.Value := Ftranslation;
      if (FField_translation.ParentNode is TX3DNode) and (TX3DNode(FField_translation.ParentNode).Scene <> nil) then
        FField_translation.EventOut.Send(FBack_translation, TX3DNode(FField_translation.ParentNode).Scene.NextEventTime)
      else
        FField_translation.EventOut.Send(FBack_translation, Time);
    end;
  end;
  if FDirty_old then
  begin
    FDirty_old := False;
    if FField_old <> nil then
    begin
      FField_old.Value := Fold;
      FBack_old.Value := Fold;
      if (FField_old.ParentNode is TX3DNode) and (TX3DNode(FField_old.ParentNode).Scene <> nil) then
        FField_old.EventOut.Send(FBack_old, TX3DNode(FField_old.ParentNode).Scene.NextEventTime)
      else
        FField_old.EventOut.Send(FBack_old, Time);
    end;
  end;
  if FDirty_keyValue then
  begin
    FDirty_keyValue := False;
    if FEvent_keyValue <> nil then
    begin
      FBack_keyValue.Items.Clear;
      for _i := 0 to High(FkeyValue) do
        FBack_keyValue.Items.Add(FkeyValue[_i]);
      FEvent_keyValue.Send(FBack_keyValue, Time);
    end;
  end;
end;

procedure TScript38Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_location', {$ifdef FPC}@{$endif}Set_location);
end;

procedure TScript38Script.Set_location(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 10 - 5, Random * 10 - 5, Random * 10 - 5);
  FDirty_translation := True;
  FkeyValue := [[Fold, Ftranslation]];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript57Script.Create(const AHandlerPrefix: String; const AField_startnode: TSFNode; const AField_endnode: TSFNode; const AField_transnode: TSFNode; const AField_rotscalenode: TSFNode);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fstartnode := nil;
  FField_startnode := nil;
  FBack_startnode := TSFNode.CreateUndefined(nil, False, 'startnode');
  FDirty_startnode := False;
  Fendnode := nil;
  FField_endnode := nil;
  FBack_endnode := TSFNode.CreateUndefined(nil, False, 'endnode');
  FDirty_endnode := False;
  Ftransnode := nil;
  FField_transnode := nil;
  FBack_transnode := TSFNode.CreateUndefined(nil, False, 'transnode');
  FDirty_transnode := False;
  Frotscalenode := nil;
  FField_rotscalenode := nil;
  FBack_rotscalenode := TSFNode.CreateUndefined(nil, False, 'rotscalenode');
  FDirty_rotscalenode := False;
  FField_startnode := AField_startnode;
  if AField_startnode <> nil then Fstartnode := AField_startnode.Value;
  FField_endnode := AField_endnode;
  if AField_endnode <> nil then Fendnode := AField_endnode.Value;
  FField_transnode := AField_transnode;
  if AField_transnode <> nil then Ftransnode := AField_transnode.Value;
  FField_rotscalenode := AField_rotscalenode;
  if AField_rotscalenode <> nil then Frotscalenode := AField_rotscalenode.Value;
end;

class function TScript57Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript57Script;
begin
  Result := TScript57Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('startnode') as TSFNode, AScriptNode.FieldOrEvent('endnode') as TSFNode, AScriptNode.FieldOrEvent('transnode') as TSFNode, AScriptNode.FieldOrEvent('rotscalenode') as TSFNode);
end;

destructor TScript57Script.Destroy;
begin
  FreeAndNil(FBack_startnode);
  FreeAndNil(FBack_endnode);
  FreeAndNil(FBack_transnode);
  FreeAndNil(FBack_rotscalenode);
  inherited Destroy;
end;

procedure TScript57Script.FlushOutputs(const Time: TX3DTime);
begin
  if FDirty_startnode then
  begin
    FDirty_startnode := False;
    if FField_startnode <> nil then
    begin
      FField_startnode.Value := Fstartnode;
      FBack_startnode.Value := Fstartnode;
      if (FField_startnode.ParentNode is TX3DNode) and (TX3DNode(FField_startnode.ParentNode).Scene <> nil) then
        FField_startnode.EventOut.Send(FBack_startnode, TX3DNode(FField_startnode.ParentNode).Scene.NextEventTime)
      else
        FField_startnode.EventOut.Send(FBack_startnode, Time);
    end;
  end;
  if FDirty_endnode then
  begin
    FDirty_endnode := False;
    if FField_endnode <> nil then
    begin
      FField_endnode.Value := Fendnode;
      FBack_endnode.Value := Fendnode;
      if (FField_endnode.ParentNode is TX3DNode) and (TX3DNode(FField_endnode.ParentNode).Scene <> nil) then
        FField_endnode.EventOut.Send(FBack_endnode, TX3DNode(FField_endnode.ParentNode).Scene.NextEventTime)
      else
        FField_endnode.EventOut.Send(FBack_endnode, Time);
    end;
  end;
  if FDirty_transnode then
  begin
    FDirty_transnode := False;
    if FField_transnode <> nil then
    begin
      FField_transnode.Value := Ftransnode;
      FBack_transnode.Value := Ftransnode;
      if (FField_transnode.ParentNode is TX3DNode) and (TX3DNode(FField_transnode.ParentNode).Scene <> nil) then
        FField_transnode.EventOut.Send(FBack_transnode, TX3DNode(FField_transnode.ParentNode).Scene.NextEventTime)
      else
        FField_transnode.EventOut.Send(FBack_transnode, Time);
    end;
  end;
  if FDirty_rotscalenode then
  begin
    FDirty_rotscalenode := False;
    if FField_rotscalenode <> nil then
    begin
      FField_rotscalenode.Value := Frotscalenode;
      FBack_rotscalenode.Value := Frotscalenode;
      if (FField_rotscalenode.ParentNode is TX3DNode) and (TX3DNode(FField_rotscalenode.ParentNode).Scene <> nil) then
        FField_rotscalenode.EventOut.Send(FBack_rotscalenode, TX3DNode(FField_rotscalenode.ParentNode).Scene.NextEventTime)
      else
        FField_rotscalenode.EventOut.Send(FBack_rotscalenode, Time);
    end;
  end;
end;

procedure TScript57Script.SendNodeFloat(const Node: TX3DNode; const EventName: String; const Val: Double; const Time: TX3DTime);
var
  FOE: TX3DFieldOrEvent;
  E: TX3DEvent;
begin
  if Node = nil then Exit;
  FOE := Node.FieldOrEvent(EventName);
  if (FOE is TX3DField) and TX3DField(FOE).Exposed then
    E := TX3DField(FOE).EventIn
  else if FOE is TX3DEvent then
    E := TX3DEvent(FOE)
  else
    Exit;
  if E is TSFFloatEvent then
    TSFFloatEvent(E).Send(Val, Time)
  else if E is TSFDoubleEvent then
    TSFDoubleEvent(E).Send(Val, Time)
  else if E is TSFTimeEvent then
    TSFTimeEvent(E).Send(Val, Time)
  else if E is TSFInt32Event then
    TSFInt32Event(E).Send(Round(Val), Time)
  else if E is TSFBoolEvent then
    TSFBoolEvent(E).Send(Val <> 0, Time);
end;

procedure TScript57Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_startpoint', {$ifdef FPC}@{$endif}Set_startpoint);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endpoint', {$ifdef FPC}@{$endif}Set_endpoint);
end;

procedure TScript57Script.Recompute(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
var
  dif: Single;
  dist: Single;
  dif2: Single;
  norm: Single;
  transl: Single;
begin
  if endpoint = 'undefined' then
  begin
    Exit;
  end;
  dif := endpoint.subtract(startpoint);
  dist := dif.Length * 0.5;
  dif2 := dif.multiply(0.5);
  norm := dif.Normalize;
  transl := startpoint.add(dif2);
  if Quaternion <> 'undefined' then
  begin
    Result := 0;
    Exit;
  end
  else
  begin
    Result := 0;
    Exit;
  end;
end;

procedure TScript57Script.Recompute_and_route(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
var
  trafo: Single;
begin
  trafo := Recompute(startpoint, endpoint, Time);
  if trafo <> 'undefined' then
  begin
    SendNodeFloat(Ftransnode, 'translation', trafo.translation, Time);
    SendNodeFloat(Frotscalenode, 'rotation', trafo.rotation, Time);
    SendNodeFloat(Frotscalenode, 'scale', trafo.scale, Time);
  end
  else
  begin
    WriteLn('recompute returned undefined');
  end;
end;

procedure TScript57Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Recompute_and_route(Fstartnode.translation, Fendnode.translation, Time);
  FlushOutputs(Time);
end;

procedure TScript57Script.Set_startpoint(Value: TX3DField; const Time: TX3DTime);
begin
  Recompute_and_route(((((Value as TSFVec3f).Value) <> 0)) or (((Fstartnode.translation) <> 0)), Fendnode.translation, Time);
  FlushOutputs(Time);
end;

procedure TScript57Script.Set_endpoint(Value: TX3DField; const Time: TX3DTime);
begin
  Recompute_and_route(Fstartnode.translation, ((((Value as TSFVec3f).Value) <> 0)) or (((Fendnode.translation) <> 0)), Time);
  FlushOutputs(Time);
end;

procedure TarcoldScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script38_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript38List);
    Prefix := 'Script38_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_location=' + Prefix + 'set_location']);
    SetLength(CompiledScript38List, Idx + 1);
    CompiledScript38List[Idx] := TScript38Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script57_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript57List);
    Prefix := 'Script57_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_startpoint=' + Prefix + 'set_startpoint' + LineEnding +
      'set_endpoint=' + Prefix + 'set_endpoint']);
    SetLength(CompiledScript57List, Idx + 1);
    CompiledScript57List[Idx] := TScript57Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitarcoldPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'arcold.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/arc.x3d';
X3D0.Meta['description'] := 'an attempt to implement an arc in a graph';
Group7 := TGroupNode.Create;
Viewpoint8 := TViewpointNode.Create;
Viewpoint8.Position := Vector3(0, 0, 5);
Viewpoint8.Description := 'a moving graph';
Group7.FdChildren.Add(Viewpoint8);
Background9 := TBackgroundNode.Create;
Background9.SetSkyColor([Vector3(0.4, 0.4, 0.4)]);
Group7.FdChildren.Add(Background9);
Transform10 := TTransformNode.Create;
Transform10.X3DName := 'trans1';
Transform11 := TTransformNode.Create;
Transform11.X3DName := 'rotscale1';
Shape12 := TShapeNode.Create;
Appearance13 := TAppearanceNode.Create;
Material14 := TMaterialNode.Create;
Material14.DiffuseColor := Vector3(0.2, 0.7, 0.7);
Appearance13.Material := Material14;
Shape12.Appearance := Appearance13;
Cylinder15 := TCylinderNode.Create;
Cylinder15.Radius := 0.1;
Shape12.Geometry := Cylinder15;
Transform11.FdChildren.Add(Shape12);
Transform10.FdChildren.Add(Transform11);
Group7.FdChildren.Add(Transform10);
Transform16 := TTransformNode.Create;
Transform16.X3DName := 'trans2';
Transform17 := TTransformNode.Create;
Transform17.X3DName := 'rotscale2';
Shape18 := TShapeNode.Create;
Appearance19 := TAppearanceNode.Create;
Material20 := TMaterialNode.Create;
end;

procedure InitarcoldPart1;
begin
Material20.DiffuseColor := Vector3(0.2, 0.7, 0.7);
Appearance19.Material := Material20;
Shape18.Appearance := Appearance19;
Cylinder21 := TCylinderNode.Create;
Cylinder21.Radius := 0.1;
Shape18.Geometry := Cylinder21;
Transform17.FdChildren.Add(Shape18);
Transform16.FdChildren.Add(Transform17);
Group7.FdChildren.Add(Transform16);
Transform22 := TTransformNode.Create;
Transform22.X3DName := 'trans3';
Transform23 := TTransformNode.Create;
Transform23.X3DName := 'rotscale3';
Shape24 := TShapeNode.Create;
Appearance25 := TAppearanceNode.Create;
Material26 := TMaterialNode.Create;
Material26.DiffuseColor := Vector3(0.2, 0.7, 0.7);
Appearance25.Material := Material26;
Shape24.Appearance := Appearance25;
Cylinder27 := TCylinderNode.Create;
Cylinder27.Radius := 0.1;
Shape24.Geometry := Cylinder27;
Transform23.FdChildren.Add(Shape24);
Transform22.FdChildren.Add(Transform23);
Group7.FdChildren.Add(Transform22);
ProtoDeclare28 := CreateEmptyPrototype('point');
ProtoDeclare28.X3DName := 'point';
ProtoDeclare28.X3DName := 'point';
FieldVal30 := TSFVec3f.Create(nil, True, 'translation', Vector3(0, 0, 0));
FieldDecl30 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl30.FieldOrEvent := FieldVal30;
FieldVal30.ParentInterfaceDeclaration := FieldDecl30;
ProtoDeclare28.InterfaceDeclarations.Add(FieldDecl30);
Transform32 := TTransformNode.Create;
Transform32.X3DName := 'node';
Transform32.FieldOrEvent('translation', True).IsClauseNamesAdd('translation');
Shape33 := TShapeNode.Create;
Sphere34 := TSphereNode.Create;
Sphere34.Radius := 0.1;
Shape33.Geometry := Sphere34;
end;

procedure InitarcoldPart2;
begin
Appearance35 := TAppearanceNode.Create;
Material36 := TMaterialNode.Create;
Material36.DiffuseColor := Vector3(1, 0, 0);
Appearance35.Material := Material36;
Shape33.Appearance := Appearance35;
Transform32.FdChildren.Add(Shape33);
PositionInterpolator37 := TPositionInterpolatorNode.Create;
PositionInterpolator37.X3DName := 'PI1';
PositionInterpolator37.SetKey([0, 1]);
PositionInterpolator37.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Transform32.FdChildren.Add(PositionInterpolator37);
Script38 := TScriptNode.Create;
Script38.X3DName := 'MB1';
FieldVal39 := TSFVec3f.Create(Script38, True, 'translation', Vector3(50, 50, 0));
Script38.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TSFVec3f.Create(Script38, True, 'old', Vector3(0, 0, 0));
Script38.AddCustomFieldOrEvent(FieldVal40);
FieldVal41 := TSFTime.CreateEvent(Script38, 'set_location', True);
Script38.AddCustomFieldOrEvent(FieldVal41);
FieldVal42 := TMFVec3f.CreateEvent(Script38, 'keyValue', False);
Script38.AddCustomFieldOrEvent(FieldVal42);
Script38.SetUrl(['compiled:' + LineEnding +
  'set_location=Script38_set_location']);
Transform32.FdChildren.Add(Script38);
TimeSensor43 := TTimeSensorNode.Create;
TimeSensor43.X3DName := 'CL1';
TimeSensor43.CycleInterval := 3;
TimeSensor43.Loop := True;
Transform32.FdChildren.Add(TimeSensor43);
{ ROUTE CL1.cycleTime TO MB1.set_location }
Transform32.AddRoute(TimeSensor43.EventCycleTime, FieldVal41);
{ ROUTE CL1.fraction_changed TO PI1.set_fraction }
Transform32.AddRoute(TimeSensor43.EventFraction_changed, PositionInterpolator37.EventSet_fraction);
{ ROUTE MB1.keyValue TO PI1.keyValue }
Transform32.AddRoute(FieldVal42, PositionInterpolator37.FdKeyValue.EventIn);
{ ROUTE PI1.value_changed TO node.set_translation }
Transform32.AddRoute(PositionInterpolator37.EventValue_changed, Transform32.FdTranslation.EventIn);
ProtoDeclare28.Node.AddChildren([Transform32]);
X3D0.AddPrototype(ProtoDeclare28);
{ from doug sanden }
ProtoDeclare48 := CreateEmptyPrototype('x3dconnector');
end;

procedure InitarcoldPart3;
begin
ProtoDeclare48.X3DName := 'x3dconnector';
ProtoDeclare48.X3DName := 'x3dconnector';
FieldVal50 := TSFNode.CreateUndefined(nil, True, 'startnode');
FieldDecl50 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl50.FieldOrEvent := FieldVal50;
FieldVal50.ParentInterfaceDeclaration := FieldDecl50;
ProtoDeclare48.InterfaceDeclarations.Add(FieldDecl50);
FieldVal51 := TSFNode.CreateUndefined(nil, True, 'endnode');
FieldDecl51 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl51.FieldOrEvent := FieldVal51;
FieldVal51.ParentInterfaceDeclaration := FieldDecl51;
ProtoDeclare48.InterfaceDeclarations.Add(FieldDecl51);
FieldVal52 := TSFNode.CreateUndefined(nil, True, 'transnode');
FieldDecl52 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl52.FieldOrEvent := FieldVal52;
FieldVal52.ParentInterfaceDeclaration := FieldDecl52;
ProtoDeclare48.InterfaceDeclarations.Add(FieldDecl52);
FieldVal53 := TSFNode.CreateUndefined(nil, True, 'rotscalenode');
FieldDecl53 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl53.FieldOrEvent := FieldVal53;
FieldVal53.ParentInterfaceDeclaration := FieldDecl53;
ProtoDeclare48.InterfaceDeclarations.Add(FieldDecl53);
FieldVal54 := TSFVec3f.CreateEvent(nil, 'set_startpoint', True);
FieldDecl54 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl54.FieldOrEvent := FieldVal54;
FieldVal54.ParentInterfaceDeclaration := FieldDecl54;
ProtoDeclare48.InterfaceDeclarations.Add(FieldDecl54);
FieldVal55 := TSFVec3f.CreateEvent(nil, 'set_endpoint', True);
FieldDecl55 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl55.FieldOrEvent := FieldVal55;
FieldVal55.ParentInterfaceDeclaration := FieldDecl55;
ProtoDeclare48.InterfaceDeclarations.Add(FieldDecl55);
Script57 := TScriptNode.Create;
Script57.X3DName := 'S1';
FieldVal58 := TSFNode.CreateUndefined(Script57, True, 'startnode');
Script57.AddCustomFieldOrEvent(FieldVal58);
FieldVal59 := TSFNode.CreateUndefined(Script57, True, 'endnode');
Script57.AddCustomFieldOrEvent(FieldVal59);
FieldVal60 := TSFNode.CreateUndefined(Script57, True, 'transnode');
Script57.AddCustomFieldOrEvent(FieldVal60);
end;

procedure InitarcoldPart4;
begin
FieldVal61 := TSFNode.CreateUndefined(Script57, True, 'rotscalenode');
Script57.AddCustomFieldOrEvent(FieldVal61);
FieldVal62 := TSFVec3f.CreateEvent(Script57, 'set_startpoint', True);
Script57.AddCustomFieldOrEvent(FieldVal62);
FieldVal63 := TSFVec3f.CreateEvent(Script57, 'set_endpoint', True);
Script57.AddCustomFieldOrEvent(FieldVal63);
Script57.FieldOrEvent('startnode', True).IsClauseNamesAdd('startnode');
Script57.FieldOrEvent('endnode', True).IsClauseNamesAdd('endnode');
Script57.FieldOrEvent('transnode', True).IsClauseNamesAdd('transnode');
Script57.FieldOrEvent('rotscalenode', True).IsClauseNamesAdd('rotscalenode');
Script57.FieldOrEvent('set_startpoint', True).IsClauseNamesAdd('set_startpoint');
Script57.FieldOrEvent('set_endpoint', True).IsClauseNamesAdd('set_endpoint');
Script57.SetUrl(['compiled:' + LineEnding +
  'initialize=Script57_initialize' + LineEnding +
  'set_startpoint=Script57_set_startpoint' + LineEnding +
  'set_endpoint=Script57_set_endpoint']);
ProtoDeclare48.Node.AddChildren([Script57]);
X3D0.AddPrototype(ProtoDeclare48);
ProtoInstance64 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare28);
ProtoInstance64.X3DName := 'G1';
Group7.FdChildren.Add(ProtoInstance64.Instantiate);
ProtoInstance65 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare28);
ProtoInstance65.X3DName := 'G2';
Group7.FdChildren.Add(ProtoInstance65.Instantiate);
ProtoInstance66 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare28);
ProtoInstance66.X3DName := 'G3';
Group7.FdChildren.Add(ProtoInstance66.Instantiate);
ProtoInstance67 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare28);
ProtoInstance67.X3DName := 'G4';
Group7.FdChildren.Add(ProtoInstance67.Instantiate);
ProtoInstance68 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare48);
ProtoInstance68.X3DName := 'connector1';
(ProtoInstance68.Field('startnode') as TSFNode).Value := ProtoInstance64;
(ProtoInstance68.Field('endnode') as TSFNode).Value := ProtoInstance65;
(ProtoInstance68.Field('transnode') as TSFNode).Value := Transform10;
(ProtoInstance68.Field('rotscalenode') as TSFNode).Value := Transform11;
Group7.FdChildren.Add(ProtoInstance68.Instantiate);
ProtoInstance77 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare48);
ProtoInstance77.X3DName := 'connector2';
(ProtoInstance77.Field('startnode') as TSFNode).Value := ProtoInstance64;
(ProtoInstance77.Field('endnode') as TSFNode).Value := ProtoInstance66;
(ProtoInstance77.Field('transnode') as TSFNode).Value := Transform16;
(ProtoInstance77.Field('rotscalenode') as TSFNode).Value := Transform17;
end;

procedure InitarcoldPart5;
begin
Group7.FdChildren.Add(ProtoInstance77.Instantiate);
ProtoInstance86 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare48);
ProtoInstance86.X3DName := 'connector3';
(ProtoInstance86.Field('startnode') as TSFNode).Value := ProtoInstance64;
(ProtoInstance86.Field('endnode') as TSFNode).Value := ProtoInstance67;
(ProtoInstance86.Field('transnode') as TSFNode).Value := Transform22;
(ProtoInstance86.Field('rotscalenode') as TSFNode).Value := Transform23;
Group7.FdChildren.Add(ProtoInstance86.Instantiate);
{ ROUTE G1.translation_changed TO connector1.set_startpoint }
Group7.AddRoute(ProtoInstance64.FieldOrEvent('translation_changed'), ProtoInstance68.FieldOrEvent('set_startpoint'));
{ ROUTE G2.translation_changed TO connector1.set_endpoint }
Group7.AddRoute(ProtoInstance65.FieldOrEvent('translation_changed'), ProtoInstance68.FieldOrEvent('set_endpoint'));
{ ROUTE G1.translation_changed TO connector2.set_startpoint }
Group7.AddRoute(ProtoInstance64.FieldOrEvent('translation_changed'), ProtoInstance77.FieldOrEvent('set_startpoint'));
{ ROUTE G3.translation_changed TO connector2.set_endpoint }
Group7.AddRoute(ProtoInstance66.FieldOrEvent('translation_changed'), ProtoInstance77.FieldOrEvent('set_endpoint'));
{ ROUTE G1.translation_changed TO connector3.set_startpoint }
Group7.AddRoute(ProtoInstance64.FieldOrEvent('translation_changed'), ProtoInstance86.FieldOrEvent('set_startpoint'));
{ ROUTE G4.translation_changed TO connector3.set_endpoint }
Group7.AddRoute(ProtoInstance67.FieldOrEvent('translation_changed'), ProtoInstance86.FieldOrEvent('set_endpoint'));
X3D0.AddChildren([Group7]);
end;

function Createarcold: TX3DRootNode;
var
  Binder: TarcoldScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript38List) do
    FreeAndNil(CompiledScript38List[_i]);
  SetLength(CompiledScript38List, 0);
  for _i := 0 to High(CompiledScript57List) do
    FreeAndNil(CompiledScript57List[_i]);
  SetLength(CompiledScript57List, 0);
  InitarcoldPart0;
  InitarcoldPart1;
  InitarcoldPart2;
  InitarcoldPart3;
  InitarcoldPart4;
  InitarcoldPart5;
  Binder := TarcoldScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterarcoldScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript38List) do
  begin
    CompiledScript38List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript57List) do
  begin
    CompiledScript57List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript57List[_i].Initialized) then
      CompiledScript57List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

finalization
  while Length(CompiledScript38List) > 0 do
  begin
    FreeAndNil(CompiledScript38List[High(CompiledScript38List)]);
    SetLength(CompiledScript38List, Length(CompiledScript38List) - 1);
  end;
  while Length(CompiledScript57List) > 0 do
  begin
    FreeAndNil(CompiledScript57List[High(CompiledScript57List)]);
    SetLength(CompiledScript57List, Length(CompiledScript57List) - 1);
  end;
end.
