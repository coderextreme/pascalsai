unit arc4;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createarc4: TX3DRootNode;
procedure Registerarc4Scripts(const Scene: TCastleSceneCore);
procedure Detacharc4Scripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript16Script_MFVec3Array = array of TVector3;
  TScript16Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Ftranslation: TVector3;
    FField_translation: TSFVec3f;
    FBack_translation: TSFVec3f;
    FDirty_translation: Boolean;
    Fold: TVector3;
    FField_old: TSFVec3f;
    FBack_old: TSFVec3f;
    FDirty_old: Boolean;
    FkeyValue: TScript16Script_MFVec3Array;
    FField_keyValue: TMFVec3f;
    FBack_keyValue: TMFVec3f;
    FDirty_keyValue: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript16Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Set_location(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript32Script_MFVec3Array = array of TVector3;
  TScript32Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Ftranslation: TVector3;
    FField_translation: TSFVec3f;
    FBack_translation: TSFVec3f;
    FDirty_translation: Boolean;
    Fold: TVector3;
    FField_old: TSFVec3f;
    FBack_old: TSFVec3f;
    FDirty_old: Boolean;
    FkeyValue: TScript32Script_MFVec3Array;
    FField_keyValue: TMFVec3f;
    FBack_keyValue: TMFVec3f;
    FDirty_keyValue: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript32Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Set_location(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript49Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Fstartnode: TX3DNode;
    Fendnode: TX3DNode;
    Fposition: TX3DNode;
    FField_position: TSFNode;
    FBack_position: TSFNode;
    FDirty_position: Boolean;
    Frotscale: TX3DNode;
    FField_rotscale: TSFNode;
    FBack_rotscale: TSFNode;
    FDirty_rotscale: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
    procedure SendNodeVec3(const Node: TX3DNode; const EventName: String; const Val: TVector3; const Time: TX3DTime);
    procedure SendNodeVec4(const Node: TX3DNode; const EventName: String; const Val: TVector4; const Time: TX3DTime);
    function GetNodeVec3(const Node: TX3DNode; const FieldName: String): TVector3;
  public
    constructor Create(const AHandlerPrefix: String; const AField_startnode: TSFNode; const AField_endnode: TSFNode; const AField_position: TSFNode; const AField_rotscale: TSFNode);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript49Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    function Recompute(const startpoint: TVector3; const endpoint: TVector3; const Time: TX3DTime): Single;
    procedure Recompute_and_route(const startpoint: TVector3; const endpoint: TVector3; const Time: TX3DTime);
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_startpoint(Value: TX3DField; const Time: TX3DTime);
    procedure Set_endpoint(Value: TX3DField; const Time: TX3DTime);
  end;

  Tarc4ScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group7: TGroupNode;
  Viewpoint8: TViewpointNode;
  Background9: TBackgroundNode;
  Transform10: TTransformNode;
  Shape11: TShapeNode;
  Sphere12: TSphereNode;
  Appearance13: TAppearanceNode;
  Material14: TMaterialNode;
  PositionInterpolator15: TPositionInterpolatorNode;
  Script16: TScriptNode;
  FieldVal17: TSFVec3f;
  FieldVal18: TSFVec3f;
  FieldVal19: TX3DEvent;
  FieldVal20: TMFVec3f;
  CompiledScript16List: array of TScript16Script;
  TimeSensor21: TTimeSensorNode;
  Transform26: TTransformNode;
  Shape27: TShapeNode;
  Sphere28: TSphereNode;
  Appearance29: TAppearanceNode;
  Material30: TMaterialNode;
  PositionInterpolator31: TPositionInterpolatorNode;
  Script32: TScriptNode;
  FieldVal33: TSFVec3f;
  FieldVal34: TSFVec3f;
  FieldVal35: TX3DEvent;
  FieldVal36: TMFVec3f;
  CompiledScript32List: array of TScript32Script;
  TimeSensor37: TTimeSensorNode;
  Group42: TGroupNode;
  Transform43: TTransformNode;
  Transform44: TTransformNode;
  Shape45: TShapeNode;
  Appearance46: TAppearanceNode;
  Material47: TMaterialNode;
  Cylinder48: TCylinderNode;
  Script49: TScriptNode;
  FieldVal50: TSFNode;
  FieldVal51: TSFNode;
  FieldVal52: TSFNode;
  FieldVal54: TSFNode;
  FieldVal56: TX3DEvent;
  FieldVal57: TX3DEvent;
  CompiledScript49List: array of TScript49Script;

constructor TScript16Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
var
  _i: Integer;
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
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

class function TScript16Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript16Script;
begin
  Result := TScript16Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.FieldOrEvent('keyValue') as TMFVec3f);
end;

destructor TScript16Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript16Script.Detach;
begin
end;

procedure TScript16Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript16Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_location', {$ifdef FPC}@{$endif}Set_location);
end;

procedure TScript16Script.Set_location(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 10 - 5, Random * 10 - 5, Random * 10 - 5);
  FDirty_translation := True;
  FkeyValue := [[Fold, Ftranslation]];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript32Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_old: TSFVec3f; const AField_keyValue: TMFVec3f);
