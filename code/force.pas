unit force;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createforce: TX3DRootNode;
procedure RegisterforceScripts(const Scene: TCastleSceneCore);
procedure DetachforceScripts;

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
  TScript28Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript28Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_cycle(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript48Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript48Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_endA(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_endB(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

  TScript66Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fcounter: Int32;
    FField_counter: TSFInt32;
    FBack_counter: TSFInt32;
    FDirty_counter: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_counter: TSFInt32);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript66Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Add_node(Value: TX3DField; const Time: TX3DTime);
  end;

  TforceScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

  TforceExtrusionHelper = class
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
  Transform21: TTransformNode;
  Shape22: TShapeNode;
  Text23: TTextNode;
  FontStyle24: TFontStyleNode;
  Appearance25: TAppearanceNode;
  Material26: TMaterialNode;
  PositionInterpolator27: TPositionInterpolatorNode;
  Script28: TScriptNode;
  FieldVal29: TSFVec3f;
  FieldVal30: TSFVec3f;
  FieldVal31: TX3DEvent;
  FieldVal32: TX3DEvent;
  CompiledScript28List: array of TScript28Script;
  TimeSensor33: TTimeSensorNode;
  ProtoDeclare38: TX3DPrototype;
  FieldDecl40: TX3DInterfaceDeclaration;
  FieldVal40: TSFVec3f;
  FieldDecl41: TX3DInterfaceDeclaration;
  FieldVal41: TSFVec3f;
  Group43: TGroupNode;
  Shape44: TShapeNode;
  Extrusion45: TExtrusionNode;
  Appearance46: TAppearanceNode;
  Material47: TMaterialNode;
  Script48: TScriptNode;
  FieldVal49: TMFVec3f;
  FieldVal50: TSFVec3f;
  FieldVal51: TSFVec3f;
  CompiledScript48List: array of TScript48Script;
  Transform53: TTransformNode;
  PlaneSensor54: TPlaneSensorNode;
  ProtoInstance55: TX3DPrototypeNode;
  ProtoInstance57: TX3DPrototypeNode;
  ProtoInstance59: TX3DPrototypeNode;
  ProtoInstance61: TX3DPrototypeNode;
  ProtoInstance63: TX3DPrototypeNode;
  ProtoInstance64: TX3DPrototypeNode;
  ProtoInstance65: TX3DPrototypeNode;
  Script66: TScriptNode;
  FieldVal67: TSFInt32;
  FieldVal68: TX3DEvent;
  CompiledScript66List: array of TScript66Script;
  CompiledforceExtrusionHelper: TforceExtrusionHelper;

constructor TScript28Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AEvent_keyValue: TX3DEvent);
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

class function TScript28Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript28Script;
begin
  Result := TScript28Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.AnyEvent('keyValue'));
end;

destructor TScript28Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript28Script.Detach;
begin
end;

procedure TScript28Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript28Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_cycle', {$ifdef FPC}@{$endif}Set_cycle);
end;

procedure TScript28Script.Set_cycle(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 100 - 50, Random * 100 - 50, Random * 100 - 50);
  FDirty_translation := True;
  FkeyValue := [Fold, Ftranslation];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript48Script.Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f; const AField_endA: TSFVec3f; const AField_endB: TSFVec3f);
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

class function TScript48Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript48Script;
begin
  Result := TScript48Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('spine') as TMFVec3f, AScriptNode.FieldOrEvent('endA') as TSFVec3f, AScriptNode.FieldOrEvent('endB') as TSFVec3f);
end;

destructor TScript48Script.Destroy;
begin
  FreeAndNil(FBack_spine);
  FreeAndNil(FBack_endA);
  FreeAndNil(FBack_endB);
  inherited Destroy;
end;

procedure TScript48Script.Detach;
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

procedure TScript48Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript48Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endB', {$ifdef FPC}@{$endif}Set_endB);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endB', {$ifdef FPC}@{$endif}Set_endB);
end;

procedure TScript48Script.OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endA(Value, Time);
end;

procedure TScript48Script.Set_endA(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endA.Seconds) and (Time.PlusTicks = FLastTime_set_endA.PlusTicks) then Exit;
  FLastTime_set_endA := Time;
  Fspine := [(Value as TSFVec3f).Value, Fspine[1]];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

