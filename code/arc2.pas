unit arc2;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, HAnimDisplacerSupport, CastleSceneCore;

function Createarc2: TX3DRootNode;
procedure Registerarc2Scripts(const Scene: TCastleSceneCore);
procedure Detacharc2Scripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript17Script = class
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
    FField_keyValue: TMFVec3f;
    FBack_keyValue: TMFVec3f;
    FDirty_keyValue: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript17Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_location(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript35Script = class
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
    FField_keyValue: TMFVec3f;
    FBack_keyValue: TMFVec3f;
    FDirty_keyValue: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript35Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_location(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript52Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fstartnode: TX3DNode;
    Fendnode: TX3DNode;
    FtransC1: TX3DNode;
    FrotscaleC1: TX3DNode;
    procedure FlushOutputs(const Time: TX3DTime);
    procedure SendNodeFloat(const Node: TX3DNode; const EventName: String; const Val: Double; const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_startnode: TSFNode; const AField_endnode: TSFNode; const AField_transC1: TSFNode; const AField_rotscaleC1: TSFNode);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript52Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Recompute(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
    procedure Recompute_and_route(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_startpoint(Value: TX3DField; const Time: TX3DTime);
    procedure Set_endpoint(Value: TX3DField; const Time: TX3DTime);
  end;

  Tarc2ScriptBinder = class
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
  Sphere13: TSphereNode;
  Appearance14: TAppearanceNode;
  Material15: TMaterialNode;
  PositionInterpolator16: TPositionInterpolatorNode;
  Script17: TScriptNode;
  FieldVal18: TSFVec3f;
  FieldVal19: TSFVec3f;
  FieldVal20: TX3DEvent;
  FieldVal21: TMFVec3f;
  CompiledScript17List: array of TScript17Script;
  TimeSensor22: TTimeSensorNode;
  Transform28: TTransformNode;
  Transform29: TTransformNode;
  Shape30: TShapeNode;
  Sphere31: TSphereNode;
  Appearance32: TAppearanceNode;
  Material33: TMaterialNode;
  PositionInterpolator34: TPositionInterpolatorNode;
  Script35: TScriptNode;
  FieldVal36: TSFVec3f;
  FieldVal37: TSFVec3f;
  FieldVal38: TX3DEvent;
  FieldVal39: TMFVec3f;
  CompiledScript35List: array of TScript35Script;
  TimeSensor40: TTimeSensorNode;
  Transform46: TTransformNode;
  Transform47: TTransformNode;
  Shape48: TShapeNode;
  Appearance49: TAppearanceNode;
  Material50: TMaterialNode;
  Cylinder51: TCylinderNode;
  Script52: TScriptNode;
  FieldVal53: TSFNode;
  FieldVal55: TSFNode;
  FieldVal57: TSFNode;
  FieldVal59: TSFNode;
  FieldVal61: TX3DEvent;
  FieldVal62: TX3DEvent;
  CompiledScript52List: array of TScript52Script;

constructor TScript17Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
var
  _i: Integer;
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
  FField_keyValue := nil;
  FBack_keyValue := TMFVec3f.CreateUndefined(nil, False, 'keyValue');
  FDirty_keyValue := False;
  FField_translation := AField_translation;
  if AField_translation <> nil then Ftranslation := AField_translation.Value;
  FField_old := AField_old;
  if AField_old <> nil then Fold := AField_old.Value;
  FField_keyValue := AField_keyValue;
  if AField_keyValue <> nil then
  begin
    SetLength(FkeyValue, AField_keyValue.Items.Count);
    for _i := 0 to AField_keyValue.Items.Count - 1 do
      FkeyValue[_i] := AField_keyValue.Items[_i];
  end;
end;

class function TScript17Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript17Script;
begin
  Result := TScript17Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.FieldOrEvent('keyValue') as TMFVec3f);
end;

destructor TScript17Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript17Script.Detach;
begin
end;

procedure TScript17Script.FlushOutputs(const Time: TX3DTime);
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
    if FField_keyValue <> nil then
    begin
      FField_keyValue.Items.Clear;
      FBack_keyValue.Items.Clear;
      for _i := 0 to High(FkeyValue) do
      begin
        FField_keyValue.Items.Add(FkeyValue[_i]);
        FBack_keyValue.Items.Add(FkeyValue[_i]);
      end;
      if (FField_keyValue.ParentNode is TX3DNode) and (TX3DNode(FField_keyValue.ParentNode).Scene <> nil) then
        FField_keyValue.EventOut.Send(FBack_keyValue, TX3DNode(FField_keyValue.ParentNode).Scene.NextEventTime)
      else
        FField_keyValue.EventOut.Send(FBack_keyValue, Time);
    end;
  end;
end;

procedure TScript17Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_location', {$ifdef FPC}@{$endif}Set_location);
end;

procedure TScript17Script.Set_location(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 10 - 5, Random * 10 - 5, Random * 10 - 5);
  FDirty_translation := True;
  FkeyValue := [[Fold, Ftranslation]];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript35Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
var
  _i: Integer;
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
  FField_keyValue := nil;
  FBack_keyValue := TMFVec3f.CreateUndefined(nil, False, 'keyValue');
  FDirty_keyValue := False;
  FField_translation := AField_translation;
  if AField_translation <> nil then Ftranslation := AField_translation.Value;
  FField_old := AField_old;
  if AField_old <> nil then Fold := AField_old.Value;
  FField_keyValue := AField_keyValue;
  if AField_keyValue <> nil then
  begin
    SetLength(FkeyValue, AField_keyValue.Items.Count);
    for _i := 0 to AField_keyValue.Items.Count - 1 do
      FkeyValue[_i] := AField_keyValue.Items[_i];
  end;
end;

class function TScript35Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript35Script;
begin
  Result := TScript35Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.FieldOrEvent('keyValue') as TMFVec3f);
end;

destructor TScript35Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript35Script.Detach;
begin
end;

procedure TScript35Script.FlushOutputs(const Time: TX3DTime);
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
    if FField_keyValue <> nil then
    begin
      FField_keyValue.Items.Clear;
      FBack_keyValue.Items.Clear;
      for _i := 0 to High(FkeyValue) do
      begin
        FField_keyValue.Items.Add(FkeyValue[_i]);
        FBack_keyValue.Items.Add(FkeyValue[_i]);
      end;
      if (FField_keyValue.ParentNode is TX3DNode) and (TX3DNode(FField_keyValue.ParentNode).Scene <> nil) then
        FField_keyValue.EventOut.Send(FBack_keyValue, TX3DNode(FField_keyValue.ParentNode).Scene.NextEventTime)
      else
        FField_keyValue.EventOut.Send(FBack_keyValue, Time);
    end;
  end;
end;

procedure TScript35Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_location', {$ifdef FPC}@{$endif}Set_location);
end;

procedure TScript35Script.Set_location(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 10 - 5, Random * 10 - 5, Random * 10 - 5);
  FDirty_translation := True;
  FkeyValue := [[Fold, Ftranslation]];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript52Script.Create(const AHandlerPrefix: String; const AField_startnode: TSFNode; const AField_endnode: TSFNode; const AField_transC1: TSFNode; const AField_rotscaleC1: TSFNode);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fstartnode := nil;
  Fendnode := nil;
  FtransC1 := nil;
  FrotscaleC1 := nil;
  if AField_startnode <> nil then Fstartnode := AField_startnode.Value;
  if AField_endnode <> nil then Fendnode := AField_endnode.Value;
  if AField_transC1 <> nil then FtransC1 := AField_transC1.Value;
  if AField_rotscaleC1 <> nil then FrotscaleC1 := AField_rotscaleC1.Value;
end;

class function TScript52Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript52Script;
begin
  Result := TScript52Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('startnode') as TSFNode, AScriptNode.FieldOrEvent('endnode') as TSFNode, AScriptNode.FieldOrEvent('transC1') as TSFNode, AScriptNode.FieldOrEvent('rotscaleC1') as TSFNode);
end;

destructor TScript52Script.Destroy;
begin
  inherited Destroy;
end;

procedure TScript52Script.Detach;
begin
end;

procedure TScript52Script.FlushOutputs(const Time: TX3DTime);
begin
end;

procedure TScript52Script.SendNodeFloat(const Node: TX3DNode; const EventName: String; const Val: Double; const Time: TX3DTime);
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

procedure TScript52Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_startpoint', {$ifdef FPC}@{$endif}Set_startpoint);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endpoint', {$ifdef FPC}@{$endif}Set_endpoint);
end;

