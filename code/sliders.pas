unit sliders;

interface

uses X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createsliders: TX3DRootNode;
procedure RegisterslidersScripts(const Scene: TCastleSceneCore);

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
  TScript60Script = class
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
    Fa: Single;
    FField_a: TSFFloat;
    FBack_a: TSFFloat;
    FDirty_a: Boolean;
    Fb: Single;
    FField_b: TSFFloat;
    FBack_b: TSFFloat;
    FDirty_b: Boolean;
    Fc: Single;
    FField_c: TSFFloat;
    FBack_c: TSFFloat;
    FDirty_c: Boolean;
    Fd: Single;
    FField_d: TSFFloat;
    FBack_d: TSFFloat;
    FDirty_d: Boolean;
    Fpdelta: Single;
    FField_pdelta: TSFFloat;
    FBack_pdelta: TSFFloat;
    FDirty_pdelta: Boolean;
    Ftdelta: Single;
    FField_tdelta: TSFFloat;
    FBack_tdelta: TSFFloat;
    FDirty_tdelta: Boolean;
    Fresolution: Int32;
    FField_resolution: TSFInt32;
    FBack_resolution: TSFInt32;
    FDirty_resolution: Boolean;
    FLastTime_set_a: TX3DTime;
    FLastTime_set_b: TX3DTime;
    FLastTime_set_c: TX3DTime;
    FLastTime_set_d: TX3DTime;
    FLastTime_set_pdelta: TX3DTime;
    FLastTime_set_tdelta: TX3DTime;
    FLastTime_resolution: TX3DTime;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_coordinates: TMFVec3f; const AField_coordIndexes: TMFInt32; const AField_a: TSFFloat; const AField_b: TSFFloat; const AField_c: TSFFloat; const AField_d: TSFFloat; const AField_pdelta: TSFFloat; const AField_tdelta: TSFFloat; const AField_resolution: TSFInt32);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript60Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_a(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_a(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_b(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_b(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_c(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_c(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_d(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_d(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_pdelta(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_pdelta(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_tdelta(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_tdelta(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Resolution(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_resolution(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure GenerateCoordinates(const Time: TX3DTime);
  end;

  TScript107Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    FprotoScale: Single;
    FField_protoScale: TSFFloat;
    FBack_protoScale: TSFFloat;
    FDirty_protoScale: Boolean;
    FprotoParameterName: String;
    FField_protoParameterName: TSFString;
    FBack_protoParameterName: TSFString;
    FDirty_protoParameterName: Boolean;
    FprotoScript: TX3DNode;
    FField_protoScript: TSFNode;
    FBack_protoScript: TSFNode;
    FDirty_protoScript: Boolean;
    FprotoValue: Single;
    FField_protoValue: TSFFloat;
    FBack_protoValue: TSFFloat;
    FDirty_protoValue: Boolean;
    FprotoText: array of String;
    FField_protoText: TMFString;
    FBack_protoText: TMFString;
    FDirty_protoText: Boolean;
    FLastTime_set_protoScale: TX3DTime;
    FLastTime_set_protoParameterName: TX3DTime;
    FLastTime_set_protoScript: TX3DTime;
    FLastTime_set_protoValue: TX3DTime;
    FLastTime_set_protoText: TX3DTime;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_protoScale: TSFFloat; const AField_protoParameterName: TSFString; const AField_protoScript: TSFNode; const AField_protoValue: TSFFloat; const AField_protoText: TMFString);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript107Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_protoScale(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_protoScale(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_protoParameterName(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_protoParameterName(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_protoScript(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_protoScript(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_protoValue(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_protoValue(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Set_protoText(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_protoText(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure NewTranslation(Value: TX3DField; const Time: TX3DTime);
  end;

  TslidersScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group15: TGroupNode;
  LayerSet16: TLayerSetNode;
  Layer17: TLayerNode;
  NavigationInfo18: TNavigationInfoNode;
  DirectionalLight19: TDirectionalLightNode;
  DirectionalLight20: TDirectionalLightNode;
  Viewpoint21: TViewpointNode;
  Group22: TGroupNode;
  Transform23: TTransformNode;
  Shape24: TShapeNode;
  Cylinder25: TCylinderNode;
  Appearance26: TAppearanceNode;
  Material27: TMaterialNode;
  Transform28: TTransformNode;
  Shape29: TShapeNode;
  Cone30: TConeNode;
  Appearance31: TAppearanceNode;
  Transform33: TTransformNode;
  Shape34: TShapeNode;
  Appearance36: TAppearanceNode;
  Material37: TMaterialNode;
  Transform38: TTransformNode;
  Shape39: TShapeNode;
  Appearance41: TAppearanceNode;
  Transform43: TTransformNode;
  Shape44: TShapeNode;
  Appearance46: TAppearanceNode;
  Material47: TMaterialNode;
  Transform48: TTransformNode;
  Shape49: TShapeNode;
  Appearance51: TAppearanceNode;
  Transform53: TTransformNode;
  Transform54: TTransformNode;
  Shape55: TShapeNode;
  IndexedFaceSet56: TIndexedFaceSetNode;
  Coordinate57: TCoordinateNode;
  Appearance58: TAppearanceNode;
  Material59: TMaterialNode;
  Script60: TScriptNode;
  FieldVal61: TMFVec3f;
  FieldVal62: TMFInt32;
  FieldVal63: TSFFloat;
  FieldVal64: TSFFloat;
  FieldVal65: TSFFloat;
  FieldVal66: TSFFloat;
  FieldVal67: TSFFloat;
  FieldVal68: TSFFloat;
  FieldVal69: TSFInt32;
  CompiledScript60List: array of TScript60Script;
  LayoutLayer72: TLayoutLayerNode;
  Layout73: TLayoutNode;
  Viewport74: TViewportNode;
  Transform75: TTransformNode;
  Shape76: TShapeNode;
  Appearance77: TAppearanceNode;
  Material78: TMaterialNode;
  Box79: TBoxNode;
  Transform80: TTransformNode;
  Transform81: TTransformNode;
  Shape82: TShapeNode;
  Text83: TTextNode;
  FontStyle84: TFontStyleNode;
  Appearance85: TAppearanceNode;
  Material86: TMaterialNode;
  ProtoDeclare87: TX3DPrototype;
  FieldDecl89: TX3DInterfaceDeclaration;
  FieldVal89: TSFVec3f;
  FieldDecl90: TX3DInterfaceDeclaration;
  FieldVal90: TMFString;
  FieldDecl91: TX3DInterfaceDeclaration;
  FieldVal91: TSFFloat;
  FieldDecl92: TX3DInterfaceDeclaration;
  FieldVal92: TSFString;
  FieldDecl93: TX3DInterfaceDeclaration;
  FieldVal93: TSFNode;
  Group95: TGroupNode;
  Transform96: TTransformNode;
  Transform97: TTransformNode;
  PlaneSensor98: TPlaneSensorNode;
  Transform99: TTransformNode;
  TouchSensor100: TTouchSensorNode;
  Transform101: TTransformNode;
  Shape102: TShapeNode;
  Text103: TTextNode;
  FontStyle104: TFontStyleNode;
  Appearance105: TAppearanceNode;
  Material106: TMaterialNode;
  Script107: TScriptNode;
  FieldVal108: TSFFloat;
  FieldVal109: TSFString;
  FieldVal110: TX3DEvent;
  FieldVal111: TSFNode;
  FieldVal112: TSFFloat;
  FieldVal113: TMFString;
  CompiledScript107List: array of TScript107Script;
  ProtoInstance117: TX3DPrototypeNode;
  ProtoInstance124: TX3DPrototypeNode;
  ProtoInstance131: TX3DPrototypeNode;
  ProtoInstance138: TX3DPrototypeNode;
  ProtoInstance145: TX3DPrototypeNode;
  ProtoInstance152: TX3DPrototypeNode;
  Layer159: TLayerNode;
  Viewpoint160: TViewpointNode;

constructor TScript60Script.Create(const AHandlerPrefix: String; const AField_coordinates: TMFVec3f; const AField_coordIndexes: TMFInt32; const AField_a: TSFFloat; const AField_b: TSFFloat; const AField_c: TSFFloat; const AField_d: TSFFloat; const AField_pdelta: TSFFloat; const AField_tdelta: TSFFloat; const AField_resolution: TSFInt32);
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
  Fa := 0.0;
  FField_a := nil;
  FBack_a := TSFFloat.Create(nil, False, 'a', 0.0);
  FDirty_a := False;
  Fb := 0.0;
  FField_b := nil;
  FBack_b := TSFFloat.Create(nil, False, 'b', 0.0);
  FDirty_b := False;
  Fc := 0.0;
  FField_c := nil;
  FBack_c := TSFFloat.Create(nil, False, 'c', 0.0);
  FDirty_c := False;
  Fd := 0.0;
  FField_d := nil;
  FBack_d := TSFFloat.Create(nil, False, 'd', 0.0);
  FDirty_d := False;
  Fpdelta := 0.0;
  FField_pdelta := nil;
  FBack_pdelta := TSFFloat.Create(nil, False, 'pdelta', 0.0);
  FDirty_pdelta := False;
  Ftdelta := 0.0;
  FField_tdelta := nil;
  FBack_tdelta := TSFFloat.Create(nil, False, 'tdelta', 0.0);
  FDirty_tdelta := False;
  Fresolution := 0;
  FField_resolution := nil;
  FBack_resolution := TSFInt32.Create(nil, False, 'resolution', 0);
  FDirty_resolution := False;
  FLastTime_set_a := TX3DTime.Oldest;
  FLastTime_set_b := TX3DTime.Oldest;
  FLastTime_set_c := TX3DTime.Oldest;
  FLastTime_set_d := TX3DTime.Oldest;
  FLastTime_set_pdelta := TX3DTime.Oldest;
  FLastTime_set_tdelta := TX3DTime.Oldest;
  FLastTime_resolution := TX3DTime.Oldest;
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
  FField_a := AField_a;
  if AField_a <> nil then Fa := AField_a.Value;
  FField_b := AField_b;
  if AField_b <> nil then Fb := AField_b.Value;
  FField_c := AField_c;
  if AField_c <> nil then Fc := AField_c.Value;
  FField_d := AField_d;
  if AField_d <> nil then Fd := AField_d.Value;
  FField_pdelta := AField_pdelta;
  if AField_pdelta <> nil then Fpdelta := AField_pdelta.Value;
  FField_tdelta := AField_tdelta;
  if AField_tdelta <> nil then Ftdelta := AField_tdelta.Value;
  FField_resolution := AField_resolution;
  if AField_resolution <> nil then Fresolution := AField_resolution.Value;
  if FField_a <> nil then
    FField_a.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_a);
  if FField_b <> nil then
    FField_b.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_b);
  if FField_c <> nil then
    FField_c.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_c);
  if FField_d <> nil then
    FField_d.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_d);
  if FField_pdelta <> nil then
    FField_pdelta.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_pdelta);
  if FField_tdelta <> nil then
    FField_tdelta.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_tdelta);
  if FField_resolution <> nil then
    FField_resolution.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_resolution);
end;

class function TScript60Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript60Script;
begin
  Result := TScript60Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('coordinates') as TMFVec3f, AScriptNode.FieldOrEvent('coordIndexes') as TMFInt32, AScriptNode.FieldOrEvent('a') as TSFFloat, AScriptNode.FieldOrEvent('b') as TSFFloat, AScriptNode.FieldOrEvent('c') as TSFFloat, AScriptNode.FieldOrEvent('d') as TSFFloat, AScriptNode.FieldOrEvent('pdelta') as TSFFloat, AScriptNode.FieldOrEvent('tdelta') as TSFFloat, AScriptNode.FieldOrEvent('resolution') as TSFInt32);
end;

destructor TScript60Script.Destroy;
begin
  if FField_resolution <> nil then
    FField_resolution.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_resolution);
  if FField_tdelta <> nil then
    FField_tdelta.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_tdelta);
  if FField_pdelta <> nil then
    FField_pdelta.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_pdelta);
  if FField_d <> nil then
    FField_d.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_d);
  if FField_c <> nil then
    FField_c.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_c);
  if FField_b <> nil then
    FField_b.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_b);
  if FField_a <> nil then
    FField_a.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_a);
  FreeAndNil(FBack_coordinates);
  FreeAndNil(FBack_coordIndexes);
  FreeAndNil(FBack_a);
  FreeAndNil(FBack_b);
  FreeAndNil(FBack_c);
  FreeAndNil(FBack_d);
  FreeAndNil(FBack_pdelta);
  FreeAndNil(FBack_tdelta);
  FreeAndNil(FBack_resolution);
  inherited Destroy;
end;

procedure TScript60Script.FlushOutputs(const Time: TX3DTime);
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
  if FDirty_a then
  begin
    FDirty_a := False;
    if FField_a <> nil then
    begin
      FField_a.Value := Fa;
      FBack_a.Value := Fa;
      if (FField_a.ParentNode is TX3DNode) and (TX3DNode(FField_a.ParentNode).Scene <> nil) then
        FField_a.EventOut.Send(FBack_a, TX3DNode(FField_a.ParentNode).Scene.NextEventTime)
      else
        FField_a.EventOut.Send(FBack_a, Time);
    end;
  end;
  if FDirty_b then
  begin
    FDirty_b := False;
    if FField_b <> nil then
    begin
      FField_b.Value := Fb;
      FBack_b.Value := Fb;
      if (FField_b.ParentNode is TX3DNode) and (TX3DNode(FField_b.ParentNode).Scene <> nil) then
        FField_b.EventOut.Send(FBack_b, TX3DNode(FField_b.ParentNode).Scene.NextEventTime)
      else
        FField_b.EventOut.Send(FBack_b, Time);
    end;
  end;
  if FDirty_c then
  begin
    FDirty_c := False;
    if FField_c <> nil then
    begin
      FField_c.Value := Fc;
      FBack_c.Value := Fc;
      if (FField_c.ParentNode is TX3DNode) and (TX3DNode(FField_c.ParentNode).Scene <> nil) then
        FField_c.EventOut.Send(FBack_c, TX3DNode(FField_c.ParentNode).Scene.NextEventTime)
      else
        FField_c.EventOut.Send(FBack_c, Time);
    end;
  end;
  if FDirty_d then
  begin
    FDirty_d := False;
    if FField_d <> nil then
    begin
      FField_d.Value := Fd;
      FBack_d.Value := Fd;
      if (FField_d.ParentNode is TX3DNode) and (TX3DNode(FField_d.ParentNode).Scene <> nil) then
        FField_d.EventOut.Send(FBack_d, TX3DNode(FField_d.ParentNode).Scene.NextEventTime)
      else
        FField_d.EventOut.Send(FBack_d, Time);
    end;
  end;
  if FDirty_pdelta then
  begin
    FDirty_pdelta := False;
    if FField_pdelta <> nil then
    begin
      FField_pdelta.Value := Fpdelta;
      FBack_pdelta.Value := Fpdelta;
      if (FField_pdelta.ParentNode is TX3DNode) and (TX3DNode(FField_pdelta.ParentNode).Scene <> nil) then
        FField_pdelta.EventOut.Send(FBack_pdelta, TX3DNode(FField_pdelta.ParentNode).Scene.NextEventTime)
      else
        FField_pdelta.EventOut.Send(FBack_pdelta, Time);
    end;
  end;
  if FDirty_tdelta then
  begin
    FDirty_tdelta := False;
    if FField_tdelta <> nil then
    begin
      FField_tdelta.Value := Ftdelta;
      FBack_tdelta.Value := Ftdelta;
      if (FField_tdelta.ParentNode is TX3DNode) and (TX3DNode(FField_tdelta.ParentNode).Scene <> nil) then
        FField_tdelta.EventOut.Send(FBack_tdelta, TX3DNode(FField_tdelta.ParentNode).Scene.NextEventTime)
      else
        FField_tdelta.EventOut.Send(FBack_tdelta, Time);
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

procedure TScript60Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_a', {$ifdef FPC}@{$endif}Set_a);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'a', {$ifdef FPC}@{$endif}Set_a);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_b', {$ifdef FPC}@{$endif}Set_b);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'b', {$ifdef FPC}@{$endif}Set_b);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_c', {$ifdef FPC}@{$endif}Set_c);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'c', {$ifdef FPC}@{$endif}Set_c);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_d', {$ifdef FPC}@{$endif}Set_d);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'd', {$ifdef FPC}@{$endif}Set_d);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_pdelta', {$ifdef FPC}@{$endif}Set_pdelta);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'pdelta', {$ifdef FPC}@{$endif}Set_pdelta);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_tdelta', {$ifdef FPC}@{$endif}Set_tdelta);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'tdelta', {$ifdef FPC}@{$endif}Set_tdelta);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'resolution', {$ifdef FPC}@{$endif}Resolution);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_resolution', {$ifdef FPC}@{$endif}Resolution);
end;

procedure TScript60Script.Initialize(Value: TX3DField; const Time: TX3DTime);
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

procedure TScript60Script.OnNotif_set_a(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_a(Value, Time);
end;

procedure TScript60Script.Set_a(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_a.Seconds) and (Time.PlusTicks = FLastTime_set_a.PlusTicks) then Exit;
  FLastTime_set_a := Time;
  Fa := (Value as TSFFloat).Value;
  FDirty_a := True;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.OnNotif_set_b(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_b(Value, Time);
end;

procedure TScript60Script.Set_b(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_b.Seconds) and (Time.PlusTicks = FLastTime_set_b.PlusTicks) then Exit;
  FLastTime_set_b := Time;
  Fb := (Value as TSFFloat).Value;
  FDirty_b := True;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.OnNotif_set_c(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_c(Value, Time);
end;

procedure TScript60Script.Set_c(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_c.Seconds) and (Time.PlusTicks = FLastTime_set_c.PlusTicks) then Exit;
  FLastTime_set_c := Time;
  Fc := (Value as TSFFloat).Value;
  FDirty_c := True;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.OnNotif_set_d(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_d(Value, Time);
end;

procedure TScript60Script.Set_d(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_d.Seconds) and (Time.PlusTicks = FLastTime_set_d.PlusTicks) then Exit;
  FLastTime_set_d := Time;
  Fd := (Value as TSFFloat).Value;
  FDirty_d := True;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.OnNotif_set_pdelta(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_pdelta(Value, Time);
end;

procedure TScript60Script.Set_pdelta(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_pdelta.Seconds) and (Time.PlusTicks = FLastTime_set_pdelta.PlusTicks) then Exit;
  FLastTime_set_pdelta := Time;
  Fpdelta := (Value as TSFFloat).Value;
  FDirty_pdelta := True;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.OnNotif_set_tdelta(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_tdelta(Value, Time);
end;

procedure TScript60Script.Set_tdelta(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_tdelta.Seconds) and (Time.PlusTicks = FLastTime_set_tdelta.PlusTicks) then Exit;
  FLastTime_set_tdelta := Time;
  Ftdelta := (Value as TSFFloat).Value;
  FDirty_tdelta := True;
  GenerateCoordinates(Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.OnNotif_resolution(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Resolution(Value, Time);
end;

procedure TScript60Script.Resolution(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_resolution.Seconds) and (Time.PlusTicks = FLastTime_resolution.PlusTicks) then Exit;
  FLastTime_resolution := Time;
  Fresolution := (Value as TSFInt32).Value;
  FDirty_resolution := True;
  Initialize(nil, Time);
  FlushOutputs(Time);
end;

procedure TScript60Script.GenerateCoordinates(const Time: TX3DTime);
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
      rho := Fa + Fb * Cos(Fc * theta + Ftdelta) * Cos(Fd * phi + Fpdelta);
      if (arrIndex) >= Length(Fcoordinates) then SetLength(Fcoordinates, (arrIndex) + 1);
      Fcoordinates[arrIndex] := Vector3(rho * Cos(phi) * Cos(theta), rho * Cos(phi) * Sin(theta), rho * Sin(phi));
      arrIndex := arrIndex + 1;
      FDirty_coordinates := True;
      theta := theta + (delta);
    end;
    phi := phi + (delta);
  end;
end;

constructor TScript107Script.Create(const AHandlerPrefix: String; const AField_protoScale: TSFFloat; const AField_protoParameterName: TSFString; const AField_protoScript: TSFNode; const AField_protoValue: TSFFloat; const AField_protoText: TMFString);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  FprotoScale := 0.0;
  FField_protoScale := nil;
  FBack_protoScale := TSFFloat.Create(nil, False, 'protoScale', 0.0);
  FDirty_protoScale := False;
  FprotoParameterName := '';
  FField_protoParameterName := nil;
  FBack_protoParameterName := TSFString.Create(nil, False, 'protoParameterName', '');
  FDirty_protoParameterName := False;
  FprotoScript := nil;
  FField_protoScript := nil;
  FBack_protoScript := TSFNode.CreateUndefined(nil, False, 'protoScript');
  FDirty_protoScript := False;
  FprotoValue := 0.0;
  FField_protoValue := nil;
  FBack_protoValue := TSFFloat.Create(nil, False, 'protoValue', 0.0);
  FDirty_protoValue := False;
  FprotoText := nil;
  FField_protoText := nil;
  FBack_protoText := TMFString.CreateUndefined(nil, False, 'protoText');
  FDirty_protoText := False;
  FLastTime_set_protoScale := TX3DTime.Oldest;
  FLastTime_set_protoParameterName := TX3DTime.Oldest;
  FLastTime_set_protoScript := TX3DTime.Oldest;
  FLastTime_set_protoValue := TX3DTime.Oldest;
  FLastTime_set_protoText := TX3DTime.Oldest;
  FField_protoScale := AField_protoScale;
  if AField_protoScale <> nil then FprotoScale := AField_protoScale.Value;
  FField_protoParameterName := AField_protoParameterName;
  if AField_protoParameterName <> nil then FprotoParameterName := AField_protoParameterName.Value;
  FField_protoScript := AField_protoScript;
  if AField_protoScript <> nil then FprotoScript := AField_protoScript.Value;
  FField_protoValue := AField_protoValue;
  if AField_protoValue <> nil then FprotoValue := AField_protoValue.Value;
  FField_protoText := AField_protoText;
  if AField_protoText <> nil then
  begin
    SetLength(FprotoText, AField_protoText.Items.Count);
    for _i := 0 to AField_protoText.Items.Count - 1 do
      FprotoText[_i] := AField_protoText.Items[_i];
  end;
  if FField_protoScale <> nil then
    FField_protoScale.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_protoScale);
  if FField_protoParameterName <> nil then
    FField_protoParameterName.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_protoParameterName);
  if FField_protoScript <> nil then
    FField_protoScript.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_protoScript);
  if FField_protoValue <> nil then
    FField_protoValue.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_protoValue);
  if FField_protoText <> nil then
    FField_protoText.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_protoText);
end;

class function TScript107Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript107Script;
begin
  Result := TScript107Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('protoScale') as TSFFloat, AScriptNode.FieldOrEvent('protoParameterName') as TSFString, AScriptNode.FieldOrEvent('protoScript') as TSFNode, AScriptNode.FieldOrEvent('protoValue') as TSFFloat, AScriptNode.FieldOrEvent('protoText') as TMFString);
end;

destructor TScript107Script.Destroy;
begin
  if FField_protoText <> nil then
    FField_protoText.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_protoText);
  if FField_protoValue <> nil then
    FField_protoValue.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_protoValue);
  if FField_protoScript <> nil then
    FField_protoScript.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_protoScript);
  if FField_protoParameterName <> nil then
    FField_protoParameterName.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_protoParameterName);
  if FField_protoScale <> nil then
    FField_protoScale.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_protoScale);
  FreeAndNil(FBack_protoScale);
  FreeAndNil(FBack_protoParameterName);
  FreeAndNil(FBack_protoScript);
  FreeAndNil(FBack_protoValue);
  FreeAndNil(FBack_protoText);
  inherited Destroy;
