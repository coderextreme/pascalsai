unit force_tidy;

interface

uses X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createforce_tidy: TX3DRootNode;
procedure Registerforce_tidyScripts(const Scene: TCastleSceneCore);

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
  TScript29Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript29Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_cycle(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript49Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript49Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_endA(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_endB(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

  TScript67Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript67Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Add_node(Value: TX3DField; const Time: TX3DTime);
  end;

  Tforce_tidyScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

  Tforce_tidyExtrusionHelper = class
  public
    procedure BindNode(Node: TX3DNode);
    procedure SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

var
  X3D0: TX3DRootNode;
  Group11: TGroupNode;
  ProtoDeclare12: TX3DPrototype;
  FieldDecl14: TX3DInterfaceDeclaration;
  FieldVal14: TSFVec3f;
  Group16: TGroupNode;
  Transform17: TTransformNode;
  Shape18: TShapeNode;
  Sphere19: TSphereNode;
  Appearance20: TAppearanceNode;
  Material21: TMaterialNode;
  Transform22: TTransformNode;
  Shape23: TShapeNode;
  Appearance24: TAppearanceNode;
  Material25: TMaterialNode;
  Text26: TTextNode;
  FontStyle27: TFontStyleNode;
  PositionInterpolator28: TPositionInterpolatorNode;
  Script29: TScriptNode;
  FieldVal30: TSFVec3f;
  FieldVal31: TSFVec3f;
  FieldVal32: TX3DEvent;
  FieldVal33: TX3DEvent;
  CompiledScript29List: array of TScript29Script;
  TimeSensor34: TTimeSensorNode;
  ProtoDeclare39: TX3DPrototype;
  FieldDecl41: TX3DInterfaceDeclaration;
  FieldVal41: TSFVec3f;
  FieldDecl42: TX3DInterfaceDeclaration;
  FieldVal42: TSFVec3f;
  Group44: TGroupNode;
  Shape45: TShapeNode;
  Appearance46: TAppearanceNode;
  Material47: TMaterialNode;
  Extrusion48: TExtrusionNode;
  Script49: TScriptNode;
  FieldVal50: TMFVec3f;
  FieldVal51: TSFVec3f;
  FieldVal52: TSFVec3f;
  CompiledScript49List: array of TScript49Script;
  Transform54: TTransformNode;
  PlaneSensor55: TPlaneSensorNode;
  ProtoInstance56: TX3DPrototypeNode;
  ProtoInstance58: TX3DPrototypeNode;
  ProtoInstance60: TX3DPrototypeNode;
  ProtoInstance62: TX3DPrototypeNode;
  ProtoInstance64: TX3DPrototypeNode;
  ProtoInstance65: TX3DPrototypeNode;
  ProtoInstance66: TX3DPrototypeNode;
  Script67: TScriptNode;
  FieldVal68: TSFInt32;
  FieldVal69: TX3DEvent;
  FieldVal70: TX3DEvent;
  CompiledScript67List: array of TScript67Script;
  Compiledforce_tidyExtrusionHelper: Tforce_tidyExtrusionHelper;

constructor TScript29Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AEvent_keyValue: TX3DEvent);
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

class function TScript29Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript29Script;
begin
  Result := TScript29Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.AnyEvent('keyValue'));
end;

destructor TScript29Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript29Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript29Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_cycle', {$ifdef FPC}@{$endif}Set_cycle);
end;

procedure TScript29Script.Set_cycle(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 100 - 50, Random * 100 - 50, Random * 100 - 50);
  FDirty_translation := True;
  FkeyValue := [Fold, Ftranslation];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript49Script.Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f; const AField_endA: TSFVec3f; const AField_endB: TSFVec3f);
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

class function TScript49Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript49Script;
begin
  Result := TScript49Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('spine') as TMFVec3f, AScriptNode.FieldOrEvent('endA') as TSFVec3f, AScriptNode.FieldOrEvent('endB') as TSFVec3f);
end;

destructor TScript49Script.Destroy;
begin
  if FField_endB <> nil then
    FField_endB.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_endB);
  if FField_endA <> nil then
    FField_endA.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_endA);
  FreeAndNil(FBack_spine);
  FreeAndNil(FBack_endA);
  FreeAndNil(FBack_endB);
  inherited Destroy;
end;

