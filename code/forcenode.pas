unit forcenode;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createforcenode: TX3DRootNode;
procedure RegisterforcenodeScripts(const Scene: TCastleSceneCore);
procedure DetachforcenodeScripts;

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
  TScript27Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript27Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_cycle(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript47Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript47Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_endA(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_endB(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

  TScript65Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fcounter: Int32;
    FField_counter: TSFInt32;
    FBack_counter: TSFInt32;
    FDirty_counter: Boolean;
    Fnode_changed: TX3DNode;
    FEvent_node_changed: TX3DEvent;
    FBack_node_changed: TSFNode;
    FDirty_node_changed: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_counter: TSFInt32; const AEvent_node_changed: TX3DEvent);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript65Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Add_node(Value: TX3DField; const Time: TX3DTime);
  end;

  TforcenodeScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

  TforcenodeExtrusionHelper = class
  public
    procedure BindNode(Node: TX3DNode);
    procedure SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

var
  X3D0: TX3DRootNode;
  Group9: TGroupNode;
  ProtoDeclare10: TX3DPrototype;
  FieldDecl12: TX3DInterfaceDeclaration;
  FieldVal12: TSFVec3f;
  Group14: TGroupNode;
  Transform15: TTransformNode;
  Shape16: TShapeNode;
  Sphere17: TSphereNode;
  Appearance18: TAppearanceNode;
  Material19: TMaterialNode;
  Transform20: TTransformNode;
  Shape21: TShapeNode;
  Text22: TTextNode;
  FontStyle23: TFontStyleNode;
  Appearance24: TAppearanceNode;
  Material25: TMaterialNode;
  PositionInterpolator26: TPositionInterpolatorNode;
  Script27: TScriptNode;
  FieldVal28: TSFVec3f;
  FieldVal29: TSFVec3f;
  FieldVal30: TX3DEvent;
  FieldVal31: TX3DEvent;
  CompiledScript27List: array of TScript27Script;
  TimeSensor32: TTimeSensorNode;
  ProtoDeclare37: TX3DPrototype;
  FieldDecl39: TX3DInterfaceDeclaration;
  FieldVal39: TSFVec3f;
  FieldDecl40: TX3DInterfaceDeclaration;
  FieldVal40: TSFVec3f;
  Group42: TGroupNode;
  Shape43: TShapeNode;
  Extrusion44: TExtrusionNode;
  Appearance45: TAppearanceNode;
  Material46: TMaterialNode;
  Script47: TScriptNode;
  FieldVal48: TMFVec3f;
  FieldVal49: TSFVec3f;
  FieldVal50: TSFVec3f;
  CompiledScript47List: array of TScript47Script;
  Transform52: TTransformNode;
  PlaneSensor53: TPlaneSensorNode;
  ProtoInstance54: TX3DPrototypeNode;
  ProtoInstance56: TX3DPrototypeNode;
  ProtoInstance58: TX3DPrototypeNode;
  ProtoInstance60: TX3DPrototypeNode;
  ProtoInstance62: TX3DPrototypeNode;
  ProtoInstance63: TX3DPrototypeNode;
  ProtoInstance64: TX3DPrototypeNode;
  Script65: TScriptNode;
  FieldVal66: TSFInt32;
  FieldVal67: TX3DEvent;
  FieldVal68: TX3DEvent;
  CompiledScript65List: array of TScript65Script;
  CompiledforcenodeExtrusionHelper: TforcenodeExtrusionHelper;

constructor TScript27Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AEvent_keyValue: TX3DEvent);
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

class function TScript27Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript27Script;
begin
  Result := TScript27Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.AnyEvent('keyValue'));
end;

destructor TScript27Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript27Script.Detach;
begin
end;

procedure TScript27Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript27Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_cycle', {$ifdef FPC}@{$endif}Set_cycle);
end;