end;

procedure TScript107Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_protoScale then
  begin
    FDirty_protoScale := False;
    if FField_protoScale <> nil then
    begin
      FField_protoScale.Value := FprotoScale;
      FBack_protoScale.Value := FprotoScale;
      if (FField_protoScale.ParentNode is TX3DNode) and (TX3DNode(FField_protoScale.ParentNode).Scene <> nil) then
        FField_protoScale.EventOut.Send(FBack_protoScale, TX3DNode(FField_protoScale.ParentNode).Scene.NextEventTime)
      else
        FField_protoScale.EventOut.Send(FBack_protoScale, Time);
    end;
  end;
  if FDirty_protoParameterName then
  begin
    FDirty_protoParameterName := False;
    if FField_protoParameterName <> nil then
    begin
      FField_protoParameterName.Value := FprotoParameterName;
      FBack_protoParameterName.Value := FprotoParameterName;
      if (FField_protoParameterName.ParentNode is TX3DNode) and (TX3DNode(FField_protoParameterName.ParentNode).Scene <> nil) then
        FField_protoParameterName.EventOut.Send(FBack_protoParameterName, TX3DNode(FField_protoParameterName.ParentNode).Scene.NextEventTime)
      else
        FField_protoParameterName.EventOut.Send(FBack_protoParameterName, Time);
    end;
  end;
  if FDirty_protoScript then
  begin
    FDirty_protoScript := False;
    if FField_protoScript <> nil then
    begin
      FField_protoScript.Value := FprotoScript;
      FBack_protoScript.Value := FprotoScript;
      if (FField_protoScript.ParentNode is TX3DNode) and (TX3DNode(FField_protoScript.ParentNode).Scene <> nil) then
        FField_protoScript.EventOut.Send(FBack_protoScript, TX3DNode(FField_protoScript.ParentNode).Scene.NextEventTime)
      else
        FField_protoScript.EventOut.Send(FBack_protoScript, Time);
    end;
  end;
  if FDirty_protoValue then
  begin
    FDirty_protoValue := False;
    if FField_protoValue <> nil then
    begin
      FField_protoValue.Value := FprotoValue;
      FBack_protoValue.Value := FprotoValue;
      if (FField_protoValue.ParentNode is TX3DNode) and (TX3DNode(FField_protoValue.ParentNode).Scene <> nil) then
        FField_protoValue.EventOut.Send(FBack_protoValue, TX3DNode(FField_protoValue.ParentNode).Scene.NextEventTime)
      else
        FField_protoValue.EventOut.Send(FBack_protoValue, Time);
    end;
  end;
  if FDirty_protoText then
  begin
    FDirty_protoText := False;
    if FField_protoText <> nil then
    begin
      FField_protoText.Items.Clear;
      FBack_protoText.Items.Clear;
      for _i := 0 to High(FprotoText) do
      begin
        FField_protoText.Items.Add(FprotoText[_i]);
        FBack_protoText.Items.Add(FprotoText[_i]);
      end;
      if (FField_protoText.ParentNode is TX3DNode) and (TX3DNode(FField_protoText.ParentNode).Scene <> nil) then
        FField_protoText.EventOut.Send(FBack_protoText, TX3DNode(FField_protoText.ParentNode).Scene.NextEventTime)
      else
        FField_protoText.EventOut.Send(FBack_protoText, Time);
    end;
  end;