procedure TScript49Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript49Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endA', {$ifdef FPC}@{$endif}Set_endA);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_endB', {$ifdef FPC}@{$endif}Set_endB);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'endB', {$ifdef FPC}@{$endif}Set_endB);
end;

procedure TScript49Script.OnNotif_set_endA(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endA(Value, Time);
end;

procedure TScript49Script.Set_endA(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endA.Seconds) and (Time.PlusTicks = FLastTime_set_endA.PlusTicks) then Exit;
  FLastTime_set_endA := Time;
  Fspine := [(Value as TSFVec3f).Value, Fspine[1]];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

procedure TScript49Script.OnNotif_set_endB(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_endB(Value, Time);
end;

procedure TScript49Script.Set_endB(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_endB.Seconds) and (Time.PlusTicks = FLastTime_set_endB.PlusTicks) then Exit;
  FLastTime_set_endB := Time;
  Fspine := [Fspine[0], (Value as TSFVec3f).Value];
  FDirty_spine := True;
  FlushOutputs(Time);
end;

constructor TScript67Script.Create(const AHandlerPrefix: String; const AField_counter: TSFInt32; const AEvent_node_changed: TX3DEvent);
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

class function TScript67Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript67Script;
begin
  Result := TScript67Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('counter') as TSFInt32, AScriptNode.AnyEvent('node_changed'));
end;

destructor TScript67Script.Destroy;
begin
  FreeAndNil(FBack_counter);
  FreeAndNil(FBack_node_changed);
  inherited Destroy;
end;

procedure TScript67Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript67Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'add_node', {$ifdef FPC}@{$endif}Add_node);
end;

procedure TScript67Script.Add_node(Value: TX3DField; const Time: TX3DTime);
begin
  Fcounter := Fcounter;
  Fcounter := Fcounter + 1;
  FDirty_counter := True;
  FDirty_counter := True;
  { Skipped unsupported JS Browser/DOM statement }
  FlushOutputs(Time);
end;

procedure Tforce_tidyScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script29_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript29List);
    Prefix := 'Script29_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_cycle=' + Prefix + 'set_cycle']);
    SetLength(CompiledScript29List, Idx + 1);
    CompiledScript29List[Idx] := TScript29Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script49_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript49List);
    Prefix := 'Script49_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_endA=' + Prefix + 'set_endA' + LineEnding +
      'endA=' + Prefix + 'endA' + LineEnding +
      'set_endB=' + Prefix + 'set_endB' + LineEnding +
      'endB=' + Prefix + 'endB']);
    SetLength(CompiledScript49List, Idx + 1);
    CompiledScript49List[Idx] := TScript49Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script67_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript67List);
    Prefix := 'Script67_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'add_node=' + Prefix + 'add_node']);
    SetLength(CompiledScript67List, Idx + 1);
    CompiledScript67List[Idx] := TScript67Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Tforce_tidyExtrusionHelper.BindNode(Node: TX3DNode);
begin
  (Node as TExtrusionNode).EventSet_spine.AddNotification({$ifdef FPC}@{$endif}SpineReceive);
end;

procedure Tforce_tidyExtrusionHelper.SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
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

procedure Initforce_tidyPart0;
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
X3D0.Meta['generator'] := 'x3d-tidy V1.0.175, https://www.npmjs.com/package/x3d-tidy';
Group11 := TGroupNode.Create;
ProtoDeclare12 := CreateEmptyPrototype('node');
ProtoDeclare12.X3DName := 'node';
FieldVal14 := TSFVec3f.CreateUndefined(nil, True, 'position');
FieldDecl14 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl14.FieldOrEvent := FieldVal14;
FieldVal14.ParentInterfaceDeclaration := FieldDecl14;
ProtoDeclare12.InterfaceDeclarations.Add(FieldDecl14);
Group16 := TGroupNode.Create;
Transform17 := TTransformNode.Create;
Transform17.X3DName := 'transform';
Transform17.FieldOrEvent('translation', True).IsClauseNamesAdd('position');
Shape18 := TShapeNode.Create;
Sphere19 := TSphereNode.Create;
Shape18.Geometry := Sphere19;
Appearance20 := TAppearanceNode.Create;
Material21 := TMaterialNode.Create;
Material21.DiffuseColor := Vector3(1, 0, 0);
Appearance20.Material := Material21;
Shape18.Appearance := Appearance20;
Transform17.FdChildren.Add(Shape18);
Transform22 := TTransformNode.Create;
Transform22.Translation := Vector3(1, 0, 0);
Shape23 := TShapeNode.Create;
Appearance24 := TAppearanceNode.Create;
Material25 := TMaterialNode.Create;
Material25.DiffuseColor := Vector3(0, 0, 1);
end;

