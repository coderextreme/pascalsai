unit fors2;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, HAnimDisplacerSupport, CastleSceneCore;

function Createfors2: TX3DRootNode;
procedure Registerfors2Scripts(const Scene: TCastleSceneCore);
procedure Detachfors2Scripts;

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
  TScript22Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript22Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_cycle(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript42Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fspine: array of TVector3;
    FField_spine: TMFVec3f;
    FBack_spine: TMFVec3f;
    FDirty_spine: Boolean;
    FendA: TVector3;
    FField_endA: TSFVec3f;
    FBack_endA: TSFVec3f;
    FDirty_endA: Boolean;
    FendB: TVector3;
    FField_endB: TSFVec3f;
    FBack_endB: TSFVec3f;
    FDirty_endB: Boolean;
    FLastTime_set_endA: TX3DTime;
    FLastTime_set_endB: TX3DTime;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f; const AField_endA: TSFVec3f; const AField_endB: TSFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript42Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_endA(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_endB(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

  Tfors2ScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

  Tfors2ExtrusionHelper = class
  public
    procedure BindNode(Node: TX3DNode);
    procedure SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

var
  X3D0: TX3DRootNode;
  Group10: TGroupNode;
  ProtoDeclare11: TX3DPrototype;
  FieldDecl13: TX3DInterfaceDeclaration;
  FieldVal13: TSFVec3f;
  Group15: TGroupNode;
  Transform16: TTransformNode;
  Shape17: TShapeNode;
  Sphere18: TSphereNode;
  Appearance19: TAppearanceNode;
  Material20: TMaterialNode;
  PositionInterpolator21: TPositionInterpolatorNode;
  Script22: TScriptNode;
  FieldVal23: TSFVec3f;
  FieldVal24: TSFVec3f;
  FieldVal25: TX3DEvent;
  FieldVal26: TX3DEvent;
  CompiledScript22List: array of TScript22Script;
  TimeSensor27: TTimeSensorNode;
  ProtoDeclare32: TX3DPrototype;
  FieldDecl34: TX3DInterfaceDeclaration;
  FieldVal34: TSFVec3f;
  FieldDecl35: TX3DInterfaceDeclaration;
  FieldVal35: TSFVec3f;
  Group37: TGroupNode;
  Shape38: TShapeNode;
  Extrusion39: TExtrusionNode;
  Appearance40: TAppearanceNode;
  Material41: TMaterialNode;
  Script42: TScriptNode;
  FieldVal43: TMFVec3f;
  FieldVal44: TSFVec3f;
  FieldVal45: TSFVec3f;
  CompiledScript42List: array of TScript42Script;
  Transform47: TTransformNode;
  ProtoInstance48: TX3DPrototypeNode;
  ProtoInstance50: TX3DPrototypeNode;
  ProtoInstance52: TX3DPrototypeNode;
  Compiledfors2ExtrusionHelper: Tfors2ExtrusionHelper;

constructor TScript22Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AEvent_keyValue: TX3DEvent);
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

class function TScript22Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript22Script;
begin
  Result := TScript22Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.AnyEvent('keyValue'));
end;

destructor TScript22Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript22Script.Detach;
begin
end;

procedure TScript22Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript22Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_cycle', {$ifdef FPC}@{$endif}Set_cycle);
end;

procedure TScript22Script.Set_cycle(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 100 - 50, Random * 100 - 50, Random * 100 - 50);
  FDirty_translation := True;
  FkeyValue := [Fold, Ftranslation];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript42Script.Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f; const AField_endA: TSFVec3f; const AField_endB: TSFVec3f);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fspine := nil;
  FField_spine := nil;
  FBack_spine := TMFVec3f.CreateUndefined(nil, False, 'spine');
  FDirty_spine := False;
  FendA := Vector3(0, 0, 0);
  FField_endA := nil;
  FBack_endA := TSFVec3f.Create(nil, False, 'endA', Vector3(0, 0, 0));
  FDirty_endA := False;
  FendB := Vector3(0, 0, 0);
  FField_endB := nil;
  FBack_endB := TSFVec3f.Create(nil, False, 'endB', Vector3(0, 0, 0));
  FDirty_endB := False;
  FLastTime_set_endA := TX3DTime.Oldest;
  FLastTime_set_endB := TX3DTime.Oldest;
  FField_spine := AField_spine;
  if AField_spine <> nil then
  begin
    SetLength(Fspine, AField_spine.Items.Count);
    for _i := 0 to AField_spine.Items.Count - 1 do
      Fspine[_i] := AField_spine.Items[_i];
  end;
  FField_endA := AField_endA;
  if AField_endA <> nil then FendA := AField_endA.Value;
  FField_endB := AField_endB;
  if AField_endB <> nil then FendB := AField_endB.Value;
  if FField_endA <> nil then
    FField_endA.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_endA);
  if FField_endB <> nil then
    FField_endB.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_endB);