end;

procedure TScript107Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_protoScale', {$ifdef FPC}@{$endif}Set_protoScale);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'protoScale', {$ifdef FPC}@{$endif}Set_protoScale);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_protoParameterName', {$ifdef FPC}@{$endif}Set_protoParameterName);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'protoParameterName', {$ifdef FPC}@{$endif}Set_protoParameterName);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_protoScript', {$ifdef FPC}@{$endif}Set_protoScript);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'protoScript', {$ifdef FPC}@{$endif}Set_protoScript);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_protoValue', {$ifdef FPC}@{$endif}Set_protoValue);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'protoValue', {$ifdef FPC}@{$endif}Set_protoValue);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_protoText', {$ifdef FPC}@{$endif}Set_protoText);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'protoText', {$ifdef FPC}@{$endif}Set_protoText);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'newTranslation', {$ifdef FPC}@{$endif}NewTranslation);
end;

procedure TScript107Script.OnNotif_set_protoScale(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_protoScale(Value, Time);
end;

procedure TScript107Script.Set_protoScale(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_protoScale.Seconds) and (Time.PlusTicks = FLastTime_set_protoScale.PlusTicks) then Exit;
  FLastTime_set_protoScale := Time;
  FprotoScale := (Value as TSFFloat).Value;
  FDirty_protoScale := True;
  FlushOutputs(Time);
end;

procedure TScript107Script.OnNotif_set_protoParameterName(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_protoParameterName(Value, Time);
end;

procedure TScript107Script.Set_protoParameterName(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_protoParameterName.Seconds) and (Time.PlusTicks = FLastTime_set_protoParameterName.PlusTicks) then Exit;
  FLastTime_set_protoParameterName := Time;
  FprotoParameterName := (Value as TSFString).Value;
  FDirty_protoParameterName := True;
  FlushOutputs(Time);
end;

procedure TScript107Script.OnNotif_set_protoScript(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_protoScript(Value, Time);
end;

procedure TScript107Script.Set_protoScript(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_protoScript.Seconds) and (Time.PlusTicks = FLastTime_set_protoScript.PlusTicks) then Exit;
  FLastTime_set_protoScript := Time;
  FprotoScript := (Value as TSFNode).Value;
  FDirty_protoScript := True;
  FlushOutputs(Time);
end;

procedure TScript107Script.OnNotif_set_protoValue(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_protoValue(Value, Time);
end;

procedure TScript107Script.Set_protoValue(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_protoValue.Seconds) and (Time.PlusTicks = FLastTime_set_protoValue.PlusTicks) then Exit;
  FLastTime_set_protoValue := Time;
  FprotoValue := (Value as TSFFloat).Value;
  FDirty_protoValue := True;
  FlushOutputs(Time);
end;

procedure TScript107Script.OnNotif_set_protoText(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_protoText(Value, Time);
end;

procedure TScript107Script.Set_protoText(Value: TX3DField; const Time: TX3DTime);
begin
  if (Time.Seconds = FLastTime_set_protoText.Seconds) and (Time.PlusTicks = FLastTime_set_protoText.PlusTicks) then Exit;
  FLastTime_set_protoText := Time;
  FprotoText := value;
  FDirty_protoText := True;
  FlushOutputs(Time);
end;

procedure TScript107Script.NewTranslation(Value: TX3DField; const Time: TX3DTime);
begin
  Set_protoValue(nil, Time);
  Set_protoText(nil, Time);
  if (FprotoParameterName) >= Length(FprotoScript) then SetLength(FprotoScript, (FprotoParameterName) + 1);
  FprotoScript[FprotoParameterName] := FprotoValue;
  FDirty_protoScript := True;
  FlushOutputs(Time);
end;

procedure TslidersScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script60_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript60List);
    Prefix := 'Script60_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_a=' + Prefix + 'set_a' + LineEnding +
      'a=' + Prefix + 'a' + LineEnding +
      'set_b=' + Prefix + 'set_b' + LineEnding +
      'b=' + Prefix + 'b' + LineEnding +
      'set_c=' + Prefix + 'set_c' + LineEnding +
      'c=' + Prefix + 'c' + LineEnding +
      'set_d=' + Prefix + 'set_d' + LineEnding +
      'd=' + Prefix + 'd' + LineEnding +
      'set_pdelta=' + Prefix + 'set_pdelta' + LineEnding +
      'pdelta=' + Prefix + 'pdelta' + LineEnding +
      'set_tdelta=' + Prefix + 'set_tdelta' + LineEnding +
      'tdelta=' + Prefix + 'tdelta' + LineEnding +
      'resolution=' + Prefix + 'resolution' + LineEnding +
      'set_resolution=' + Prefix + 'set_resolution']);
    SetLength(CompiledScript60List, Idx + 1);
    CompiledScript60List[Idx] := TScript60Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script107_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript107List);
    Prefix := 'Script107_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_protoScale=' + Prefix + 'set_protoScale' + LineEnding +
      'protoScale=' + Prefix + 'protoScale' + LineEnding +
      'set_protoParameterName=' + Prefix + 'set_protoParameterName' + LineEnding +
      'protoParameterName=' + Prefix + 'protoParameterName' + LineEnding +
      'set_protoScript=' + Prefix + 'set_protoScript' + LineEnding +
      'protoScript=' + Prefix + 'protoScript' + LineEnding +
      'set_protoValue=' + Prefix + 'set_protoValue' + LineEnding +
      'protoValue=' + Prefix + 'protoValue' + LineEnding +
      'set_protoText=' + Prefix + 'set_protoText' + LineEnding +
      'protoText=' + Prefix + 'protoText' + LineEnding +
      'newTranslation=' + Prefix + 'newTranslation']);
    SetLength(CompiledScript107List, Idx + 1);
    CompiledScript107List[Idx] := TScript107Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitslidersPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Full';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
{ <component name='Shape' level='4'></component> }
X3D0.Components['Scripting'] := 1;
X3D0.Components['EnvironmentalEffects'] := 3;
X3D0.Components['Texturing'] := 1;
X3D0.Components['Rendering'] := 1;
X3D0.Components['Grouping'] := 3;
X3D0.Components['Core'] := 1;
X3D0.Meta['title'] := 'sliders.x3d';
X3D0.Meta['created'] := '8 August 2025';
X3D0.Meta['description'] := '*Bumpy flower with prototype sliders*';
X3D0.Meta['creator'] := 'Doug Sanden, Christoph Valentin, John Carlson';
X3D0.Meta['identifier'] := 'https://www.coderextreme.net/X3DJSONLD/src/main/data/sliders.x3d';
X3D0.Meta['license'] := 'license.html';
X3D0.Meta['generator'] := 'Vim, VI Improved';
Group15 := TGroupNode.Create;
LayerSet16 := TLayerSetNode.Create;
LayerSet16.ActiveLayer := 1;
LayerSet16.SetOrder([1, 2, 3]);
Layer17 := TLayerNode.Create;
Layer17.Pickable := True;
Layer17.SetObjectType(['ALL']);
NavigationInfo18 := TNavigationInfoNode.Create;
NavigationInfo18.SetType(['EXAMINE']);
NavigationInfo18.SetAvatarSize([0.25, 1.75, 0.75]);
Layer17.FdChildren.Add(NavigationInfo18);
DirectionalLight19 := TDirectionalLightNode.Create;
DirectionalLight19.AmbientIntensity := 0.2;
DirectionalLight19.Direction := Vector3(0, -1, 0);
Layer17.FdChildren.Add(DirectionalLight19);
DirectionalLight20 := TDirectionalLightNode.Create;
DirectionalLight20.AmbientIntensity := 0.2;
DirectionalLight20.Direction := Vector3(-1, -0.1, -1);
Layer17.FdChildren.Add(DirectionalLight20);
Viewpoint21 := TViewpointNode.Create;
Viewpoint21.Description := 'My Overview';
Viewpoint21.FieldOfView := 1.570796;
end;