procedure Initforce_tidyPart1;
begin
Appearance24.Material := Material25;
Shape23.Appearance := Appearance24;
Text26 := TTextNode.Create;
Text26.SetText(['Node']);
FontStyle27 := TFontStyleNode.Create;
FontStyle27.Size := 5;
FontStyle27.Justify := fjMiddle;
FontStyle27.JustifyMinor := fjMiddle;
Text26.FontStyle := FontStyle27;
Shape23.Geometry := Text26;
Transform22.FdChildren.Add(Shape23);
Transform17.FdChildren.Add(Transform22);
Group16.FdChildren.Add(Transform17);
PositionInterpolator28 := TPositionInterpolatorNode.Create;
PositionInterpolator28.X3DName := 'NodePosition';
PositionInterpolator28.SetKey([0, 1]);
PositionInterpolator28.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Group16.FdChildren.Add(PositionInterpolator28);
Script29 := TScriptNode.Create;
Script29.X3DName := 'MoveBall';
FieldVal30 := TSFVec3f.Create(Script29, True, 'translation', Vector3(50, 50, 0));
Script29.AddCustomFieldOrEvent(FieldVal30);
FieldVal31 := TSFVec3f.CreateUndefined(Script29, True, 'old');
Script29.AddCustomFieldOrEvent(FieldVal31);
FieldVal32 := TSFTime.CreateEvent(Script29, 'set_cycle', True);
Script29.AddCustomFieldOrEvent(FieldVal32);
FieldVal33 := TMFVec3f.CreateEvent(Script29, 'keyValue', False);
Script29.AddCustomFieldOrEvent(FieldVal33);
Script29.SetUrl(['compiled:' + LineEnding +
  'set_cycle=Script29_set_cycle']);
Group16.FdChildren.Add(Script29);
TimeSensor34 := TTimeSensorNode.Create;
TimeSensor34.X3DName := 'nodeClock';
TimeSensor34.CycleInterval := 3;
TimeSensor34.Loop := True;
Group16.FdChildren.Add(TimeSensor34);
{ ROUTE nodeClock.cycleTime TO MoveBall.set_cycle }
Group16.AddRoute(TimeSensor34.EventCycleTime, FieldVal32);
{ ROUTE nodeClock.fraction_changed TO NodePosition.set_fraction }
Group16.AddRoute(TimeSensor34.EventFraction_changed, PositionInterpolator28.EventSet_fraction);
{ ROUTE MoveBall.keyValue TO NodePosition.set_keyValue }
end;