procedure TScript27Script.Set_cycle(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 100 - 50, Random * 100 - 50, Random * 100 - 50);
  FDirty_translation := True;
  FkeyValue := [Fold, Ftranslation];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript47Script.Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f; const AField_endA: TSFVec3f; const AField_endB: TSFVec3f);
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

class function TScript47Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript47Script;
begin
  Result := TScript47Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('spine') as TMFVec3f, AScriptNode.FieldOrEvent('endA') as TSFVec3f, AScriptNode.FieldOrEvent('endB') as TSFVec3f);
end;

destructor TScript47Script.Destroy;
begin
  FreeAndNil(FBack_spine);
  FreeAndNil(FBack_endA);
  FreeAndNil(FBack_endB);
  inherited Destroy;
end;

procedure TScript47Script.Detach;
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

procedure TScript47Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript47Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endB', {$ifdef FPC}@{$endif}Set_endB);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endB', {$ifdef FPC}@{$endif}Set_endB);
end;

procedure TScript47Script.OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endA(Value, Time);
end;

procedure TScript47Script.Set_endA(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endA.Seconds) and (Time.PlusTicks = FLastTime_set_endA.PlusTicks) then Exit;
  FLastTime_set_endA := Time;
  Fspine := [(Value as TSFVec3f).Value, Fspine[1]];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

procedure TScript47Script.OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endB(Value, Time);
end;

procedure TScript47Script.Set_endB(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endB.Seconds) and (Time.PlusTicks = FLastTime_set_endB.PlusTicks) then Exit;
  FLastTime_set_endB := Time;
  Fspine := [Fspine[0], (Value as TSFVec3f).Value];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

constructor TScript65Script.Create(const AHandlerPrefix: String; const AField_counter: TSFInt32; const AEvent_node_changed: TX3DEvent);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fcounter := 0;
  FField_counter := nil;
  FBack_counter := TSFInt32.Create(nil, False, 'counter', 0);
  FDirty_counter := False;
  Fnode_changed := nil;
  FEvent_node_changed := nil;
  FBack_node_changed := TSFNode.CreateUndefined(nil, False, 'node_changed');
  FDirty_node_changed := False;
  FField_counter := AField_counter;
  if AField_counter <> nil then Fcounter := AField_counter.Value;
  FEvent_node_changed := AEvent_node_changed;
end;

class function TScript65Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript65Script;
begin
  Result := TScript65Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('counter') as TSFInt32, AScriptNode.AnyEvent('node_changed'));
end;

destructor TScript65Script.Destroy;
begin
  FreeAndNil(FBack_counter);
  FreeAndNil(FBack_node_changed);
  inherited Destroy;
end;

procedure TScript65Script.Detach;
begin
end;

procedure TScript65Script.FlushOutputs(const Time: TX3DTime);
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
  if FDirty_node_changed then
  begin
    FDirty_node_changed := False;
    if FEvent_node_changed <> nil then
    begin
      FBack_node_changed.Value := Fnode_changed;
      FEvent_node_changed.Send(FBack_node_changed, Time);
    end;
  end;
end;

procedure TScript65Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'add_node', {$ifdef FPC}@{$endif}Add_node);
end;

procedure TScript65Script.Add_node(Value: TX3DField; const Time: TX3DTime);
begin
  Fcounter := Fcounter;
  Fcounter := Fcounter + 1;
  FDirty_counter := True;
  FDirty_counter := True;
  { Skipped unsupported JS Browser/DOM statement }
  FlushOutputs(Time);
end;

procedure TforcenodeScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script27_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript27List);
    Prefix := 'Script27_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_cycle=' + Prefix + 'set_cycle']);
    SetLength(CompiledScript27List, Idx + 1);
    CompiledScript27List[Idx] := TScript27Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script47_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript47List);
    Prefix := 'Script47_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_endA=' + Prefix + 'set_endA' + LineEnding +
      'endA=' + Prefix + 'endA' + LineEnding +
      'set_endB=' + Prefix + 'set_endB' + LineEnding +
      'endB=' + Prefix + 'endB']);
    SetLength(CompiledScript47List, Idx + 1);
    CompiledScript47List[Idx] := TScript47Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script65_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript65List);
    Prefix := 'Script65_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'add_node=' + Prefix + 'add_node']);
    SetLength(CompiledScript65List, Idx + 1);
    CompiledScript65List[Idx] := TScript65Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure TforcenodeExtrusionHelper.BindNode(Node: TX3DNode);