var
  _i: Integer;
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
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

class function TScript32Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript32Script;
begin
  Result := TScript32Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('old') as TSFVec3f, AScriptNode.FieldOrEvent('keyValue') as TMFVec3f);
end;

destructor TScript32Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_old);
  FreeAndNil(FBack_keyValue);
  inherited Destroy;
end;

procedure TScript32Script.Detach;
begin
end;

procedure TScript32Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript32Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_location', {$ifdef FPC}@{$endif}Set_location);
end;

procedure TScript32Script.Set_location(Value: TX3DField; const Time: TX3DTime);
begin
  Fold := Ftranslation;
  FDirty_old := True;
  Ftranslation := Vector3(Random * 10 - 5, Random * 10 - 5, Random * 10 - 5);
  FDirty_translation := True;
  FkeyValue := [[Fold, Ftranslation]];
  FDirty_keyValue := True;
  FlushOutputs(Time);
end;

constructor TScript49Script.Create(const AHandlerPrefix: String; const AField_startnode: TSFNode; const AField_endnode: TSFNode; const AField_position: TSFNode; const AField_rotscale: TSFNode);
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
  Fstartnode := nil;
  Fendnode := nil;
  Fposition := nil;
  FField_position := nil;
  FBack_position := TSFNode.CreateUndefined(nil, False, 'position');
  FDirty_position := False;
  Frotscale := nil;
  FField_rotscale := nil;
  FBack_rotscale := TSFNode.CreateUndefined(nil, False, 'rotscale');
  FDirty_rotscale := False;
  if AField_startnode <> nil then Fstartnode := AField_startnode.Value;
  if AField_endnode <> nil then Fendnode := AField_endnode.Value;
  FField_position := AField_position;
  if AField_position <> nil then Fposition := AField_position.Value;
  FField_rotscale := AField_rotscale;
  if AField_rotscale <> nil then Frotscale := AField_rotscale.Value;
end;

class function TScript49Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript49Script;
begin
  Result := TScript49Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('startnode') as TSFNode, AScriptNode.FieldOrEvent('endnode') as TSFNode, AScriptNode.FieldOrEvent('position') as TSFNode, AScriptNode.FieldOrEvent('rotscale') as TSFNode);
end;

destructor TScript49Script.Destroy;
begin
  FreeAndNil(FBack_position);
  FreeAndNil(FBack_rotscale);
  inherited Destroy;
end;

procedure TScript49Script.Detach;
begin
end;