procedure Initforce_tidyPart2;
begin
Group16.AddRoute(FieldVal33, PositionInterpolator28.FdKeyValue.EventIn);
{ ROUTE NodePosition.value_changed TO transform.set_translation }
Group16.AddRoute(PositionInterpolator28.EventValue_changed, Transform17.FdTranslation.EventIn);
ProtoDeclare12.Node.AddChildren([Group16]);
X3D0.AddPrototype(ProtoDeclare12);
ProtoDeclare39 := CreateEmptyPrototype('cyl');
ProtoDeclare39.X3DName := 'cyl';
FieldVal41 := TSFVec3f.CreateUndefined(nil, True, 'set_positionA');
FieldDecl41 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl41.FieldOrEvent := FieldVal41;
FieldVal41.ParentInterfaceDeclaration := FieldDecl41;
ProtoDeclare39.InterfaceDeclarations.Add(FieldDecl41);
FieldVal42 := TSFVec3f.CreateUndefined(nil, True, 'set_positionB');
FieldDecl42 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl42.FieldOrEvent := FieldVal42;
FieldVal42.ParentInterfaceDeclaration := FieldDecl42;
ProtoDeclare39.InterfaceDeclarations.Add(FieldDecl42);
Group44 := TGroupNode.Create;
Shape45 := TShapeNode.Create;
Appearance46 := TAppearanceNode.Create;
Material47 := TMaterialNode.Create;
Material47.DiffuseColor := Vector3(0, 1, 0);
Appearance46.Material := Material47;
Shape45.Appearance := Appearance46;
Extrusion48 := TExtrusionNode.Create;
Extrusion48.X3DName := 'extrusion';
Extrusion48.CreaseAngle := 0.785;
Extrusion48.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Extrusion48.SetSpine([Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Shape45.Geometry := Extrusion48;
Group44.FdChildren.Add(Shape45);
Script49 := TScriptNode.Create;
Script49.X3DName := 'MoveCylinder';
FieldVal50 := TMFVec3f.Create(Script49, True, 'spine', [Vector3(0, -50, 0), Vector3(0, 0, 0), Vector3(0, 50, 0)]);
Script49.AddCustomFieldOrEvent(FieldVal50);
FieldVal51 := TSFVec3f.CreateUndefined(Script49, True, 'endA');
Script49.AddCustomFieldOrEvent(FieldVal51);
FieldVal52 := TSFVec3f.CreateUndefined(Script49, True, 'endB');
Script49.AddCustomFieldOrEvent(FieldVal52);
Script49.FieldOrEvent('endA', True).IsClauseNamesAdd('set_positionA');
end;

procedure Initforce_tidyPart3;
begin
Script49.FieldOrEvent('endB', True).IsClauseNamesAdd('set_positionB');
Script49.SetUrl(['compiled:' + LineEnding +
  'set_endA=Script49_set_endA' + LineEnding +
  'endA=Script49_endA' + LineEnding +
  'set_endB=Script49_set_endB' + LineEnding +
  'endB=Script49_endB']);
Group44.FdChildren.Add(Script49);
{ ROUTE MoveCylinder.spine_changed TO extrusion.set_spine }
Group44.AddRoute(FieldVal50.EventOut, Extrusion48.EventSet_spine);
ProtoDeclare39.Node.AddChildren([Group44]);
X3D0.AddPrototype(ProtoDeclare39);
Transform54 := TTransformNode.Create;
Transform54.X3DName := 'HoldsContent';
Transform54.Scale := Vector3(0.1, 0.1, 0.1);
PlaneSensor55 := TPlaneSensorNode.Create;
PlaneSensor55.X3DName := 'clickGenerator';
PlaneSensor55.Description := 'click on background to add nodes, click on nodes to add links';
PlaneSensor55.MinPosition := Vector2(-50, -50);
PlaneSensor55.MaxPosition := Vector2(50, 50);
Transform54.FdChildren.Add(PlaneSensor55);
ProtoInstance56 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance56.X3DName := 'nodeA';
(ProtoInstance56.Field('position') as TSFVec3f).Value := Vector3(0, 1.388333, 0);
Transform54.FdChildren.Add(ProtoInstance56.Instantiate);
ProtoInstance58 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance58.X3DName := 'nodeB';
(ProtoInstance58.Field('position') as TSFVec3f).Value := Vector3(0, 1.388333, 0);
Transform54.FdChildren.Add(ProtoInstance58.Instantiate);
ProtoInstance60 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance60.X3DName := 'nodeC';
(ProtoInstance60.Field('position') as TSFVec3f).Value := Vector3(0, 1.388333, 0);
Transform54.FdChildren.Add(ProtoInstance60.Instantiate);
ProtoInstance62 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance62.X3DName := 'nodeD';
(ProtoInstance62.Field('position') as TSFVec3f).Value := Vector3(0, 1.388333, 0);
Transform54.FdChildren.Add(ProtoInstance62.Instantiate);
ProtoInstance64 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare39);
ProtoInstance64.X3DName := 'linkA';
Transform54.FdChildren.Add(ProtoInstance64.Instantiate);
ProtoInstance65 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare39);
ProtoInstance65.X3DName := 'linkB';
Transform54.FdChildren.Add(ProtoInstance65.Instantiate);
ProtoInstance66 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare39);
ProtoInstance66.X3DName := 'linkC';
end;