begin
  (Node as TExtrusionNode).EventSet_spine.AddNotification({$ifdef FPC}@{$endif}SpineReceive);
end;

procedure TforcenodeExtrusionHelper.SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
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

procedure InitforcenodePart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['creator'] := 'John W Carlson';
X3D0.Meta['created'] := 'December 13 2015';
X3D0.Meta['modified'] := 'July 14 2025';
X3D0.Meta['title'] := 'forcenode.x3d';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/force.x3d';
X3D0.Meta['description'] := 'beginnings of a force directed graph in 3D';
X3D0.Meta['generator'] := 'Vim, X3D-Edit, https://savage.nps.edu/X3D-Edit';
Group9 := TGroupNode.Create;
ProtoDeclare10 := CreateEmptyPrototype('node');
ProtoDeclare10.X3DName := 'node';
FieldVal12 := TSFVec3f.Create(nil, True, 'position', Vector3(0, 0, 0));
FieldDecl12 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl12.FieldOrEvent := FieldVal12;
FieldVal12.ParentInterfaceDeclaration := FieldDecl12;
ProtoDeclare10.InterfaceDeclarations.Add(FieldDecl12);
Group14 := TGroupNode.Create;
Transform15 := TTransformNode.Create;
Transform15.X3DName := 'transform';
Transform15.FieldOrEvent('translation', True).IsClauseNamesAdd('position');
Shape16 := TShapeNode.Create;
Sphere17 := TSphereNode.Create;
Shape16.Geometry := Sphere17;
Appearance18 := TAppearanceNode.Create;
Material19 := TMaterialNode.Create;
Material19.DiffuseColor := Vector3(1, 0, 0);
Appearance18.Material := Material19;
Shape16.Appearance := Appearance18;
Transform15.FdChildren.Add(Shape16);
Transform20 := TTransformNode.Create;
Transform20.Translation := Vector3(1, 0, 1);
Shape21 := TShapeNode.Create;
Text22 := TTextNode.Create;
Text22.SetText(['Node']);
FontStyle23 := TFontStyleNode.Create;
FontStyle23.Justify := fjMiddle;
FontStyle23.JustifyMinor := fjMiddle;
end;

procedure InitforcenodePart1;
begin
FontStyle23.Size := 5;
Text22.FontStyle := FontStyle23;
Shape21.Geometry := Text22;
Appearance24 := TAppearanceNode.Create;
Material25 := TMaterialNode.Create;
Material25.DiffuseColor := Vector3(0, 0, 1);
Appearance24.Material := Material25;
Shape21.Appearance := Appearance24;
Transform20.FdChildren.Add(Shape21);
Transform15.FdChildren.Add(Transform20);
Group14.FdChildren.Add(Transform15);
PositionInterpolator26 := TPositionInterpolatorNode.Create;
PositionInterpolator26.X3DName := 'NodePosition';
PositionInterpolator26.SetKey([0, 1]);
PositionInterpolator26.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Group14.FdChildren.Add(PositionInterpolator26);
Script27 := TScriptNode.Create;
Script27.X3DName := 'MoveBall';
FieldVal28 := TSFVec3f.Create(Script27, True, 'translation', Vector3(50, 50, 0));
Script27.AddCustomFieldOrEvent(FieldVal28);
FieldVal29 := TSFVec3f.Create(Script27, True, 'old', Vector3(0, 0, 0));
Script27.AddCustomFieldOrEvent(FieldVal29);
FieldVal30 := TSFTime.CreateEvent(Script27, 'set_cycle', True);
Script27.AddCustomFieldOrEvent(FieldVal30);
FieldVal31 := TMFVec3f.CreateEvent(Script27, 'keyValue', False);
Script27.AddCustomFieldOrEvent(FieldVal31);
Script27.SetUrl(['compiled:' + LineEnding +
  'set_cycle=Script27_set_cycle']);