procedure TScript48Script.OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endB(Value, Time);
end;

procedure TScript48Script.Set_endB(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endB.Seconds) and (Time.PlusTicks = FLastTime_set_endB.PlusTicks) then Exit;
  FLastTime_set_endB := Time;
  Fspine := [Fspine[0], (Value as TSFVec3f).Value];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

constructor TScript66Script.Create(const AHandlerPrefix: String; const AField_counter: TSFInt32);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fcounter := 0;
  FField_counter := nil;
  FBack_counter := TSFInt32.Create(nil, False, 'counter', 0);
  FDirty_counter := False;
  FField_counter := AField_counter;
  if AField_counter <> nil then Fcounter := AField_counter.Value;
end;

class function TScript66Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript66Script;
begin
  Result := TScript66Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('counter') as TSFInt32);
end;

destructor TScript66Script.Destroy;
begin
  FreeAndNil(FBack_counter);
  inherited Destroy;
end;

procedure TScript66Script.Detach;
begin
end;

procedure TScript66Script.FlushOutputs(const Time: TX3DTime);
begin
  if FDirty_counter then
  begin
    FDirty_counter := False;
    if FField_counter <> nil then
    begin
      FField_counter.Value := Fcounter;
      FBack_counter.Value := Fcounter;
      if (FField_counter.ParentNode is TX3DNode) and (TX3DNode(FField_counter.ParentNode).Scene <> nil) then
        FField_counter.EventOut.Send(FBack_counter, TX3DNode(FField_counter.ParentNode).Scene.NextEventTime)
      else
        FField_counter.EventOut.Send(FBack_counter, Time);
    end;
  end;
end;

procedure TScript66Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'add_node', {$ifdef FPC}@{$endif}Add_node);
end;

procedure TScript66Script.Add_node(Value: TX3DField; const Time: TX3DTime);
begin
  Fcounter := Fcounter;
  Fcounter := Fcounter + 1;
  FDirty_counter := True;
  FDirty_counter := True;
  { Skipped unsupported JS Browser/DOM statement }
  FlushOutputs(Time);
end;

procedure TforceScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script28_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript28List);
    Prefix := 'Script28_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_cycle=' + Prefix + 'set_cycle']);
    SetLength(CompiledScript28List, Idx + 1);
    CompiledScript28List[Idx] := TScript28Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script48_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript48List);
    Prefix := 'Script48_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_endA=' + Prefix + 'set_endA' + LineEnding +
      'endA=' + Prefix + 'endA' + LineEnding +
      'set_endB=' + Prefix + 'set_endB' + LineEnding +
      'endB=' + Prefix + 'endB']);
    SetLength(CompiledScript48List, Idx + 1);
    CompiledScript48List[Idx] := TScript48Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script66_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript66List);
    Prefix := 'Script66_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'add_node=' + Prefix + 'add_node']);
    SetLength(CompiledScript66List, Idx + 1);
    CompiledScript66List[Idx] := TScript66Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure TforceExtrusionHelper.BindNode(Node: TX3DNode);
begin
  (Node as TExtrusionNode).EventSet_spine.AddNotification({$ifdef FPC}@{$endif}SpineReceive);
end;

procedure TforceExtrusionHelper.SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
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

procedure InitforcePart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Scripting'] := 1;
X3D0.Meta['creator'] := 'John W Carlson';
X3D0.Meta['created'] := 'December 13 2015';
X3D0.Meta['modified'] := 'July 14 2025';
X3D0.Meta['title'] := 'force.x3d';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/force.x3d';
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
Sphere18 := TSphereNode.Create;
Shape17.Geometry := Sphere18;
Appearance19 := TAppearanceNode.Create;
Material20 := TMaterialNode.Create;
Material20.DiffuseColor := Vector3(1, 0, 0);
Appearance19.Material := Material20;
Shape17.Appearance := Appearance19;
Transform16.FdChildren.Add(Shape17);
Transform21 := TTransformNode.Create;
Transform21.Translation := Vector3(1, 0, 0);
Shape22 := TShapeNode.Create;
Text23 := TTextNode.Create;
Text23.SetText(['Node']);
FontStyle24 := TFontStyleNode.Create;
FontStyle24.Justify := fjMiddle;
end;