end;

class function TScript42Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript42Script;
begin
  Result := TScript42Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('spine') as TMFVec3f, AScriptNode.FieldOrEvent('endA') as TSFVec3f, AScriptNode.FieldOrEvent('endB') as TSFVec3f);
end;

destructor TScript42Script.Destroy;
begin
  FreeAndNil(FBack_spine);
  FreeAndNil(FBack_endA);
  FreeAndNil(FBack_endB);
  inherited Destroy;
end;

procedure TScript42Script.Detach;
begin
  if FField_endA <> nil then
  begin
    FField_endA.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_endA);
    FField_endA := nil;
  end;
  if FField_endB <> nil then
  begin
    FField_endB.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_endB);
    FField_endB := nil;
  end;
end;

procedure TScript42Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_spine then
  begin
    FDirty_spine := False;
    if FField_spine <> nil then
    begin
      FField_spine.Items.Clear;
      FBack_spine.Items.Clear;
      for _i := 0 to High(Fspine) do
      begin
        FField_spine.Items.Add(Fspine[_i]);
        FBack_spine.Items.Add(Fspine[_i]);
      end;
      if (FField_spine.ParentNode is TX3DNode) and (TX3DNode(FField_spine.ParentNode).Scene <> nil) then
        FField_spine.EventOut.Send(FBack_spine, TX3DNode(FField_spine.ParentNode).Scene.NextEventTime)
      else
        FField_spine.EventOut.Send(FBack_spine, Time);
    end;
  end;
  if FDirty_endA then
  begin
    FDirty_endA := False;
    if FField_endA <> nil then
    begin
      FField_endA.Value := FendA;
      FBack_endA.Value := FendA;
      if (FField_endA.ParentNode is TX3DNode) and (TX3DNode(FField_endA.ParentNode).Scene <> nil) then
        FField_endA.EventOut.Send(FBack_endA, TX3DNode(FField_endA.ParentNode).Scene.NextEventTime)
      else
        FField_endA.EventOut.Send(FBack_endA, Time);
    end;
  end;
  if FDirty_endB then
  begin
    FDirty_endB := False;
    if FField_endB <> nil then
    begin
      FField_endB.Value := FendB;
      FBack_endB.Value := FendB;
      if (FField_endB.ParentNode is TX3DNode) and (TX3DNode(FField_endB.ParentNode).Scene <> nil) then
        FField_endB.EventOut.Send(FBack_endB, TX3DNode(FField_endB.ParentNode).Scene.NextEventTime)
      else
        FField_endB.EventOut.Send(FBack_endB, Time);
    end;
  end;
end;

procedure TScript42Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endB', {$ifdef FPC}@{$endif}Set_endB);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endB', {$ifdef FPC}@{$endif}Set_endB);
end;

procedure TScript42Script.OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endA(Value, Time);
end;

procedure TScript42Script.Set_endA(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endA.Seconds) and (Time.PlusTicks = FLastTime_set_endA.PlusTicks) then Exit;
  FLastTime_set_endA := Time;
  Fspine := [(Value as TSFVec3f).Value, Fspine[1]];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

procedure TScript42Script.OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endB(Value, Time);
end;