Group14.FdChildren.Add(Script27);
TimeSensor32 := TTimeSensorNode.Create;
TimeSensor32.X3DName := 'nodeClock';
TimeSensor32.CycleInterval := 3;
TimeSensor32.Loop := True;
Group14.FdChildren.Add(TimeSensor32);
{ ROUTE nodeClock.cycleTime TO MoveBall.set_cycle }
Group14.AddRoute(TimeSensor32.EventCycleTime, FieldVal30);
{ ROUTE nodeClock.fraction_changed TO NodePosition.set_fraction }
Group14.AddRoute(TimeSensor32.EventFraction_changed, PositionInterpolator26.EventSet_fraction);
{ ROUTE MoveBall.keyValue TO NodePosition.keyValue }
Group14.AddRoute(FieldVal31, PositionInterpolator26.FdKeyValue.EventIn);
{ ROUTE NodePosition.value_changed TO transform.set_translation }
end;

procedure InitforcenodePart2;
begin
Group14.AddRoute(PositionInterpolator26.EventValue_changed, Transform15.FdTranslation.EventIn);
ProtoDeclare10.Node.AddChildren([Group14]);
X3D0.AddPrototype(ProtoDeclare10);
ProtoDeclare37 := CreateEmptyPrototype('cyl');
ProtoDeclare37.X3DName := 'cyl';
FieldVal39 := TSFVec3f.CreateUndefined(nil, True, 'set_positionA');
FieldDecl39 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl39.FieldOrEvent := FieldVal39;
FieldVal39.ParentInterfaceDeclaration := FieldDecl39;
ProtoDeclare37.InterfaceDeclarations.Add(FieldDecl39);
FieldVal40 := TSFVec3f.CreateUndefined(nil, True, 'set_positionB');
FieldDecl40 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl40.FieldOrEvent := FieldVal40;
FieldVal40.ParentInterfaceDeclaration := FieldDecl40;
ProtoDeclare37.InterfaceDeclarations.Add(FieldDecl40);
Group42 := TGroupNode.Create;
Shape43 := TShapeNode.Create;
Extrusion44 := TExtrusionNode.Create;
Extrusion44.X3DName := 'extrusion';
Extrusion44.CreaseAngle := 0.785;
Extrusion44.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion44.SetSpine([Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Shape43.Geometry := Extrusion44;
Appearance45 := TAppearanceNode.Create;
Material46 := TMaterialNode.Create;
Material46.DiffuseColor := Vector3(0, 1, 0);
Appearance45.Material := Material46;
Shape43.Appearance := Appearance45;
Group42.FdChildren.Add(Shape43);
Script47 := TScriptNode.Create;
Script47.X3DName := 'MoveCylinder';
FieldVal48 := TMFVec3f.Create(Script47, True, 'spine', [Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Script47.AddCustomFieldOrEvent(FieldVal48);
FieldVal49 := TSFVec3f.CreateUndefined(Script47, True, 'endA');
Script47.AddCustomFieldOrEvent(FieldVal49);
FieldVal50 := TSFVec3f.CreateUndefined(Script47, True, 'endB');
Script47.AddCustomFieldOrEvent(FieldVal50);
Script47.FieldOrEvent('endA', True).IsClauseNamesAdd('set_positionA');
Script47.FieldOrEvent('endB', True).IsClauseNamesAdd('set_positionB');
Script47.SetUrl(['compiled:' + LineEnding +
  'set_endA=Script47_set_endA' + LineEnding +
  'endA=Script47_endA' + LineEnding +
  'set_endB=Script47_set_endB' + LineEnding +
  'endB=Script47_endB']);
end;

procedure InitforcenodePart3;
begin
Group42.FdChildren.Add(Script47);
{ ROUTE MoveCylinder.spine TO extrusion.set_spine }
Group42.AddRoute(FieldVal48.EventOut, Extrusion44.EventSet_spine);
ProtoDeclare37.Node.AddChildren([Group42]);
X3D0.AddPrototype(ProtoDeclare37);
Transform52 := TTransformNode.Create;
Transform52.X3DName := 'HoldsContent';
Transform52.Scale := Vector3(0.1, 0.1, 0.1);
PlaneSensor53 := TPlaneSensorNode.Create;
PlaneSensor53.X3DName := 'clickGenerator';
PlaneSensor53.MinPosition := Vector2(-50, -50);
PlaneSensor53.MaxPosition := Vector2(50, 50);
PlaneSensor53.Description := 'click on background to add nodes, click on nodes to add links';
Transform52.FdChildren.Add(PlaneSensor53);
ProtoInstance54 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare10);
ProtoInstance54.X3DName := 'nodeA';
(ProtoInstance54.Field('position') as TSFVec3f).Value := Vector3(0, 0, 0);
Transform52.FdChildren.Add(ProtoInstance54.Instantiate);
ProtoInstance56 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare10);
ProtoInstance56.X3DName := 'nodeB';
(ProtoInstance56.Field('position') as TSFVec3f).Value := Vector3(50, 50, 50);
Transform52.FdChildren.Add(ProtoInstance56.Instantiate);
ProtoInstance58 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare10);
ProtoInstance58.X3DName := 'nodeC';
(ProtoInstance58.Field('position') as TSFVec3f).Value := Vector3(-50, -50, -50);
Transform52.FdChildren.Add(ProtoInstance58.Instantiate);
ProtoInstance60 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare10);
ProtoInstance60.X3DName := 'nodeD';
(ProtoInstance60.Field('position') as TSFVec3f).Value := Vector3(50, 50, -50);
Transform52.FdChildren.Add(ProtoInstance60.Instantiate);
ProtoInstance62 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare37);
ProtoInstance62.X3DName := 'linkA';
Transform52.FdChildren.Add(ProtoInstance62.Instantiate);
ProtoInstance63 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare37);
ProtoInstance63.X3DName := 'linkB';
Transform52.FdChildren.Add(ProtoInstance63.Instantiate);
ProtoInstance64 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare37);
ProtoInstance64.X3DName := 'linkC';
Transform52.FdChildren.Add(ProtoInstance64.Instantiate);
Group9.FdChildren.Add(Transform52);
end;