procedure InitforcePart1;
begin
FontStyle24.JustifyMinor := fjMiddle;
FontStyle24.Size := 5;
Text23.FontStyle := FontStyle24;
Shape22.Geometry := Text23;
Appearance25 := TAppearanceNode.Create;
Material26 := TMaterialNode.Create;
Material26.DiffuseColor := Vector3(0, 0, 1);
Appearance25.Material := Material26;
Shape22.Appearance := Appearance25;
Transform21.FdChildren.Add(Shape22);
Transform16.FdChildren.Add(Transform21);
Group15.FdChildren.Add(Transform16);
PositionInterpolator27 := TPositionInterpolatorNode.Create;
PositionInterpolator27.X3DName := 'NodePosition';
PositionInterpolator27.SetKey([0, 1]);
PositionInterpolator27.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Group15.FdChildren.Add(PositionInterpolator27);
Script28 := TScriptNode.Create;
Script28.X3DName := 'MoveBall';
FieldVal29 := TSFVec3f.Create(Script28, True, 'translation', Vector3(50, 50, 0));
Script28.AddCustomFieldOrEvent(FieldVal29);
FieldVal30 := TSFVec3f.Create(Script28, True, 'old', Vector3(0, 0, 0));
Script28.AddCustomFieldOrEvent(FieldVal30);
FieldVal31 := TSFTime.CreateEvent(Script28, 'set_cycle', True);
Script28.AddCustomFieldOrEvent(FieldVal31);
FieldVal32 := TMFVec3f.CreateEvent(Script28, 'keyValue', False);
Script28.AddCustomFieldOrEvent(FieldVal32);
Script28.SetUrl(['compiled:' + LineEnding +
  'set_cycle=Script28_set_cycle']);
Group15.FdChildren.Add(Script28);
TimeSensor33 := TTimeSensorNode.Create;
TimeSensor33.X3DName := 'nodeClock';
TimeSensor33.CycleInterval := 3;
TimeSensor33.Loop := True;
Group15.FdChildren.Add(TimeSensor33);
{ ROUTE nodeClock.cycleTime TO MoveBall.set_cycle }
Group15.AddRoute(TimeSensor33.EventCycleTime, FieldVal31);
{ ROUTE nodeClock.fraction_changed TO NodePosition.set_fraction }
Group15.AddRoute(TimeSensor33.EventFraction_changed, PositionInterpolator27.EventSet_fraction);
{ ROUTE MoveBall.keyValue TO NodePosition.keyValue }
Group15.AddRoute(FieldVal32, PositionInterpolator27.FdKeyValue.EventIn);
end;