procedure TScript42Script.Set_endB(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endB.Seconds) and (Time.PlusTicks = FLastTime_set_endB.PlusTicks) then Exit;
  FLastTime_set_endB := Time;
  Fspine := [Fspine[0], (Value as TSFVec3f).Value];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

procedure Tfors2ScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script22_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript22List);
    Prefix := 'Script22_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_cycle=' + Prefix + 'set_cycle']);
    SetLength(CompiledScript22List, Idx + 1);
    CompiledScript22List[Idx] := TScript22Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script42_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript42List);
    Prefix := 'Script42_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_endA=' + Prefix + 'set_endA' + LineEnding +
      'endA=' + Prefix + 'endA' + LineEnding +
      'set_endB=' + Prefix + 'set_endB' + LineEnding +
      'endB=' + Prefix + 'endB']);
    SetLength(CompiledScript42List, Idx + 1);
    CompiledScript42List[Idx] := TScript42Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Tfors2ExtrusionHelper.BindNode(Node: TX3DNode);
begin
  (Node as TExtrusionNode).EventSet_spine.AddNotification({$ifdef FPC}@{$endif}SpineReceive);
end;

procedure Tfors2ExtrusionHelper.SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
var
  Ext: TExtrusionNode;
  NewSpine: TMFVec3f;
begin
  Ext := Event.ParentNode as TExtrusionNode;
  NewSpine := Value as TMFVec3f;
  if not Ext.FdSpine.Equals(NewSpine) then
  begin
    Ext.FdSpine.AssignValue(NewSpine);
    Ext.FdSpine.Changed;
  end;
end;

procedure Initfors2Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Scripting'] := 1;
X3D0.Meta['creator'] := 'John W Carlson';
X3D0.Meta['created'] := 'December 13 2015';
X3D0.Meta['modified'] := 'July 14 2025';
X3D0.Meta['title'] := 'fors2.x3d';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/fors2.x3d';
X3D0.Meta['description'] := 'beginnings of a force directed graph in 3D';
X3D0.Meta['generator'] := 'Vim, X3D-Edit, https://savage.nps.edu/X3D-Edit';
Group10 := TGroupNode.Create;
ProtoDeclare11 := CreateEmptyPrototype('node');
ProtoDeclare11.X3DName := 'node';
FieldVal13 := TSFVec3f.Create(nil, True, 'position', Vector3(0, 0, 0));
FieldDecl13 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl13.FieldOrEvent := FieldVal13;
FieldVal13.ParentInterfaceDeclaration := FieldDecl13;
ProtoDeclare11.InterfaceDeclarations.Add(FieldDecl13);
Group15 := TGroupNode.Create;
Transform16 := TTransformNode.Create;
Transform16.X3DName := 'transform';
Transform16.FieldOrEvent('translation', True).IsClauseNamesAdd('position');
Shape17 := TShapeNode.Create;
{ comment before Sphere }
{ comment after Sphere }
{ comment after Appearance }
Sphere18 := TSphereNode.Create;
Shape17.Geometry := Sphere18;
Appearance19 := TAppearanceNode.Create;
{ comment before Material }
{ comment after Material }
Material20 := TMaterialNode.Create;
Material20.DiffuseColor := Vector3(1, 0, 0);
Appearance19.Material := Material20;
Shape17.Appearance := Appearance19;
Transform16.FdChildren.Add(Shape17);
Group15.FdChildren.Add(Transform16);
PositionInterpolator21 := TPositionInterpolatorNode.Create;
end;