procedure TScript49Script.FlushOutputs(const Time: TX3DTime);
begin
  if FDirty_position then
  begin
    FDirty_position := False;
    if FField_position <> nil then
    begin
      FField_position.Value := Fposition;
      FBack_position.Value := Fposition;
      if (FField_position.ParentNode is TX3DNode) and (TX3DNode(FField_position.ParentNode).Scene <> nil) then
        FField_position.EventOut.Send(FBack_position, TX3DNode(FField_position.ParentNode).Scene.NextEventTime)
      else
        FField_position.EventOut.Send(FBack_position, Time);
    end;
  end;
  if FDirty_rotscale then
  begin
    FDirty_rotscale := False;
    if FField_rotscale <> nil then
    begin
      FField_rotscale.Value := Frotscale;
      FBack_rotscale.Value := Frotscale;
      if (FField_rotscale.ParentNode is TX3DNode) and (TX3DNode(FField_rotscale.ParentNode).Scene <> nil) then
        FField_rotscale.EventOut.Send(FBack_rotscale, TX3DNode(FField_rotscale.ParentNode).Scene.NextEventTime)
      else
        FField_rotscale.EventOut.Send(FBack_rotscale, Time);
    end;
  end;
end;

procedure TScript49Script.SendNodeVec3(const Node: TX3DNode; const EventName: String; const Val: TVector3; const Time: TX3DTime);
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
  if E is TSFVec3fEvent then
    TSFVec3fEvent(E).Send(Val, Time)
  else if E is TSFColorEvent then
    TSFColorEvent(E).Send(Val, Time);
end;

procedure TScript49Script.SendNodeVec4(const Node: TX3DNode; const EventName: String; const Val: TVector4; const Time: TX3DTime);
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
  if E is TSFVec4fEvent then
    TSFVec4fEvent(E).Send(Val, Time)
  else if E is TSFRotationEvent then
    TSFRotationEvent(E).Send(Val, Time)
  else if E is TSFColorRGBAEvent then
    TSFColorRGBAEvent(E).Send(Val, Time);
end;

function TScript49Script.GetNodeVec3(const Node: TX3DNode; const FieldName: String): TVector3;
var
  FOE: TX3DFieldOrEvent;
begin
  Result := Vector3(0, 0, 0);
  if Node = nil then Exit;
  FOE := Node.FieldOrEvent(FieldName);
  if FOE is TSFVec3f then Result := TSFVec3f(FOE).Value
  else if FOE is TSFColor then Result := TSFColor(FOE).Value;
end;

procedure TScript49Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_startpoint', {$ifdef FPC}@{$endif}Set_startpoint);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_endpoint', {$ifdef FPC}@{$endif}Set_endpoint);
end;

function TScript49Script.Recompute(const startpoint: TVector3; const endpoint: TVector3; const Time: TX3DTime): Single;
var
  dif: TVector3;
  dist: Single;
  dif2: TVector3;
  norm: TVector3;
  transl: TVector3;
begin
  dif := (endpoint - startpoint);
  dist := dif.Length * 0.5;
  dif2 := (dif * 0.5);
  norm := dif.Normalize;
  transl := (startpoint + dif2);
  Result := 0;
  Exit;
end;

procedure TScript49Script.Recompute_and_route(const startpoint: TVector3; const endpoint: TVector3; const Time: TX3DTime);
var
  trafo: Single;
begin
  trafo := Recompute(startpoint, endpoint, Time);
  SendNodeVec3(Fposition, 'translation', trafo.translation, Time);
  SendNodeVec4(Frotscale, 'rotation', trafo.rotation, Time);
  SendNodeVec3(Frotscale, 'scale', trafo.scale, Time);
end;

procedure TScript49Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FScriptInitialized := True;
  Recompute_and_route(GetNodeVec3(Fstartnode, 'translation'), GetNodeVec3(Fendnode, 'translation'), Time);
  FlushOutputs(Time);
end;

procedure TScript49Script.Set_startpoint(Value: TX3DField; const Time: TX3DTime);
begin
  Recompute_and_route((Value as TSFVec3f).Value, GetNodeVec3(Fendnode, 'translation'), Time);
  FlushOutputs(Time);
end;

procedure TScript49Script.Set_endpoint(Value: TX3DField; const Time: TX3DTime);
begin
  Recompute_and_route(GetNodeVec3(Fstartnode, 'translation'), (Value as TSFVec3f).Value, Time);
  FlushOutputs(Time);
end;