procedure TScript52Script.Recompute(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
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

procedure TScript52Script.Recompute_and_route(const startpoint: Single; const endpoint: Single; const Time: TX3DTime);
var
  trafo: Single;
begin
  trafo := Recompute(startpoint, endpoint, Time);
  SendNodeFloat(FtransC1, 'translation', trafo.translation, Time);
  SendNodeFloat(FrotscaleC1, 'rotation', trafo.rotation, Time);
  SendNodeFloat(FrotscaleC1, 'scale', trafo.scale, Time);
end;

procedure TScript52Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Recompute_and_route(Fstartnode.translation, Fendnode.translation, Time);
end;

procedure TScript52Script.Set_startpoint(Value: TX3DField; const Time: TX3DTime);
begin
  Recompute_and_route((Value as TSFVec3f).Value, Fendnode.translation, Time);
end;

procedure TScript52Script.Set_endpoint(Value: TX3DField; const Time: TX3DTime);
begin
  Recompute_and_route(Fstartnode.translation, (Value as TSFVec3f).Value, Time);
end;

procedure Tarc2ScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script17_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript17List);
    Prefix := 'Script17_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_location=' + Prefix + 'set_location']);
    SetLength(CompiledScript17List, Idx + 1);
    CompiledScript17List[Idx] := TScript17Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script35_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript35List);
    Prefix := 'Script35_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_location=' + Prefix + 'set_location']);
    SetLength(CompiledScript35List, Idx + 1);
    CompiledScript35List[Idx] := TScript35Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script52_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript52List);
    Prefix := 'Script52_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_startpoint=' + Prefix + 'set_startpoint' + LineEnding +
      'set_endpoint=' + Prefix + 'set_endpoint']);
    SetLength(CompiledScript52List, Idx + 1);
    CompiledScript52List[Idx] := TScript52Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Initarc2Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'arc2.x3d';