procedure InitforcePart2;
begin
{ ROUTE NodePosition.value_changed TO transform.set_translation }
Group15.AddRoute(PositionInterpolator27.EventValue_changed, Transform16.FdTranslation.EventIn);
ProtoDeclare11.Node.AddChildren([Group15]);
X3D0.AddPrototype(ProtoDeclare11);
ProtoDeclare38 := CreateEmptyPrototype('cyl');
ProtoDeclare38.X3DName := 'cyl';
FieldVal40 := TSFVec3f.Create(nil, True, 'set_positionA', Vector3(0, 0, 0));
FieldDecl40 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl40.FieldOrEvent := FieldVal40;
FieldVal40.ParentInterfaceDeclaration := FieldDecl40;
ProtoDeclare38.InterfaceDeclarations.Add(FieldDecl40);
FieldVal41 := TSFVec3f.Create(nil, True, 'set_positionB', Vector3(50, 50, 50));
FieldDecl41 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl41.FieldOrEvent := FieldVal41;
FieldVal41.ParentInterfaceDeclaration := FieldDecl41;
ProtoDeclare38.InterfaceDeclarations.Add(FieldDecl41);
Group43 := TGroupNode.Create;
Shape44 := TShapeNode.Create;
Extrusion45 := TExtrusionNode.Create;
Extrusion45.X3DName := 'extrusion';
Extrusion45.CreaseAngle := 0.785;
Extrusion45.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion45.SetSpine([Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Shape44.Geometry := Extrusion45;
Appearance46 := TAppearanceNode.Create;
Material47 := TMaterialNode.Create;
Material47.DiffuseColor := Vector3(0, 1, 0);
Appearance46.Material := Material47;
Shape44.Appearance := Appearance46;
Group43.FdChildren.Add(Shape44);
Script48 := TScriptNode.Create;
Script48.X3DName := 'MoveCylinder';
FieldVal49 := TMFVec3f.Create(Script48, True, 'spine', [Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Script48.AddCustomFieldOrEvent(FieldVal49);
FieldVal50 := TSFVec3f.Create(Script48, True, 'endA', Vector3(0, 0, 0));
Script48.AddCustomFieldOrEvent(FieldVal50);
FieldVal51 := TSFVec3f.Create(Script48, True, 'endB', Vector3(50, 50, 50));
Script48.AddCustomFieldOrEvent(FieldVal51);
Script48.FieldOrEvent('endA', True).IsClauseNamesAdd('set_positionA');
Script48.FieldOrEvent('endB', True).IsClauseNamesAdd('set_positionB');
end;

procedure InitforcePart3;
begin
Script48.SetUrl(['compiled:' + LineEnding +
  'set_endA=Script48_set_endA' + LineEnding +
  'endA=Script48_endA' + LineEnding +
  'set_endB=Script48_set_endB' + LineEnding +
  'endB=Script48_endB']);
Group43.FdChildren.Add(Script48);
{ ROUTE MoveCylinder.spine TO extrusion.set_spine }
Group43.AddRoute(FieldVal49.EventOut, Extrusion45.EventSet_spine);
ProtoDeclare38.Node.AddChildren([Group43]);
X3D0.AddPrototype(ProtoDeclare38);
Transform53 := TTransformNode.Create;
Transform53.X3DName := 'HoldsContent';
Transform53.Scale := Vector3(0.1, 0.1, 0.1);
PlaneSensor54 := TPlaneSensorNode.Create;
PlaneSensor54.X3DName := 'clickGenerator';
PlaneSensor54.MinPosition := Vector2(-50, -50);
PlaneSensor54.MaxPosition := Vector2(50, 50);
PlaneSensor54.Description := 'click on background to add nodes, click on nodes to add links';
Transform53.FdChildren.Add(PlaneSensor54);
ProtoInstance55 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
ProtoInstance55.X3DName := 'nodeA';
(ProtoInstance55.Field('position') as TSFVec3f).Value := Vector3(0, 0, 0);
Transform53.FdChildren.Add(ProtoInstance55.Instantiate);
ProtoInstance57 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
ProtoInstance57.X3DName := 'nodeB';
(ProtoInstance57.Field('position') as TSFVec3f).Value := Vector3(50, 50, 50);
Transform53.FdChildren.Add(ProtoInstance57.Instantiate);
ProtoInstance59 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
ProtoInstance59.X3DName := 'nodeC';
(ProtoInstance59.Field('position') as TSFVec3f).Value := Vector3(-50, -50, -50);
Transform53.FdChildren.Add(ProtoInstance59.Instantiate);
ProtoInstance61 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare11);
ProtoInstance61.X3DName := 'nodeD';
(ProtoInstance61.Field('position') as TSFVec3f).Value := Vector3(50, 50, -50);
Transform53.FdChildren.Add(ProtoInstance61.Instantiate);
ProtoInstance63 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare38);
ProtoInstance63.X3DName := 'linkA';
Transform53.FdChildren.Add(ProtoInstance63.Instantiate);
ProtoInstance64 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare38);
ProtoInstance64.X3DName := 'linkB';
Transform53.FdChildren.Add(ProtoInstance64.Instantiate);
ProtoInstance65 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare38);
ProtoInstance65.X3DName := 'linkC';
Transform53.FdChildren.Add(ProtoInstance65.Instantiate);
end;

procedure InitforcePart4;
begin
Group10.FdChildren.Add(Transform53);
Script66 := TScriptNode.Create;
Script66.X3DName := 'clickHandler';
FieldVal67 := TSFInt32.Create(Script66, True, 'counter', 0);
Script66.AddCustomFieldOrEvent(FieldVal67);
FieldVal68 := TSFBool.CreateEvent(Script66, 'add_node', True);
Script66.AddCustomFieldOrEvent(FieldVal68);
{ <field accessType="outputOnly" name="node_changed" type="SFNode"/> }
{ <field name="ModifiableNode" type="SFNode" accessType="inputOutput"> }
{ <Transform USE="HoldsContent"/> }
{ </field> }
Script66.SetUrl(['compiled:' + LineEnding +
  'add_node=Script66_add_node']);