procedure Initfors2Part1;
begin
PositionInterpolator21.X3DName := 'NodePosition';
PositionInterpolator21.SetKey([0, 1]);
PositionInterpolator21.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Group15.FdChildren.Add(PositionInterpolator21);
Script22 := TScriptNode.Create;
Script22.X3DName := 'MoveBall';
FieldVal23 := TSFVec3f.Create(Script22, True, 'translation', Vector3(50, 50, 0));
Script22.AddCustomFieldOrEvent(FieldVal23);
FieldVal24 := TSFVec3f.Create(Script22, True, 'old', Vector3(0, 0, 0));
Script22.AddCustomFieldOrEvent(FieldVal24);
FieldVal25 := TSFTime.CreateEvent(Script22, 'set_cycle', True);
Script22.AddCustomFieldOrEvent(FieldVal25);
FieldVal26 := TMFVec3f.CreateEvent(Script22, 'keyValue', False);
Script22.AddCustomFieldOrEvent(FieldVal26);
Script22.SetUrl(['compiled:' + LineEnding +
  'set_cycle=Script22_set_cycle']);
Group15.FdChildren.Add(Script22);
TimeSensor27 := TTimeSensorNode.Create;
TimeSensor27.X3DName := 'nodeClock';
TimeSensor27.CycleInterval := 3;
TimeSensor27.Loop := True;
Group15.FdChildren.Add(TimeSensor27);
{ ROUTE nodeClock.cycleTime TO MoveBall.set_cycle }
Group15.AddRoute(TimeSensor27.EventCycleTime, FieldVal25);
{ ROUTE nodeClock.fraction_changed TO NodePosition.set_fraction }
Group15.AddRoute(TimeSensor27.EventFraction_changed, PositionInterpolator21.EventSet_fraction);
{ ROUTE MoveBall.keyValue TO NodePosition.keyValue }
Group15.AddRoute(FieldVal26, PositionInterpolator21.FdKeyValue.EventIn);
{ ROUTE NodePosition.value_changed TO transform.set_translation }
Group15.AddRoute(PositionInterpolator21.EventValue_changed, Transform16.FdTranslation.EventIn);
ProtoDeclare11.Node.AddChildren([Group15]);
X3D0.AddPrototype(ProtoDeclare11);
ProtoDeclare32 := CreateEmptyPrototype('cyl');
ProtoDeclare32.X3DName := 'cyl';
FieldVal34 := TSFVec3f.CreateUndefined(nil, True, 'positionA');
FieldDecl34 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl34.FieldOrEvent := FieldVal34;
FieldVal34.ParentInterfaceDeclaration := FieldDecl34;
ProtoDeclare32.InterfaceDeclarations.Add(FieldDecl34);
FieldVal35 := TSFVec3f.CreateUndefined(nil, True, 'positionB');
FieldDecl35 := TX3DInterfaceDeclaration.Create(nil);
end;