procedure Initforce_tidyPart4;
begin
Transform54.FdChildren.Add(ProtoInstance66.Instantiate);
Group11.FdChildren.Add(Transform54);
Script67 := TScriptNode.Create;
Script67.X3DName := 'clickHandler';
FieldVal68 := TSFInt32.CreateUndefined(Script67, True, 'counter');
Script67.AddCustomFieldOrEvent(FieldVal68);
FieldVal69 := TSFNode.CreateEvent(Script67, 'node_changed', False);
Script67.AddCustomFieldOrEvent(FieldVal69);
FieldVal70 := TSFBool.CreateEvent(Script67, 'add_node', True);
Script67.AddCustomFieldOrEvent(FieldVal70);
Script67.SetUrl(['compiled:' + LineEnding +
  'add_node=Script67_add_node']);
Group11.FdChildren.Add(Script67);
{ ROUTE clickGenerator.isActive TO clickHandler.add_node }
Group11.AddRoute(PlaneSensor55.EventIsActive, FieldVal70);
{ ROUTE nodeA.position_changed TO linkA.set_positionA }
Group11.AddRoute(ProtoInstance56.FieldOrEvent('position_changed'), ProtoInstance64.FieldOrEvent('set_positionA'));
{ ROUTE nodeB.position_changed TO linkA.set_positionB }
Group11.AddRoute(ProtoInstance58.FieldOrEvent('position_changed'), ProtoInstance64.FieldOrEvent('set_positionB'));
{ ROUTE nodeA.position_changed TO linkB.set_positionA }
Group11.AddRoute(ProtoInstance56.FieldOrEvent('position_changed'), ProtoInstance65.FieldOrEvent('set_positionA'));
{ ROUTE nodeC.position_changed TO linkB.set_positionB }
Group11.AddRoute(ProtoInstance60.FieldOrEvent('position_changed'), ProtoInstance65.FieldOrEvent('set_positionB'));
{ ROUTE nodeA.position_changed TO linkC.set_positionA }
Group11.AddRoute(ProtoInstance56.FieldOrEvent('position_changed'), ProtoInstance66.FieldOrEvent('set_positionA'));
{ ROUTE nodeD.position_changed TO linkC.set_positionB }
Group11.AddRoute(ProtoInstance62.FieldOrEvent('position_changed'), ProtoInstance66.FieldOrEvent('set_positionB'));
X3D0.AddChildren([Group11]);
end;

function Createforce_tidy: TX3DRootNode;
var
  Binder: Tforce_tidyScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript29List) do
    FreeAndNil(CompiledScript29List[_i]);
  SetLength(CompiledScript29List, 0);
  for _i := 0 to High(CompiledScript49List) do
    FreeAndNil(CompiledScript49List[_i]);
  SetLength(CompiledScript49List, 0);
  for _i := 0 to High(CompiledScript67List) do
    FreeAndNil(CompiledScript67List[_i]);
  SetLength(CompiledScript67List, 0);
  Initforce_tidyPart0;
  Initforce_tidyPart1;
  Initforce_tidyPart2;
  Initforce_tidyPart3;
  Initforce_tidyPart4;
  Binder := Tforce_tidyScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  FreeAndNil(Compiledforce_tidyExtrusionHelper);
  Compiledforce_tidyExtrusionHelper := Tforce_tidyExtrusionHelper.Create;
  X3D0.EnumerateNodes(TExtrusionNode, {$ifdef FPC}@{$endif}Compiledforce_tidyExtrusionHelper.BindNode, False);
  Result := X3D0;
end;

procedure Registerforce_tidyScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript29List) do
  begin
    CompiledScript29List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript49List) do
  begin
    CompiledScript49List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript67List) do
  begin
    CompiledScript67List[_i].RegisterHandlers(Scene);
  end;
end;

finalization
  while Length(CompiledScript29List) > 0 do
  begin
    FreeAndNil(CompiledScript29List[High(CompiledScript29List)]);
    SetLength(CompiledScript29List, Length(CompiledScript29List) - 1);
  end;
  while Length(CompiledScript49List) > 0 do
  begin
    FreeAndNil(CompiledScript49List[High(CompiledScript49List)]);
    SetLength(CompiledScript49List, Length(CompiledScript49List) - 1);
  end;
  while Length(CompiledScript67List) > 0 do
  begin
    FreeAndNil(CompiledScript67List[High(CompiledScript67List)]);
    SetLength(CompiledScript67List, Length(CompiledScript67List) - 1);
  end;
  FreeAndNil(Compiledforce_tidyExtrusionHelper);
end.