X3D0.Meta['creator'] := 'Lost, Doug Sanden I think';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/arc1.x3d';
X3D0.Meta['description'] := 'a generic proto to connect two objects';
Group7 := TGroupNode.Create;
Viewpoint8 := TViewpointNode.Create;
Viewpoint8.Position := Vector3(0, 0, 5);
Viewpoint8.Description := 'Only Viewpoint';
Group7.FdChildren.Add(Viewpoint8);
Background9 := TBackgroundNode.Create;
Background9.SetSkyColor([Vector3(0.4, 0.4, 0.4)]);
Group7.FdChildren.Add(Background9);
Transform10 := TTransformNode.Create;
Transform10.X3DName := 'G1';
Transform11 := TTransformNode.Create;
Transform11.X3DName := 'DECLpoint_INSTANCE_node';
Shape12 := TShapeNode.Create;
Sphere13 := TSphereNode.Create;
Sphere13.Radius := 0.1;
Shape12.Geometry := Sphere13;
Appearance14 := TAppearanceNode.Create;
Material15 := TMaterialNode.Create;
Material15.DiffuseColor := Vector3(1, 0, 0);
Appearance14.Material := Material15;
Shape12.Appearance := Appearance14;
Transform11.FdChildren.Add(Shape12);
PositionInterpolator16 := TPositionInterpolatorNode.Create;
PositionInterpolator16.X3DName := 'DECLpoint_INSTANCE_PI1';
PositionInterpolator16.SetKey([0, 1]);
PositionInterpolator16.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Transform11.FdChildren.Add(PositionInterpolator16);
Script17 := TScriptNode.Create;
Script17.X3DName := 'DECLpoint_INSTANCE_MB1';
FieldVal18 := TSFVec3f.Create(Script17, True, 'translation', Vector3(0, 0, 0));
Script17.AddCustomFieldOrEvent(FieldVal18);
end;