procedure InitforcenodePart4;
begin
Script65 := TScriptNode.Create;
Script65.X3DName := 'clickHandler';
FieldVal66 := TSFInt32.Create(Script65, True, 'counter', 0);
Script65.AddCustomFieldOrEvent(FieldVal66);
FieldVal67 := TSFNode.CreateEvent(Script65, 'node_changed', False);
Script65.AddCustomFieldOrEvent(FieldVal67);
FieldVal68 := TSFBool.CreateEvent(Script65, 'add_node', True);
Script65.AddCustomFieldOrEvent(FieldVal68);
{ <field name="ModifiableNode" type="SFNode" accessType="inputOutput"> }
{ <Transform USE="HoldsContent"/> }
{ </field> }
Script65.SetUrl(['compiled:' + LineEnding +
  'add_node=Script65_add_node']);
Group9.FdChildren.Add(Script65);
{ ROUTE clickGenerator.isActive TO clickHandler.add_node }
Group9.AddRoute(PlaneSensor53.EventIsActive, FieldVal68);
{ ROUTE nodeA.position TO linkA.set_positionA }
Group9.AddRoute(ProtoInstance54.FieldOrEvent('position'), ProtoInstance62.FieldOrEvent('set_positionA'));
{ ROUTE nodeB.position TO linkA.set_positionB }
Group9.AddRoute(ProtoInstance56.FieldOrEvent('position'), ProtoInstance62.FieldOrEvent('set_positionB'));
{ ROUTE nodeA.position TO linkB.set_positionA }
Group9.AddRoute(ProtoInstance54.FieldOrEvent('position'), ProtoInstance63.FieldOrEvent('set_positionA'));
{ ROUTE nodeC.position TO linkB.set_positionB }
Group9.AddRoute(ProtoInstance58.FieldOrEvent('position'), ProtoInstance63.FieldOrEvent('set_positionB'));
{ ROUTE nodeA.position TO linkC.set_positionA }
Group9.AddRoute(ProtoInstance54.FieldOrEvent('position'), ProtoInstance64.FieldOrEvent('set_positionA'));
{ ROUTE nodeD.position TO linkC.set_positionB }
Group9.AddRoute(ProtoInstance60.FieldOrEvent('position'), ProtoInstance64.FieldOrEvent('set_positionB'));
X3D0.AddChildren([Group9]);
end;