procedure InitslidersPart1;
begin
Viewpoint21.Position := Vector3(0, 1.75, 60);
Layer17.FdChildren.Add(Viewpoint21);
Group22 := TGroupNode.Create;
{ Arrow X }
Transform23 := TTransformNode.Create;
Transform23.Translation := Vector3(25, 0, 0);
Transform23.Rotation := Vector4(0, 0, -1, 1.57);
Shape24 := TShapeNode.Create;
Cylinder25 := TCylinderNode.Create;
Cylinder25.X3DName := 'Shaft';
Cylinder25.Radius := 0.35;
Cylinder25.Height := 50;
Shape24.Geometry := Cylinder25;
Appearance26 := TAppearanceNode.Create;
Material27 := TMaterialNode.Create;
Material27.X3DName := 'RED';
Material27.DiffuseColor := Vector3(1, 0, 0);
Material27.EmissiveColor := Vector3(1, 0, 0);
Appearance26.Material := Material27;
Shape24.Appearance := Appearance26;
Transform23.FdChildren.Add(Shape24);
Group22.FdChildren.Add(Transform23);
Transform28 := TTransformNode.Create;
Transform28.Translation := Vector3(50, 0, 0);
Transform28.Rotation := Vector4(0, 0, -1, 1.57);
Shape29 := TShapeNode.Create;
Cone30 := TConeNode.Create;
Cone30.X3DName := 'Tip';
Cone30.BottomRadius := 0.8;
Cone30.Height := 3;
Shape29.Geometry := Cone30;
Appearance31 := TAppearanceNode.Create;
Appearance31.Material := Material27;
Shape29.Appearance := Appearance31;
Transform28.FdChildren.Add(Shape29);
Group22.FdChildren.Add(Transform28);
{ Arrow Y }
Transform33 := TTransformNode.Create;
Transform33.Translation := Vector3(0, 25, 0);
Shape34 := TShapeNode.Create;
end;