procedure Initarc2Part1;
begin
FieldVal19 := TSFVec3f.Create(Script17, True, 'old', Vector3(0, 0, 0));
Script17.AddCustomFieldOrEvent(FieldVal19);
FieldVal20 := TSFTime.CreateEvent(Script17, 'set_location', True);
Script17.AddCustomFieldOrEvent(FieldVal20);
FieldVal21 := TMFVec3f.Create(Script17, True, 'keyValue', [Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Script17.AddCustomFieldOrEvent(FieldVal21);
Script17.SetUrl(['compiled:' + LineEnding +
  'set_location=Script17_set_location']);
Transform11.FdChildren.Add(Script17);
TimeSensor22 := TTimeSensorNode.Create;
TimeSensor22.X3DName := 'DECLpoint_INSTANCE_CL1';
TimeSensor22.CycleInterval := 3;
TimeSensor22.Loop := True;
Transform11.FdChildren.Add(TimeSensor22);
{ ROUTE DECLpoint_INSTANCE_CL1.cycleTime TO DECLpoint_INSTANCE_MB1.set_location }
Transform11.AddRoute(TimeSensor22.EventCycleTime, FieldVal20);
{ ROUTE DECLpoint_INSTANCE_CL1.fraction_changed TO DECLpoint_INSTANCE_PI1.set_fraction }
Transform11.AddRoute(TimeSensor22.EventFraction_changed, PositionInterpolator16.EventSet_fraction);
{ ROUTE DECLpoint_INSTANCE_MB1.keyValue TO DECLpoint_INSTANCE_PI1.keyValue }
Transform11.AddRoute(FieldVal21.EventOut, PositionInterpolator16.FdKeyValue.EventIn);
{ ROUTE DECLpoint_INSTANCE_PI1.value_changed TO DECLpoint_INSTANCE_node.set_translation }
Transform11.AddRoute(PositionInterpolator16.EventValue_changed, Transform11.FdTranslation.EventIn);
{ ROUTE DECLpoint_INSTANCE_MB1.translation_changed TO DECLpoint_INSTANCE_node.set_translation }
Transform11.AddRoute(FieldVal18.EventOut, Transform11.FdTranslation.EventIn);
Transform10.FdChildren.Add(Transform11);
Group7.FdChildren.Add(Transform10);
Transform28 := TTransformNode.Create;
Transform28.X3DName := 'G2';
Transform29 := TTransformNode.Create;
Transform29.X3DName := 'DECLpoint_INSTANCE1000_node';
Shape30 := TShapeNode.Create;
Sphere31 := TSphereNode.Create;
Sphere31.Radius := 0.1;
Shape30.Geometry := Sphere31;
Appearance32 := TAppearanceNode.Create;
Material33 := TMaterialNode.Create;
Material33.DiffuseColor := Vector3(1, 0, 0);
Appearance32.Material := Material33;
Shape30.Appearance := Appearance32;
Transform29.FdChildren.Add(Shape30);
PositionInterpolator34 := TPositionInterpolatorNode.Create;
end;

procedure Initarc2Part2;
begin
PositionInterpolator34.X3DName := 'DECLpoint_INSTANCE1000_PI1';
PositionInterpolator34.SetKey([0, 1]);
PositionInterpolator34.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Transform29.FdChildren.Add(PositionInterpolator34);
Script35 := TScriptNode.Create;
Script35.X3DName := 'DECLpoint_INSTANCE1000_MB1';
FieldVal36 := TSFVec3f.Create(Script35, True, 'translation', Vector3(0, 0, 0));
Script35.AddCustomFieldOrEvent(FieldVal36);
FieldVal37 := TSFVec3f.Create(Script35, True, 'old', Vector3(0, 0, 0));
Script35.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFTime.CreateEvent(Script35, 'set_location', True);
Script35.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TMFVec3f.Create(Script35, True, 'keyValue', [Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Script35.AddCustomFieldOrEvent(FieldVal39);
Script35.SetUrl(['compiled:' + LineEnding +
  'set_location=Script35_set_location']);
Transform29.FdChildren.Add(Script35);
TimeSensor40 := TTimeSensorNode.Create;
TimeSensor40.X3DName := 'DECLpoint_INSTANCE1000_CL1';
TimeSensor40.CycleInterval := 3;
TimeSensor40.Loop := True;
Transform29.FdChildren.Add(TimeSensor40);
{ ROUTE DECLpoint_INSTANCE1000_CL1.cycleTime TO DECLpoint_INSTANCE1000_MB1.set_location }
Transform29.AddRoute(TimeSensor40.EventCycleTime, FieldVal38);
{ ROUTE DECLpoint_INSTANCE1000_CL1.fraction_changed TO DECLpoint_INSTANCE1000_PI1.set_fraction }
Transform29.AddRoute(TimeSensor40.EventFraction_changed, PositionInterpolator34.EventSet_fraction);
{ ROUTE DECLpoint_INSTANCE1000_MB1.keyValue TO DECLpoint_INSTANCE1000_PI1.keyValue }
Transform29.AddRoute(FieldVal39.EventOut, PositionInterpolator34.FdKeyValue.EventIn);
{ ROUTE DECLpoint_INSTANCE1000_PI1.value_changed TO DECLpoint_INSTANCE1000_node.set_translation }
Transform29.AddRoute(PositionInterpolator34.EventValue_changed, Transform29.FdTranslation.EventIn);
{ ROUTE DECLpoint_INSTANCE1000_MB1.translation_changed TO DECLpoint_INSTANCE1000_node.set_translation }
Transform29.AddRoute(FieldVal36.EventOut, Transform29.FdTranslation.EventIn);
Transform28.FdChildren.Add(Transform29);
Group7.FdChildren.Add(Transform28);
Transform46 := TTransformNode.Create;
Transform46.X3DName := 'transC1';
Transform47 := TTransformNode.Create;
Transform47.X3DName := 'rotscaleC1';
Shape48 := TShapeNode.Create;
Appearance49 := TAppearanceNode.Create;
Material50 := TMaterialNode.Create;
end;

procedure Initarc2Part3;
begin
Material50.DiffuseColor := Vector3(0.2, 0.7, 0.7);
Material50.Transparency := 0.5;
Appearance49.Material := Material50;
Shape48.Appearance := Appearance49;
Cylinder51 := TCylinderNode.Create;
Cylinder51.Radius := 0.05;
Shape48.Geometry := Cylinder51;
Transform47.FdChildren.Add(Shape48);
Transform46.FdChildren.Add(Transform47);
Group7.FdChildren.Add(Transform46);
Script52 := TScriptNode.Create;
Script52.X3DName := 'DECLx3dconnector_connector1_S1';
FieldVal53 := TSFNode.CreateUndefined(Script52, False, 'startnode');
Script52.AddCustomFieldOrEvent(FieldVal53);
FieldVal53.Value := Transform10;
FieldVal55 := TSFNode.CreateUndefined(Script52, False, 'endnode');
Script52.AddCustomFieldOrEvent(FieldVal55);
FieldVal55.Value := Transform28;
FieldVal57 := TSFNode.CreateUndefined(Script52, False, 'transC1');
Script52.AddCustomFieldOrEvent(FieldVal57);
FieldVal57.Value := Transform46;
FieldVal59 := TSFNode.CreateUndefined(Script52, False, 'rotscaleC1');
Script52.AddCustomFieldOrEvent(FieldVal59);
FieldVal59.Value := Transform47;
FieldVal61 := TSFVec3f.CreateEvent(Script52, 'set_startpoint', True);
Script52.AddCustomFieldOrEvent(FieldVal61);
FieldVal62 := TSFVec3f.CreateEvent(Script52, 'set_endpoint', True);
Script52.AddCustomFieldOrEvent(FieldVal62);
Script52.SetUrl(['compiled:' + LineEnding +
  'initialize=Script52_initialize' + LineEnding +
  'set_startpoint=Script52_set_startpoint' + LineEnding +
  'set_endpoint=Script52_set_endpoint']);
Group7.FdChildren.Add(Script52);
{ ROUTE G1.translation_changed TO DECLx3dconnector_connector1_S1.set_startpoint }
Group7.AddRoute(Transform10.EventTranslation_changed, FieldVal61);
{ ROUTE G2.translation_changed TO DECLx3dconnector_connector1_S1.set_endpoint }
Group7.AddRoute(Transform28.EventTranslation_changed, FieldVal62);
X3D0.AddChildren([Group7]);
end;

function Createarc2: TX3DRootNode;
var
  Binder: Tarc2ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript17List) do
    FreeAndNil(CompiledScript17List[_i]);
  SetLength(CompiledScript17List, 0);
  for _i := 0 to High(CompiledScript35List) do
    FreeAndNil(CompiledScript35List[_i]);
  SetLength(CompiledScript35List, 0);
  for _i := 0 to High(CompiledScript52List) do
    FreeAndNil(CompiledScript52List[_i]);
  SetLength(CompiledScript52List, 0);
  Initarc2Part0;
  Initarc2Part1;
  Initarc2Part2;
  Initarc2Part3;
  Binder := Tarc2ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registerarc2Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript17List) do
  begin
    CompiledScript17List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript35List) do
  begin
    CompiledScript35List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript52List) do
  begin
    CompiledScript52List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript52List[_i].Initialized) then
      CompiledScript52List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure Detacharc2Scripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript17List) do
  begin
    CompiledScript17List[_i].Detach;
    FreeAndNil(CompiledScript17List[_i]);
  end;
  SetLength(CompiledScript17List, 0);
  for _i := 0 to High(CompiledScript35List) do
  begin
    CompiledScript35List[_i].Detach;
    FreeAndNil(CompiledScript35List[_i]);
  end;
  SetLength(CompiledScript35List, 0);
  for _i := 0 to High(CompiledScript52List) do
  begin
    CompiledScript52List[_i].Detach;
    FreeAndNil(CompiledScript52List[_i]);
  end;
  SetLength(CompiledScript52List, 0);
end;

finalization
  while Length(CompiledScript17List) > 0 do
  begin
    FreeAndNil(CompiledScript17List[High(CompiledScript17List)]);
    SetLength(CompiledScript17List, Length(CompiledScript17List) - 1);
  end;
  while Length(CompiledScript35List) > 0 do
  begin
    FreeAndNil(CompiledScript35List[High(CompiledScript35List)]);
    SetLength(CompiledScript35List, Length(CompiledScript35List) - 1);
  end;
  while Length(CompiledScript52List) > 0 do
  begin
    FreeAndNil(CompiledScript52List[High(CompiledScript52List)]);
    SetLength(CompiledScript52List, Length(CompiledScript52List) - 1);
  end;
end.
