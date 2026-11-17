unit bubble;

interface

uses X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createbubble: TX3DRootNode;
procedure RegisterbubbleScripts(const Scene: TCastleSceneCore);

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
  TScript17Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fscale: TVector3;
    FField_scale: TSFVec3f;
    FBack_scale: TSFVec3f;
    FDirty_scale: Boolean;
    Ftranslation: TVector3;
    FField_translation: TSFVec3f;
    FBack_translation: TSFVec3f;
    FDirty_translation: Boolean;
    Fvelocity: TVector3;
    FField_velocity: TSFVec3f;
    FBack_velocity: TSFVec3f;
    FDirty_velocity: Boolean;
    Fscalvel: TVector3;
    FField_scalvel: TSFVec3f;
    FBack_scalvel: TSFVec3f;
    FDirty_scalvel: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript17Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TbubbleScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group7: TGroupNode;
  NavigationInfo8: TNavigationInfoNode;
  Viewpoint9: TViewpointNode;
  ProtoDeclare10: TX3DPrototype;
  Transform12: TTransformNode;
  Shape13: TShapeNode;
  Sphere14: TSphereNode;
  Appearance15: TAppearanceNode;
  Material16: TMaterialNode;
  Script17: TScriptNode;
  FieldVal18: TSFVec3f;
  FieldVal19: TSFVec3f;
  FieldVal20: TSFVec3f;
  FieldVal21: TSFVec3f;
  FieldVal22: TX3DEvent;
  CompiledScript17List: array of TScript17Script;
  TimeSensor23: TTimeSensorNode;
  ProtoInstance27: TX3DPrototypeNode;

constructor TScript17Script.Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fscale := Vector3(0, 0, 0);
  FField_scale := nil;
  FBack_scale := TSFVec3f.Create(nil, False, 'scale', Vector3(0, 0, 0));
  FDirty_scale := False;
  Ftranslation := Vector3(0, 0, 0);
  FField_translation := nil;
  FBack_translation := TSFVec3f.Create(nil, False, 'translation', Vector3(0, 0, 0));
  FDirty_translation := False;
  Fvelocity := Vector3(0, 0, 0);
  FField_velocity := nil;
  FBack_velocity := TSFVec3f.Create(nil, False, 'velocity', Vector3(0, 0, 0));
  FDirty_velocity := False;
  Fscalvel := Vector3(0, 0, 0);
  FField_scalvel := nil;
  FBack_scalvel := TSFVec3f.Create(nil, False, 'scalvel', Vector3(0, 0, 0));
  FDirty_scalvel := False;
  FField_scale := AField_scale;
  if AField_scale <> nil then Fscale := AField_scale.Value;
  FField_translation := AField_translation;
  if AField_translation <> nil then Ftranslation := AField_translation.Value;
  FField_velocity := AField_velocity;
  if AField_velocity <> nil then Fvelocity := AField_velocity.Value;
  FField_scalvel := AField_scalvel;
  if AField_scalvel <> nil then Fscalvel := AField_scalvel.Value;
end;

class function TScript17Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript17Script;
begin
  Result := TScript17Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('scale') as TSFVec3f, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('scalvel') as TSFVec3f);
end;

destructor TScript17Script.Destroy;
begin
  FreeAndNil(FBack_scale);
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_scalvel);
  inherited Destroy;
end;

procedure TScript17Script.FlushOutputs(const Time: TX3DTime);
begin
  if FDirty_scale then
  begin
    FDirty_scale := False;
    if FField_scale <> nil then
    begin
      FField_scale.Value := Fscale;
      FBack_scale.Value := Fscale;
      if (FField_scale.ParentNode is TX3DNode) and (TX3DNode(FField_scale.ParentNode).Scene <> nil) then
        FField_scale.EventOut.Send(FBack_scale, TX3DNode(FField_scale.ParentNode).Scene.NextEventTime)
      else
        FField_scale.EventOut.Send(FBack_scale, Time);
    end;
  end;
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
  if FDirty_velocity then
  begin
    FDirty_velocity := False;
    if FField_velocity <> nil then
    begin
      FField_velocity.Value := Fvelocity;
      FBack_velocity.Value := Fvelocity;
      if (FField_velocity.ParentNode is TX3DNode) and (TX3DNode(FField_velocity.ParentNode).Scene <> nil) then
        FField_velocity.EventOut.Send(FBack_velocity, TX3DNode(FField_velocity.ParentNode).Scene.NextEventTime)
      else
        FField_velocity.EventOut.Send(FBack_velocity, Time);
    end;
  end;
  if FDirty_scalvel then
  begin
    FDirty_scalvel := False;
    if FField_scalvel <> nil then
    begin
      FField_scalvel.Value := Fscalvel;
      FBack_scalvel.Value := Fscalvel;
      if (FField_scalvel.ParentNode is TX3DNode) and (TX3DNode(FField_scalvel.ParentNode).Scene <> nil) then
        FField_scalvel.EventOut.Send(FBack_scalvel, TX3DNode(FField_scalvel.ParentNode).Scene.NextEventTime)
      else
        FField_scalvel.EventOut.Send(FBack_scalvel, Time);
    end;
  end;
end;

procedure TScript17Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript17Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Fvelocity := Vector3(Random * 0.25 - 0.125, Random * 0.25 - 0.125, Random * 0.25 - 0.125);
  FDirty_velocity := True;
  Fscalvel := Vector3(Random * 0.4, Random * 0.4, Random * 0.4);
  FDirty_scalvel := True;
  FlushOutputs(Time);
end;