procedure InitslidersPart2;
begin
Shape34.Geometry := Cylinder25;
Appearance36 := TAppearanceNode.Create;
Material37 := TMaterialNode.Create;
Material37.X3DName := 'GREEN';
Material37.DiffuseColor := Vector3(0, 1, 0);
Material37.EmissiveColor := Vector3(0, 1, 0);
Appearance36.Material := Material37;
Shape34.Appearance := Appearance36;
Transform33.FdChildren.Add(Shape34);
Group22.FdChildren.Add(Transform33);
Transform38 := TTransformNode.Create;
Transform38.Translation := Vector3(0, 50, 0);
Shape39 := TShapeNode.Create;
Shape39.Geometry := Cone30;
Appearance41 := TAppearanceNode.Create;
Appearance41.Material := Material37;
Shape39.Appearance := Appearance41;
Transform38.FdChildren.Add(Shape39);
Group22.FdChildren.Add(Transform38);
{ Arrow Z }
Transform43 := TTransformNode.Create;
Transform43.Translation := Vector3(0, 0, 25);
Transform43.Rotation := Vector4(1, 0, 0, 1.57);
Shape44 := TShapeNode.Create;
Shape44.Geometry := Cylinder25;
Appearance46 := TAppearanceNode.Create;
Material47 := TMaterialNode.Create;
Material47.X3DName := 'BLUE';
Material47.DiffuseColor := Vector3(0, 0, 1);
Material47.EmissiveColor := Vector3(0, 0, 1);
Appearance46.Material := Material47;
Shape44.Appearance := Appearance46;
Transform43.FdChildren.Add(Shape44);
Group22.FdChildren.Add(Transform43);
Transform48 := TTransformNode.Create;
Transform48.Translation := Vector3(0, 0, 50);
Transform48.Rotation := Vector4(1, 0, 0, 1.57);
Shape49 := TShapeNode.Create;
Shape49.Geometry := Cone30;
Appearance51 := TAppearanceNode.Create;
end;