procedure Initfors2Part2;
begin
FieldDecl35.FieldOrEvent := FieldVal35;
FieldVal35.ParentInterfaceDeclaration := FieldDecl35;
ProtoDeclare32.InterfaceDeclarations.Add(FieldDecl35);
Group37 := TGroupNode.Create;
Shape38 := TShapeNode.Create;
Extrusion39 := TExtrusionNode.Create;
Extrusion39.X3DName := 'extrusion';
Extrusion39.CreaseAngle := 0.785;
Extrusion39.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion39.SetSpine([Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Shape38.Geometry := Extrusion39;
Appearance40 := TAppearanceNode.Create;
Material41 := TMaterialNode.Create;
Material41.DiffuseColor := Vector3(0, 1, 0);
Appearance40.Material := Material41;
Shape38.Appearance := Appearance40;
Group37.FdChildren.Add(Shape38);
Script42 := TScriptNode.Create;
Script42.X3DName := 'MoveCylinder';
FieldVal43 := TMFVec3f.Create(Script42, True, 'spine', [Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Script42.AddCustomFieldOrEvent(FieldVal43);
FieldVal44 := TSFVec3f.Create(Script42, True, 'endA', Vector3(0, 0, 0));
Script42.AddCustomFieldOrEvent(FieldVal44);
FieldVal45 := TSFVec3f.Create(Script42, True, 'endB', Vector3(50, 50, 50));
Script42.AddCustomFieldOrEvent(FieldVal45);
Script42.FieldOrEvent('endA', True).IsClauseNamesAdd('positionA');
Script42.FieldOrEvent('endB', True).IsClauseNamesAdd('positionB');
Script42.SetUrl(['compiled:' + LineEnding +
  'set_endA=Script42_set_endA' + LineEnding +
  'endA=Script42_endA' + LineEnding +
  'set_endB=Script42_set_endB' + LineEnding +
  'endB=Script42_endB']);
Group37.FdChildren.Add(Script42);
{ ROUTE MoveCylinder.spine TO extrusion.set_spine }
Group37.AddRoute(FieldVal43.EventOut, Extrusion39.EventSet_spine);
ProtoDeclare32.Node.AddChildren([Group37]);
X3D0.AddPrototype(ProtoDeclare32);
Transform47 := TTransformNode.Create;
Transform47.Scale := Vector3(0.1, 0.1, 0.1);
ProtoInstance48 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
ProtoInstance48.X3DName := 'nodeA';
(ProtoInstance48.Field('position') as TSFVec3f).Value := Vector3(-50, -50, -50);
Transform47.FdChildren.Add(ProtoInstance48.Instantiate);
ProtoInstance50 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
end;

procedure Initfors2Part3;
begin
ProtoInstance50.X3DName := 'nodeB';
(ProtoInstance50.Field('position') as TSFVec3f).Value := Vector3(50, 50, 50);
Transform47.FdChildren.Add(ProtoInstance50.Instantiate);
ProtoInstance52 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare32);
ProtoInstance52.X3DName := 'linkA';
Transform47.FdChildren.Add(ProtoInstance52.Instantiate);
Group10.FdChildren.Add(Transform47);
{ ROUTE nodeA.position TO linkA.positionA }
Group10.AddRoute(ProtoInstance48.FieldOrEvent('position'), ProtoInstance52.FieldOrEvent('positionA'));
{ ROUTE nodeB.position TO linkA.positionB }
Group10.AddRoute(ProtoInstance50.FieldOrEvent('position'), ProtoInstance52.FieldOrEvent('positionB'));
X3D0.AddChildren([Group10]);
end;

function Createfors2: TX3DRootNode;
var
  Binder: Tfors2ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript22List) do
    FreeAndNil(CompiledScript22List[_i]);
  SetLength(CompiledScript22List, 0);
  for _i := 0 to High(CompiledScript42List) do
    FreeAndNil(CompiledScript42List[_i]);
  SetLength(CompiledScript42List, 0);
  Initfors2Part0;
  Initfors2Part1;
  Initfors2Part2;
  Initfors2Part3;
  Binder := Tfors2ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  FreeAndNil(Compiledfors2ExtrusionHelper);
  Compiledfors2ExtrusionHelper := Tfors2ExtrusionHelper.Create;
  X3D0.EnumerateNodes(TExtrusionNode, {$ifdef FPC}@{$endif}Compiledfors2ExtrusionHelper.BindNode, False);
  Result := X3D0;
end;

procedure Registerfors2Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript22List) do
  begin
    CompiledScript22List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript42List) do
  begin
    CompiledScript42List[_i].RegisterHandlers(Scene);
  end;
end;

procedure Detachfors2Scripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript22List) do
  begin
    CompiledScript22List[_i].Detach;
    FreeAndNil(CompiledScript22List[_i]);
  end;
  SetLength(CompiledScript22List, 0);
  for _i := 0 to High(CompiledScript42List) do
  begin
    CompiledScript42List[_i].Detach;
    FreeAndNil(CompiledScript42List[_i]);
  end;
  SetLength(CompiledScript42List, 0);
end;

finalization
  while Length(CompiledScript22List) > 0 do
  begin
    FreeAndNil(CompiledScript22List[High(CompiledScript22List)]);
    SetLength(CompiledScript22List, Length(CompiledScript22List) - 1);
  end;
  while Length(CompiledScript42List) > 0 do
  begin
    FreeAndNil(CompiledScript42List[High(CompiledScript42List)]);
    SetLength(CompiledScript42List, Length(CompiledScript42List) - 1);
  end;
  FreeAndNil(Compiledfors2ExtrusionHelper);
end.