procedure Tarc4ScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script16_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript16List);
    Prefix := 'Script16_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_location=' + Prefix + 'set_location']);
    SetLength(CompiledScript16List, Idx + 1);
    CompiledScript16List[Idx] := TScript16Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script32_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript32List);
    Prefix := 'Script32_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_location=' + Prefix + 'set_location']);
    SetLength(CompiledScript32List, Idx + 1);
    CompiledScript32List[Idx] := TScript32Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script49_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript49List);
    Prefix := 'Script49_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_startpoint=' + Prefix + 'set_startpoint' + LineEnding +
      'set_endpoint=' + Prefix + 'set_endpoint']);
    SetLength(CompiledScript49List, Idx + 1);
    CompiledScript49List[Idx] := TScript49Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Initarc4Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'arc4.x3d';
X3D0.Meta['creator'] := 'Lost, Doug Sanden I think';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/x3dconnectorProto.x3d';
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
Transform10.X3DName := 'DECLpoint_G1_node';
Shape11 := TShapeNode.Create;
Sphere12 := TSphereNode.Create;
Sphere12.Radius := 0.1;
Shape11.Geometry := Sphere12;
Appearance13 := TAppearanceNode.Create;
Material14 := TMaterialNode.Create;
Material14.DiffuseColor := Vector3(1, 0, 0);
Appearance13.Material := Material14;
Shape11.Appearance := Appearance13;
Transform10.FdChildren.Add(Shape11);
PositionInterpolator15 := TPositionInterpolatorNode.Create;
PositionInterpolator15.X3DName := 'DECLpoint_G1_PI1';
PositionInterpolator15.SetKey([0, 1]);
PositionInterpolator15.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Transform10.FdChildren.Add(PositionInterpolator15);
Script16 := TScriptNode.Create;
Script16.X3DName := 'DECLpoint_G1_MB1';
FieldVal17 := TSFVec3f.Create(Script16, True, 'translation', Vector3(0, 0, 0));
Script16.AddCustomFieldOrEvent(FieldVal17);
FieldVal18 := TSFVec3f.Create(Script16, True, 'old', Vector3(0, 0, 0));
Script16.AddCustomFieldOrEvent(FieldVal18);
end;