procedure InitslidersPart3;
begin
Appearance51.Material := Material47;
Shape49.Appearance := Appearance51;
Transform48.FdChildren.Add(Shape49);
Group22.FdChildren.Add(Transform48);
Layer17.FdChildren.Add(Group22);
{ the model that is being reviewed by the users of this scene }
Transform53 := TTransformNode.Create;
Transform53.X3DName := 'FlowerTransform';
Transform54 := TTransformNode.Create;
Shape55 := TShapeNode.Create;
IndexedFaceSet56 := TIndexedFaceSetNode.Create;
IndexedFaceSet56.Convex := False;
IndexedFaceSet56.X3DName := 'Orbit';
Coordinate57 := TCoordinateNode.Create;
Coordinate57.X3DName := 'OrbitCoordinates';
IndexedFaceSet56.Coord := Coordinate57;
Shape55.Geometry := IndexedFaceSet56;
Appearance58 := TAppearanceNode.Create;
Material59 := TMaterialNode.Create;
Material59.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material59.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance58.Material := Material59;
Shape55.Appearance := Appearance58;
Transform54.FdChildren.Add(Shape55);
Transform53.FdChildren.Add(Transform54);
Layer17.FdChildren.Add(Transform53);
Script60 := TScriptNode.Create;
Script60.X3DName := 'OrbitScript';
FieldVal61 := TMFVec3f.CreateUndefined(Script60, True, 'coordinates');
Script60.AddCustomFieldOrEvent(FieldVal61);
FieldVal62 := TMFInt32.CreateUndefined(Script60, True, 'coordIndexes');
Script60.AddCustomFieldOrEvent(FieldVal62);
FieldVal63 := TSFFloat.Create(Script60, True, 'a', 5);
Script60.AddCustomFieldOrEvent(FieldVal63);
FieldVal64 := TSFFloat.Create(Script60, True, 'b', 5);
Script60.AddCustomFieldOrEvent(FieldVal64);
FieldVal65 := TSFFloat.Create(Script60, True, 'c', 5);
Script60.AddCustomFieldOrEvent(FieldVal65);
FieldVal66 := TSFFloat.Create(Script60, True, 'd', 5);
Script60.AddCustomFieldOrEvent(FieldVal66);
end;

procedure InitslidersPart4;
begin
FieldVal67 := TSFFloat.Create(Script60, True, 'pdelta', 0);
Script60.AddCustomFieldOrEvent(FieldVal67);
FieldVal68 := TSFFloat.Create(Script60, True, 'tdelta', 0);
Script60.AddCustomFieldOrEvent(FieldVal68);
FieldVal69 := TSFInt32.Create(Script60, True, 'resolution', 50);
Script60.AddCustomFieldOrEvent(FieldVal69);
Script60.SetUrl(['compiled:' + LineEnding +
  'initialize=Script60_initialize' + LineEnding +
  'set_a=Script60_set_a' + LineEnding +
  'a=Script60_a' + LineEnding +
  'set_b=Script60_set_b' + LineEnding +
  'b=Script60_b' + LineEnding +
  'set_c=Script60_set_c' + LineEnding +
  'c=Script60_c' + LineEnding +
  'set_d=Script60_set_d' + LineEnding +
  'd=Script60_d' + LineEnding +
  'set_pdelta=Script60_set_pdelta' + LineEnding +
  'pdelta=Script60_pdelta' + LineEnding +
  'set_tdelta=Script60_set_tdelta' + LineEnding +
  'tdelta=Script60_tdelta' + LineEnding +
  'resolution=Script60_resolution' + LineEnding +
  'set_resolution=Script60_set_resolution']);