procedure TScript17Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
begin
  Ftranslation := Vector3(Ftranslation.X + Fvelocity.X, Ftranslation.Y + Fvelocity.Y, Ftranslation.Z + Fvelocity.Z);
  FDirty_translation := True;
  Fscale := Vector3(Fscale.X + Fscalvel.X, Fscale.Y + Fscalvel.Y, Fscale.Z + Fscalvel.Z);
  FDirty_scale := True;
  if Abs(Ftranslation.X) > 256 then
  begin
    Ftranslation.X := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Ftranslation.Y) > 256 then
  begin
    Ftranslation.Y := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Ftranslation.Z) > 256 then
  begin
    Ftranslation.Z := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Fscale.X) > 20 then
  begin
    Fscale.X := Fscale.X / 2;
    FDirty_scale := True;
    Ftranslation.X := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Fscale.Y) > 20 then
  begin
    Fscale.Y := Fscale.Y / 2;
    FDirty_scale := True;
    Ftranslation.Y := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Fscale.Z) > 20 then
  begin
    Fscale.Z := Fscale.Z / 2;
    FDirty_scale := True;
    Ftranslation.Z := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  FlushOutputs(Time);
end;

procedure TbubbleScriptBinder.BindNode(Node: TX3DNode);
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
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript17List, Idx + 1);
    CompiledScript17List[Idx] := TScript17Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitbubblePart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'bubble.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'Tour around a prismatic sphere';
X3D0.Meta['generator'] := 'X3D-Edit, https://savage.nps.edu/X3D-Edit';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/bubble.x3d';
Group7 := TGroupNode.Create;
NavigationInfo8 := TNavigationInfoNode.Create;
NavigationInfo8.SetType(['EXAMINE']);
Group7.FdChildren.Add(NavigationInfo8);
Viewpoint9 := TViewpointNode.Create;
Viewpoint9.Position := Vector3(0, 0, 4);
Viewpoint9.Orientation := Vector4(1, 0, 0, 0);
Viewpoint9.Description := 'Bubble in action';
Group7.FdChildren.Add(Viewpoint9);
ProtoDeclare10 := CreateEmptyPrototype('Bubble');
ProtoDeclare10.X3DName := 'Bubble';
Transform12 := TTransformNode.Create;
Transform12.X3DName := 'transform';
Shape13 := TShapeNode.Create;
Sphere14 := TSphereNode.Create;
Sphere14.Radius := 0.25;
Shape13.Geometry := Sphere14;
Appearance15 := TAppearanceNode.Create;
Material16 := TMaterialNode.Create;
Material16.DiffuseColor := Vector3(1, 0, 0);
Material16.Transparency := 0.2;
Appearance15.Material := Material16;
Shape13.Appearance := Appearance15;
Transform12.FdChildren.Add(Shape13);
Script17 := TScriptNode.Create;
Script17.X3DName := 'bounce';
FieldVal18 := TSFVec3f.Create(Script17, True, 'scale', Vector3(1, 1, 1));
Script17.AddCustomFieldOrEvent(FieldVal18);
FieldVal19 := TSFVec3f.Create(Script17, True, 'translation', Vector3(0, 0, 0));
Script17.AddCustomFieldOrEvent(FieldVal19);
FieldVal20 := TSFVec3f.Create(Script17, True, 'velocity', Vector3(0, 0, 0));
end;

procedure InitbubblePart1;
begin
Script17.AddCustomFieldOrEvent(FieldVal20);
FieldVal21 := TSFVec3f.Create(Script17, True, 'scalvel', Vector3(0, 0, 0));
Script17.AddCustomFieldOrEvent(FieldVal21);
FieldVal22 := TSFFloat.CreateEvent(Script17, 'set_fraction', True);
Script17.AddCustomFieldOrEvent(FieldVal22);
Script17.SetUrl(['compiled:' + LineEnding +
  'initialize=Script17_initialize' + LineEnding +
  'set_fraction=Script17_set_fraction']);
Transform12.FdChildren.Add(Script17);
TimeSensor23 := TTimeSensorNode.Create;
TimeSensor23.X3DName := 'bubbleClock';
TimeSensor23.CycleInterval := 10;
TimeSensor23.Loop := True;
Transform12.FdChildren.Add(TimeSensor23);
{ ROUTE bounce.translation_changed TO transform.set_translation }
Transform12.AddRoute(FieldVal19.EventOut, Transform12.FdTranslation.EventIn);
{ ROUTE bounce.scale_changed TO transform.set_scale }
Transform12.AddRoute(FieldVal18.EventOut, Transform12.FdScale.EventIn);
{ ROUTE bubbleClock.fraction_changed TO bounce.set_fraction }
Transform12.AddRoute(TimeSensor23.EventFraction_changed, FieldVal22);
ProtoDeclare10.Node.AddChildren([Transform12]);
X3D0.AddPrototype(ProtoDeclare10);
ProtoInstance27 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare10);
ProtoInstance27.X3DName := 'bubbleA';
Group7.FdChildren.Add(ProtoInstance27.Instantiate);
X3D0.AddChildren([Group7]);
end;

function Createbubble: TX3DRootNode;
var
  Binder: TbubbleScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript17List) do
    FreeAndNil(CompiledScript17List[_i]);
  SetLength(CompiledScript17List, 0);
  InitbubblePart0;
  InitbubblePart1;
  Binder := TbubbleScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterbubbleScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript17List) do
  begin
    CompiledScript17List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript17List[_i].Initialized) then
      CompiledScript17List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

finalization
  while Length(CompiledScript17List) > 0 do
  begin
    FreeAndNil(CompiledScript17List[High(CompiledScript17List)]);
    SetLength(CompiledScript17List, Length(CompiledScript17List) - 1);
  end;
end.