procedure Initarc4Part1;
begin
FieldVal19 := TSFTime.CreateEvent(Script16, 'set_location', True);
Script16.AddCustomFieldOrEvent(FieldVal19);
FieldVal20 := TMFVec3f.Create(Script16, True, 'keyValue', [Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Script16.AddCustomFieldOrEvent(FieldVal20);
Script16.SetUrl(['compiled:' + LineEnding +
  'set_location=Script16_set_location']);
Transform10.FdChildren.Add(Script16);
TimeSensor21 := TTimeSensorNode.Create;
TimeSensor21.X3DName := 'DECLpoint_G1_CL1';
TimeSensor21.CycleInterval := 3;
TimeSensor21.Loop := True;
Transform10.FdChildren.Add(TimeSensor21);
{ ROUTE DECLpoint_G1_CL1.cycleTime TO DECLpoint_G1_MB1.set_location }
Transform10.AddRoute(TimeSensor21.EventCycleTime, FieldVal19);
{ ROUTE DECLpoint_G1_CL1.fraction_changed TO DECLpoint_G1_PI1.set_fraction }
Transform10.AddRoute(TimeSensor21.EventFraction_changed, PositionInterpolator15.EventSet_fraction);
{ ROUTE DECLpoint_G1_MB1.keyValue TO DECLpoint_G1_PI1.keyValue }
Transform10.AddRoute(FieldVal20.EventOut, PositionInterpolator15.FdKeyValue.EventIn);
{ ROUTE DECLpoint_G1_PI1.value_changed TO DECLpoint_G1_node.set_translation }
Transform10.AddRoute(PositionInterpolator15.EventValue_changed, Transform10.FdTranslation.EventIn);
Group7.FdChildren.Add(Transform10);
Transform26 := TTransformNode.Create;
Transform26.X3DName := 'DECLpoint_G2_node';
Shape27 := TShapeNode.Create;
Sphere28 := TSphereNode.Create;
Sphere28.Radius := 0.1;
Shape27.Geometry := Sphere28;
Appearance29 := TAppearanceNode.Create;
Material30 := TMaterialNode.Create;
Material30.DiffuseColor := Vector3(1, 0, 0);
Appearance29.Material := Material30;
Shape27.Appearance := Appearance29;
Transform26.FdChildren.Add(Shape27);
PositionInterpolator31 := TPositionInterpolatorNode.Create;
PositionInterpolator31.X3DName := 'DECLpoint_G2_PI1';
PositionInterpolator31.SetKey([0, 1]);
PositionInterpolator31.SetKeyValue([Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Transform26.FdChildren.Add(PositionInterpolator31);
Script32 := TScriptNode.Create;
Script32.X3DName := 'DECLpoint_G2_MB1';
FieldVal33 := TSFVec3f.Create(Script32, True, 'translation', Vector3(0, 0, 0));
end;

procedure Initarc4Part2;
begin
Script32.AddCustomFieldOrEvent(FieldVal33);
FieldVal34 := TSFVec3f.Create(Script32, True, 'old', Vector3(0, 0, 0));
Script32.AddCustomFieldOrEvent(FieldVal34);
FieldVal35 := TSFTime.CreateEvent(Script32, 'set_location', True);
Script32.AddCustomFieldOrEvent(FieldVal35);
FieldVal36 := TMFVec3f.Create(Script32, True, 'keyValue', [Vector3(0, 0, 0), Vector3(0, 5, 0)]);
Script32.AddCustomFieldOrEvent(FieldVal36);
Script32.SetUrl(['compiled:' + LineEnding +
  'set_location=Script32_set_location']);
Transform26.FdChildren.Add(Script32);
TimeSensor37 := TTimeSensorNode.Create;
TimeSensor37.X3DName := 'DECLpoint_G2_CL1';
TimeSensor37.CycleInterval := 3;
TimeSensor37.Loop := True;
Transform26.FdChildren.Add(TimeSensor37);
{ ROUTE DECLpoint_G2_CL1.cycleTime TO DECLpoint_G2_MB1.set_location }
Transform26.AddRoute(TimeSensor37.EventCycleTime, FieldVal35);
{ ROUTE DECLpoint_G2_CL1.fraction_changed TO DECLpoint_G2_PI1.set_fraction }
Transform26.AddRoute(TimeSensor37.EventFraction_changed, PositionInterpolator31.EventSet_fraction);
{ ROUTE DECLpoint_G2_MB1.keyValue TO DECLpoint_G2_PI1.keyValue }
Transform26.AddRoute(FieldVal36.EventOut, PositionInterpolator31.FdKeyValue.EventIn);
{ ROUTE DECLpoint_G2_PI1.value_changed TO DECLpoint_G2_node.set_translation }
Transform26.AddRoute(PositionInterpolator31.EventValue_changed, Transform26.FdTranslation.EventIn);
Group7.FdChildren.Add(Transform26);
Group42 := TGroupNode.Create;
Transform43 := TTransformNode.Create;
Transform43.X3DName := 'DECLx3dconnector_connector1_trans';
Transform44 := TTransformNode.Create;
Transform44.X3DName := 'DECLx3dconnector_connector1_rotscale';
Shape45 := TShapeNode.Create;
Appearance46 := TAppearanceNode.Create;
Material47 := TMaterialNode.Create;
Material47.DiffuseColor := Vector3(0.2, 0.7, 0.7);
Material47.Transparency := 0.5;
Appearance46.Material := Material47;
Shape45.Appearance := Appearance46;
Cylinder48 := TCylinderNode.Create;
Cylinder48.Radius := 0.05;
Shape45.Geometry := Cylinder48;
Transform44.FdChildren.Add(Shape45);
Transform43.FdChildren.Add(Transform44);
end;

procedure Initarc4Part3;
begin
Group42.FdChildren.Add(Transform43);
Script49 := TScriptNode.Create;
Script49.X3DName := 'DECLx3dconnector_connector1_S1';
FieldVal50 := TSFNode.CreateUndefined(Script49, False, 'startnode');
Script49.AddCustomFieldOrEvent(FieldVal50);
FieldVal51 := TSFNode.CreateUndefined(Script49, False, 'endnode');
Script49.AddCustomFieldOrEvent(FieldVal51);
FieldVal52 := TSFNode.CreateUndefined(Script49, True, 'position');
Script49.AddCustomFieldOrEvent(FieldVal52);
FieldVal52.Value := Transform43;
FieldVal54 := TSFNode.CreateUndefined(Script49, True, 'rotscale');
Script49.AddCustomFieldOrEvent(FieldVal54);
FieldVal54.Value := Transform44;
FieldVal56 := TSFVec3f.CreateEvent(Script49, 'set_startpoint', True);
Script49.AddCustomFieldOrEvent(FieldVal56);
FieldVal57 := TSFVec3f.CreateEvent(Script49, 'set_endpoint', True);
Script49.AddCustomFieldOrEvent(FieldVal57);
Script49.SetUrl(['compiled:' + LineEnding +
  'initialize=Script49_initialize' + LineEnding +
  'set_startpoint=Script49_set_startpoint' + LineEnding +
  'set_endpoint=Script49_set_endpoint']);
Group42.FdChildren.Add(Script49);
Group7.FdChildren.Add(Group42);
{ ROUTE DECLpoint_G1_node.translation_changed TO DECLx3dconnector_connector1_S1.set_startpoint }
Group7.AddRoute(Transform10.EventTranslation_changed, FieldVal56);
{ ROUTE DECLpoint_G2_node.translation_changed TO DECLx3dconnector_connector1_S1.set_endpoint }
Group7.AddRoute(Transform26.EventTranslation_changed, FieldVal57);
X3D0.AddChildren([Group7]);
end;

function Createarc4: TX3DRootNode;
var
  Binder: Tarc4ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript16List) do
    FreeAndNil(CompiledScript16List[_i]);
  SetLength(CompiledScript16List, 0);
  for _i := 0 to High(CompiledScript32List) do
    FreeAndNil(CompiledScript32List[_i]);
  SetLength(CompiledScript32List, 0);
  for _i := 0 to High(CompiledScript49List) do
    FreeAndNil(CompiledScript49List[_i]);
  SetLength(CompiledScript49List, 0);
  Initarc4Part0;
  Initarc4Part1;
  Initarc4Part2;
  Initarc4Part3;
  Binder := Tarc4ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registerarc4Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript16List) do
  begin
    CompiledScript16List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript32List) do
  begin
    CompiledScript32List[_i].RegisterHandlers(Scene);
  end;
  for _i := 0 to High(CompiledScript49List) do
  begin
    CompiledScript49List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript49List[_i].Initialized) then
      CompiledScript49List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure Detacharc4Scripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript16List) do
  begin
    CompiledScript16List[_i].Detach;
    FreeAndNil(CompiledScript16List[_i]);
  end;
  SetLength(CompiledScript16List, 0);
  for _i := 0 to High(CompiledScript32List) do
  begin
    CompiledScript32List[_i].Detach;
    FreeAndNil(CompiledScript32List[_i]);
  end;
  SetLength(CompiledScript32List, 0);
  for _i := 0 to High(CompiledScript49List) do
  begin
    CompiledScript49List[_i].Detach;
    FreeAndNil(CompiledScript49List[_i]);
  end;
  SetLength(CompiledScript49List, 0);
end;

finalization
  while Length(CompiledScript16List) > 0 do
  begin
    FreeAndNil(CompiledScript16List[High(CompiledScript16List)]);
    SetLength(CompiledScript16List, Length(CompiledScript16List) - 1);
  end;
  while Length(CompiledScript32List) > 0 do
  begin
    FreeAndNil(CompiledScript32List[High(CompiledScript32List)]);
    SetLength(CompiledScript32List, Length(CompiledScript32List) - 1);
  end;
  while Length(CompiledScript49List) > 0 do
  begin
    FreeAndNil(CompiledScript49List[High(CompiledScript49List)]);
    SetLength(CompiledScript49List, Length(CompiledScript49List) - 1);
  end;
end.