Layer17.FdChildren.Add(Script60);
{ ROUTE OrbitScript.coordIndexes TO Orbit.set_coordIndex }
Layer17.AddRoute(FieldVal62.EventOut, IndexedFaceSet56.EventSet_coordIndex);
{ ROUTE OrbitScript.coordinates TO OrbitCoordinates.set_point }
Layer17.AddRoute(FieldVal61.EventOut, Coordinate57.FdPoint.EventIn);
LayerSet16.FdLayers.Add(Layer17);
LayoutLayer72 := TLayoutLayerNode.Create;
LayoutLayer72.Pickable := True;
LayoutLayer72.SetObjectType(['ALL']);
Layout73 := TLayoutNode.Create;
Layout73.SetAlign(['LEFT', 'BOTTOM']);
Layout73.SetOffset([-0.2, 0.19]);
Layout73.SetSize([0.4, 0.6]);
LayoutLayer72.Layout := Layout73;
Viewport74 := TViewportNode.Create;
Viewport74.SetClipBoundary([0, 1, 0, 1]);
LayoutLayer72.Viewport := Viewport74;
Transform75 := TTransformNode.Create;
Transform75.Translation := Vector3(0, 0, -3);
Shape76 := TShapeNode.Create;
Appearance77 := TAppearanceNode.Create;
Material78 := TMaterialNode.Create;
Material78.DiffuseColor := Vector3(0, 0, 0);
Material78.Transparency := 0.7;
Appearance77.Material := Material78;
Shape76.Appearance := Appearance77;
Box79 := TBoxNode.Create;
Box79.Size := Vector3(100, 100, 0.02);
Shape76.Geometry := Box79;
Transform75.FdChildren.Add(Shape76);
LayoutLayer72.FdChildren.Add(Transform75);
Transform80 := TTransformNode.Create;
Transform80.X3DName := 'equationTransform';
end;

procedure InitslidersPart5;
begin
Transform81 := TTransformNode.Create;
Transform81.Translation := Vector3(0, 0, -20);
Shape82 := TShapeNode.Create;
Text83 := TTextNode.Create;
Text83.X3DName := 'equation';
Text83.SetText(['r = a + b * cos(c * theta + tdelta) * cos (d * phi + pdelta)']);
FontStyle84 := TFontStyleNode.Create;
FontStyle84.Size := 0.09;
Text83.FontStyle := FontStyle84;
Shape82.Geometry := Text83;
Appearance85 := TAppearanceNode.Create;
Material86 := TMaterialNode.Create;
Material86.DiffuseColor := Vector3(1, 1, 0);
Appearance85.Material := Material86;
Shape82.Appearance := Appearance85;
Transform81.FdChildren.Add(Shape82);
Transform80.FdChildren.Add(Transform81);
LayoutLayer72.FdChildren.Add(Transform80);
{ The slider parameters }
ProtoDeclare87 := CreateEmptyPrototype('SliderProto');
ProtoDeclare87.X3DName := 'SliderProto';
FieldVal89 := TSFVec3f.Create(nil, True, 'sliderTranslation', Vector3(0, 0, 0));
FieldDecl89 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl89.FieldOrEvent := FieldVal89;
FieldVal89.ParentInterfaceDeclaration := FieldDecl89;
ProtoDeclare87.InterfaceDeclarations.Add(FieldDecl89);
FieldVal90 := TMFString.Create(nil, True, 'textString', ['x=']);
FieldDecl90 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl90.FieldOrEvent := FieldVal90;
FieldVal90.ParentInterfaceDeclaration := FieldDecl90;
ProtoDeclare87.InterfaceDeclarations.Add(FieldDecl90);
FieldVal91 := TSFFloat.Create(nil, True, 'parameterScale', 15);
FieldDecl91 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl91.FieldOrEvent := FieldVal91;
FieldVal91.ParentInterfaceDeclaration := FieldDecl91;
ProtoDeclare87.InterfaceDeclarations.Add(FieldDecl91);
FieldVal92 := TSFString.Create(nil, True, 'parameterName', 'x');
FieldDecl92 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl92.FieldOrEvent := FieldVal92;
FieldVal92.ParentInterfaceDeclaration := FieldDecl92;
end;

procedure InitslidersPart6;
begin
ProtoDeclare87.InterfaceDeclarations.Add(FieldDecl92);
FieldVal93 := TSFNode.CreateUndefined(nil, True, 'orbScript');
FieldDecl93 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl93.FieldOrEvent := FieldVal93;
FieldVal93.ParentInterfaceDeclaration := FieldDecl93;
ProtoDeclare87.InterfaceDeclarations.Add(FieldDecl93);
Group95 := TGroupNode.Create;
Transform96 := TTransformNode.Create;
Transform96.X3DName := 'protoSlider';
Transform96.Translation := Vector3(0, 0.7, 0);
Transform96.FieldOrEvent('translation', True).IsClauseNamesAdd('sliderTranslation');
Transform97 := TTransformNode.Create;
Transform97.X3DName := 'protoTransform';
Transform97.Translation := Vector3(0, 0, 0.1);
PlaneSensor98 := TPlaneSensorNode.Create;
PlaneSensor98.X3DName := 'protoSensor';
PlaneSensor98.Description := 'Grab with mouse to adjust slider';
PlaneSensor98.MaxPosition := Vector2(1, 0);
Transform97.FdChildren.Add(PlaneSensor98);
Transform99 := TTransformNode.Create;
Transform99.Translation := Vector3(0, 0, 0);
TouchSensor100 := TTouchSensorNode.Create;
TouchSensor100.Description := 'Maybe start dragging this?';
TouchSensor100.X3DName := 'protoTS';
Transform99.FdChildren.Add(TouchSensor100);
Transform97.FdChildren.Add(Transform99);
Transform101 := TTransformNode.Create;
Shape102 := TShapeNode.Create;
Text103 := TTextNode.Create;
Text103.X3DName := 'protoText';
Text103.SetText(['a=']);
Text103.FieldOrEvent('string', True).IsClauseNamesAdd('textString');
FontStyle104 := TFontStyleNode.Create;
FontStyle104.Style := fsBold;
FontStyle104.Size := 0.23;
Text103.FontStyle := FontStyle104;
Shape102.Geometry := Text103;
Appearance105 := TAppearanceNode.Create;
Material106 := TMaterialNode.Create;
Appearance105.Material := Material106;
end;

procedure InitslidersPart7;
begin
Shape102.Appearance := Appearance105;
Transform101.FdChildren.Add(Shape102);
Transform97.FdChildren.Add(Transform101);
Transform96.FdChildren.Add(Transform97);
Group95.FdChildren.Add(Transform96);
Script107 := TScriptNode.Create;
Script107.X3DName := 'protoValueTransformerScript';
FieldVal108 := TSFFloat.CreateUndefined(Script107, True, 'protoScale');
Script107.AddCustomFieldOrEvent(FieldVal108);
FieldVal109 := TSFString.CreateUndefined(Script107, True, 'protoParameterName');
Script107.AddCustomFieldOrEvent(FieldVal109);
FieldVal110 := TSFVec3f.CreateEvent(Script107, 'newTranslation', True);
Script107.AddCustomFieldOrEvent(FieldVal110);
FieldVal111 := TSFNode.CreateUndefined(Script107, True, 'protoScript');
Script107.AddCustomFieldOrEvent(FieldVal111);
FieldVal112 := TSFFloat.Create(Script107, True, 'protoValue', 1);
Script107.AddCustomFieldOrEvent(FieldVal112);
FieldVal113 := TMFString.Create(Script107, True, 'protoText', ['1.0']);
Script107.AddCustomFieldOrEvent(FieldVal113);
Script107.FieldOrEvent('protoScale', True).IsClauseNamesAdd('parameterScale');
Script107.FieldOrEvent('protoParameterName', True).IsClauseNamesAdd('parameterName');
Script107.FieldOrEvent('protoScript', True).IsClauseNamesAdd('orbScript');
Script107.SetUrl(['compiled:' + LineEnding +
  'set_protoScale=Script107_set_protoScale' + LineEnding +
  'protoScale=Script107_protoScale' + LineEnding +
  'set_protoParameterName=Script107_set_protoParameterName' + LineEnding +
  'protoParameterName=Script107_protoParameterName' + LineEnding +
  'set_protoScript=Script107_set_protoScript' + LineEnding +
  'protoScript=Script107_protoScript' + LineEnding +
  'set_protoValue=Script107_set_protoValue' + LineEnding +
  'protoValue=Script107_protoValue' + LineEnding +
  'set_protoText=Script107_set_protoText' + LineEnding +
  'protoText=Script107_protoText' + LineEnding +
  'newTranslation=Script107_newTranslation']);