function Createforcenode: TX3DRootNode;
var
  Binder: TforcenodeScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript27List) do
    FreeAndNil(CompiledScript27List[_i]);
  SetLength(CompiledScript27List, 0);
  for _i := 0 to High(CompiledScript47List) do
    FreeAndNil(CompiledScript47List[_i]);
  SetLength(CompiledScript47List, 0);
  for _i := 0 to High(CompiledScript65List) do
    FreeAndNil(CompiledScript65List[_i]);
  SetLength(CompiledScript65List, 0);
  InitforcenodePart0;
  InitforcenodePart1;
  InitforcenodePart2;
  InitforcenodePart3;
  InitforcenodePart4;
  Binder := TforcenodeScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  FreeAndNil(CompiledforcenodeExtrusionHelper);
  CompiledforcenodeExtrusionHelper := TforcenodeExtrusionHelper.Create;
  X3D0.EnumerateNodes(TExtrusionNode, {$ifdef FPC}@{$endif}CompiledforcenodeExtrusionHelper.BindNode, False);
  Result := X3D0;
end;

procedure RegisterforcenodeScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript27List) do
  begin
    CompiledScript27List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript47List) do
  begin
    CompiledScript47List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript65List) do
  begin
    CompiledScript65List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachforcenodeScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript27List) do
  begin
    CompiledScript27List[_i].Detach;
    FreeAndNil(CompiledScript27List[_i]);
  end;
  SetLength(CompiledScript27List, 0);
  for _i := 0 to High(CompiledScript47List) do
  begin
    CompiledScript47List[_i].Detach;
    FreeAndNil(CompiledScript47List[_i]);
  end;
  SetLength(CompiledScript47List, 0);
  for _i := 0 to High(CompiledScript65List) do
  begin
    CompiledScript65List[_i].Detach;
    FreeAndNil(CompiledScript65List[_i]);
  end;
  SetLength(CompiledScript65List, 0);
end;

finalization
  while Length(CompiledScript27List) > 0 do
  begin
    FreeAndNil(CompiledScript27List[High(CompiledScript27List)]);
    SetLength(CompiledScript27List, Length(CompiledScript27List) - 1);
  end;
  while Length(CompiledScript47List) > 0 do
  begin
    FreeAndNil(CompiledScript47List[High(CompiledScript47List)]);
    SetLength(CompiledScript47List, Length(CompiledScript47List) - 1);
  end;
  while Length(CompiledScript65List) > 0 do
  begin
    FreeAndNil(CompiledScript65List[High(CompiledScript65List)]);
    SetLength(CompiledScript65List, Length(CompiledScript65List) - 1);
  end;
  FreeAndNil(CompiledforcenodeExtrusionHelper);
end.