Group10.FdChildren.Add(Script66);
{ ROUTE clickGenerator.isActive TO clickHandler.add_node }
Group10.AddRoute(PlaneSensor54.EventIsActive, FieldVal68);
{ ROUTE nodeA.position TO linkA.set_positionA }
Group10.AddRoute(ProtoInstance55.FieldOrEvent('position'), ProtoInstance63.FieldOrEvent('set_positionA'));
{ ROUTE nodeB.position TO linkA.set_positionB }
Group10.AddRoute(ProtoInstance57.FieldOrEvent('position'), ProtoInstance63.FieldOrEvent('set_positionB'));
{ ROUTE nodeA.position TO linkB.set_positionA }
Group10.AddRoute(ProtoInstance55.FieldOrEvent('position'), ProtoInstance64.FieldOrEvent('set_positionA'));
{ ROUTE nodeC.position TO linkB.set_positionB }
Group10.AddRoute(ProtoInstance59.FieldOrEvent('position'), ProtoInstance64.FieldOrEvent('set_positionB'));
{ ROUTE nodeA.position TO linkC.set_positionA }
Group10.AddRoute(ProtoInstance55.FieldOrEvent('position'), ProtoInstance65.FieldOrEvent('set_positionA'));
{ ROUTE nodeD.position TO linkC.set_positionB }
Group10.AddRoute(ProtoInstance61.FieldOrEvent('position'), ProtoInstance65.FieldOrEvent('set_positionB'));
X3D0.AddChildren([Group10]);
end;

function Createforce: TX3DRootNode;
var
  Binder: TforceScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript28List) do
    FreeAndNil(CompiledScript28List[_i]);
  SetLength(CompiledScript28List, 0);
  for _i := 0 to High(CompiledScript48List) do
    FreeAndNil(CompiledScript48List[_i]);
  SetLength(CompiledScript48List, 0);
  for _i := 0 to High(CompiledScript66List) do
    FreeAndNil(CompiledScript66List[_i]);
  SetLength(CompiledScript66List, 0);
  InitforcePart0;
  InitforcePart1;
  InitforcePart2;
  InitforcePart3;
  InitforcePart4;
  Binder := TforceScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  FreeAndNil(CompiledforceExtrusionHelper);
  CompiledforceExtrusionHelper := TforceExtrusionHelper.Create;
  X3D0.EnumerateNodes(TExtrusionNode, {$ifdef FPC}@{$endif}CompiledforceExtrusionHelper.BindNode, False);
  Result := X3D0;
end;

procedure RegisterforceScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript28List) do
  begin
    CompiledScript28List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript48List) do
  begin
    CompiledScript48List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript66List) do
  begin
    CompiledScript66List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachforceScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript28List) do
  begin
    CompiledScript28List[_i].Detach;
    FreeAndNil(CompiledScript28List[_i]);
  end;
  SetLength(CompiledScript28List, 0);
  for _i := 0 to High(CompiledScript48List) do
  begin
    CompiledScript48List[_i].Detach;
    FreeAndNil(CompiledScript48List[_i]);
  end;
  SetLength(CompiledScript48List, 0);
  for _i := 0 to High(CompiledScript66List) do
  begin
    CompiledScript66List[_i].Detach;
    FreeAndNil(CompiledScript66List[_i]);
  end;
  SetLength(CompiledScript66List, 0);
end;

finalization
  while Length(CompiledScript28List) > 0 do
  begin
    FreeAndNil(CompiledScript28List[High(CompiledScript28List)]);
    SetLength(CompiledScript28List, Length(CompiledScript28List) - 1);
  end;
  while Length(CompiledScript48List) > 0 do
  begin
    FreeAndNil(CompiledScript48List[High(CompiledScript48List)]);
    SetLength(CompiledScript48List, Length(CompiledScript48List) - 1);
  end;
  while Length(CompiledScript66List) > 0 do
  begin
    FreeAndNil(CompiledScript66List[High(CompiledScript66List)]);
    SetLength(CompiledScript66List, Length(CompiledScript66List) - 1);
  end;
  FreeAndNil(CompiledforceExtrusionHelper);
end.