Group95.FdChildren.Add(Script107);
{ ROUTE protoSensor.translation_changed TO protoTransform.set_translation }
Group95.AddRoute(PlaneSensor98.EventTranslation_changed, Transform97.FdTranslation.EventIn);
{ ROUTE protoSensor.translation_changed TO protoValueTransformerScript.newTranslation }
Group95.AddRoute(PlaneSensor98.EventTranslation_changed, FieldVal110);
{ ROUTE protoValueTransformerScript.protoText TO protoText.string }
Group95.AddRoute(FieldVal113.EventOut, Text103.FdString.EventIn);
ProtoDeclare87.Node.AddChildren([Group95]);
X3D0.AddPrototype(ProtoDeclare87);
ProtoInstance117 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare87);
ProtoInstance117.X3DName := 'aPI';
(ProtoInstance117.Field('sliderTranslation') as TSFVec3f).Value := Vector3(0, 0.7, 0);
(ProtoInstance117.Field('textString') as TMFString).Send(['a=']);
(ProtoInstance117.Field('parameterScale') as TSFFloat).Value := 30;
(ProtoInstance117.Field('parameterName') as TSFString).Value := 'a';
(ProtoInstance117.Field('orbScript') as TSFNode).Value := Script60;
LayoutLayer72.FdChildren.Add(ProtoInstance117.Instantiate);
end;

procedure InitslidersPart8;
begin
ProtoInstance124 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare87);
ProtoInstance124.X3DName := 'bPI';
(ProtoInstance124.Field('sliderTranslation') as TSFVec3f).Value := Vector3(0, 0.4, 0);
(ProtoInstance124.Field('textString') as TMFString).Send(['b=']);
(ProtoInstance124.Field('parameterScale') as TSFFloat).Value := 30;
(ProtoInstance124.Field('parameterName') as TSFString).Value := 'b';
(ProtoInstance124.Field('orbScript') as TSFNode).Value := Script60;
LayoutLayer72.FdChildren.Add(ProtoInstance124.Instantiate);
ProtoInstance131 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare87);
ProtoInstance131.X3DName := 'cPI';
(ProtoInstance131.Field('sliderTranslation') as TSFVec3f).Value := Vector3(0, 0.1, 0);
(ProtoInstance131.Field('textString') as TMFString).Send(['c=']);
(ProtoInstance131.Field('parameterScale') as TSFFloat).Value := 20;
(ProtoInstance131.Field('parameterName') as TSFString).Value := 'c';
(ProtoInstance131.Field('orbScript') as TSFNode).Value := Script60;
LayoutLayer72.FdChildren.Add(ProtoInstance131.Instantiate);
ProtoInstance138 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare87);
ProtoInstance138.X3DName := 'dPI';
(ProtoInstance138.Field('sliderTranslation') as TSFVec3f).Value := Vector3(0, -0.2, 0);
(ProtoInstance138.Field('textString') as TMFString).Send(['d=']);
(ProtoInstance138.Field('parameterScale') as TSFFloat).Value := 20;
(ProtoInstance138.Field('parameterName') as TSFString).Value := 'd';
(ProtoInstance138.Field('orbScript') as TSFNode).Value := Script60;
LayoutLayer72.FdChildren.Add(ProtoInstance138.Instantiate);
ProtoInstance145 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare87);
ProtoInstance145.X3DName := 'tdeltaPI';
(ProtoInstance145.Field('sliderTranslation') as TSFVec3f).Value := Vector3(0, -0.5, 0);
(ProtoInstance145.Field('textString') as TMFString).Send(['tdelta=']);
(ProtoInstance145.Field('parameterScale') as TSFFloat).Value := 6.28;
(ProtoInstance145.Field('parameterName') as TSFString).Value := 'tdelta';
(ProtoInstance145.Field('orbScript') as TSFNode).Value := Script60;
LayoutLayer72.FdChildren.Add(ProtoInstance145.Instantiate);
ProtoInstance152 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare87);
ProtoInstance152.X3DName := 'pdeltaPI';
(ProtoInstance152.Field('sliderTranslation') as TSFVec3f).Value := Vector3(0, -0.8, 0);
(ProtoInstance152.Field('textString') as TMFString).Send(['pdelta=']);
(ProtoInstance152.Field('parameterScale') as TSFFloat).Value := 6.28;
(ProtoInstance152.Field('parameterName') as TSFString).Value := 'pdelta';
(ProtoInstance152.Field('orbScript') as TSFNode).Value := Script60;
LayoutLayer72.FdChildren.Add(ProtoInstance152.Instantiate);
end;

procedure InitslidersPart9;
begin
LayerSet16.FdLayers.Add(LayoutLayer72);
Layer159 := TLayerNode.Create;
Layer159.Pickable := True;
Layer159.SetObjectType(['ALL']);
Viewpoint160 := TViewpointNode.Create;
Viewpoint160.Description := 'My Humanoids';
Viewpoint160.FieldOfView := 1.570796;
Viewpoint160.Position := Vector3(0, 1.75, 80);
Layer159.FdChildren.Add(Viewpoint160);
LayerSet16.FdLayers.Add(Layer159);
Group15.FdChildren.Add(LayerSet16);
X3D0.AddChildren([Group15]);
end;

function Createsliders: TX3DRootNode;
var
  Binder: TslidersScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript60List) do
    FreeAndNil(CompiledScript60List[_i]);
  SetLength(CompiledScript60List, 0);
  for _i := 0 to High(CompiledScript107List) do
    FreeAndNil(CompiledScript107List[_i]);
  SetLength(CompiledScript107List, 0);
  InitslidersPart0;
  InitslidersPart1;
  InitslidersPart2;
  InitslidersPart3;
  InitslidersPart4;
  InitslidersPart5;
  InitslidersPart6;
  InitslidersPart7;
  InitslidersPart8;
  InitslidersPart9;
  Binder := TslidersScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterslidersScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript60List) do
  begin
    CompiledScript60List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript60List[_i].Initialized) then
      CompiledScript60List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript107List) do
  begin
    CompiledScript107List[_i].RegisterHandlers(Scene);
  end;
end;

finalization
  while Length(CompiledScript60List) > 0 do
  begin
    FreeAndNil(CompiledScript60List[High(CompiledScript60List)]);
    SetLength(CompiledScript60List, Length(CompiledScript60List) - 1);
  end;
  while Length(CompiledScript107List) > 0 do
  begin
    FreeAndNil(CompiledScript107List[High(CompiledScript107List)]);
    SetLength(CompiledScript107List, Length(CompiledScript107List) - 1);
  end;
end.
