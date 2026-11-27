unit bubs;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, HAnimDisplacerSupport, CastleSceneCore;

function Createbubs: TX3DRootNode;
procedure RegisterbubsScripts(const Scene: TCastleSceneCore);
procedure DetachbubsScripts;

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
  TScript19Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript19Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TbubsScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group8: TGroupNode;
  NavigationInfo9: TNavigationInfoNode;
  Viewpoint10: TViewpointNode;
  Background11: TBackgroundNode;
  ProtoDeclare12: TX3DPrototype;
  Transform14: TTransformNode;
  Shape15: TShapeNode;
  Sphere16: TSphereNode;
  Appearance17: TAppearanceNode;
  Material18: TMaterialNode;
  Script19: TScriptNode;
  FieldVal20: TSFVec3f;
  FieldVal21: TSFVec3f;
  FieldVal22: TSFVec3f;
  FieldVal23: TSFVec3f;
  FieldVal24: TX3DEvent;
  CompiledScript19List: array of TScript19Script;
  TimeSensor25: TTimeSensorNode;
  ProtoInstance29: TX3DPrototypeNode;
  ProtoInstance30: TX3DPrototypeNode;
  ProtoInstance31: TX3DPrototypeNode;
  ProtoInstance32: TX3DPrototypeNode;

constructor TScript19Script.Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
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

class function TScript19Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript19Script;
begin
  Result := TScript19Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('scale') as TSFVec3f, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('scalvel') as TSFVec3f);
end;

destructor TScript19Script.Destroy;
begin
  FreeAndNil(FBack_scale);
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_scalvel);
  inherited Destroy;
end;

procedure TScript19Script.Detach;
begin
end;

procedure TScript19Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript19Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript19Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Fvelocity := Vector3(Random * 0.25 - 0.125, Random * 0.25 - 0.125, Random * 0.25 - 0.125);
  FDirty_velocity := True;
  Fscalvel := Vector3(Random * 0.4, Random * 0.4, Random * 0.4);
  FDirty_scalvel := True;
  FlushOutputs(Time);
end;

procedure TScript19Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
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
    Fscale.X := Fscale.X / 20;
    FDirty_scale := True;
    Ftranslation.X := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Fscale.Y) > 20 then
  begin
    Fscale.Y := Fscale.Y / 20;
    FDirty_scale := True;
    Ftranslation.Y := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  if Abs(Fscale.Z) > 20 then
  begin
    Fscale.Z := Fscale.Z / 20;
    FDirty_scale := True;
    Ftranslation.Z := 0;
    FDirty_translation := True;
    Initialize(nil, Time);
  end;
  FlushOutputs(Time);
end;

procedure TbubsScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script19_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript19List);
    Prefix := 'Script19_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript19List, Idx + 1);
    CompiledScript19List[Idx] := TScript19Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitbubsPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Scripting'] := 1;
X3D0.Meta['title'] := 'bubs.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'Tour around a prismatic sphere';
X3D0.Meta['generator'] := 'X3D-Edit, https://savage.nps.edu/X3D-Edit';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/bubs.x3d';
Group8 := TGroupNode.Create;
NavigationInfo9 := TNavigationInfoNode.Create;
NavigationInfo9.SetType(['EXAMINE']);
Group8.FdChildren.Add(NavigationInfo9);
Viewpoint10 := TViewpointNode.Create;
Viewpoint10.Position := Vector3(0, 0, 4);
Viewpoint10.Orientation := Vector4(1, 0, 0, 0);
Viewpoint10.Description := 'Bubbles in action';
Group8.FdChildren.Add(Viewpoint10);
Background11 := TBackgroundNode.Create;
Background11.SetBackUrl(['../resources/images/BK.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/BK.png']);
Background11.SetBottomUrl(['../resources/images/BT.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/BT.png']);
Background11.SetFrontUrl(['../resources/images/FR.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/FR.png']);
Background11.SetLeftUrl(['../resources/images/LF.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/LF.png']);
Background11.SetRightUrl(['../resources/images/RT.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/RT.png']);
Background11.SetTopUrl(['../resources/images/TP.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/TP.png']);
Group8.FdChildren.Add(Background11);
ProtoDeclare12 := CreateEmptyPrototype('Bubble');
ProtoDeclare12.X3DName := 'Bubble';
Transform14 := TTransformNode.Create;
Transform14.X3DName := 'body_trans';
Shape15 := TShapeNode.Create;
Sphere16 := TSphereNode.Create;
Sphere16.Radius := 0.25;
Shape15.Geometry := Sphere16;
Appearance17 := TAppearanceNode.Create;
Material18 := TMaterialNode.Create;
Material18.DiffuseColor := Vector3(1, 0, 0);
Material18.Transparency := 0.2;
Appearance17.Material := Material18;
end;

procedure InitbubsPart1;
begin
Shape15.Appearance := Appearance17;
Transform14.FdChildren.Add(Shape15);
Script19 := TScriptNode.Create;
Script19.X3DName := 'bounce1';
FieldVal20 := TSFVec3f.Create(Script19, True, 'scale', Vector3(1, 1, 1));
Script19.AddCustomFieldOrEvent(FieldVal20);
FieldVal21 := TSFVec3f.Create(Script19, True, 'translation', Vector3(0, 0, 0));
Script19.AddCustomFieldOrEvent(FieldVal21);
FieldVal22 := TSFVec3f.Create(Script19, True, 'velocity', Vector3(0, 0, 0));
Script19.AddCustomFieldOrEvent(FieldVal22);
FieldVal23 := TSFVec3f.Create(Script19, True, 'scalvel', Vector3(0, 0, 0));
Script19.AddCustomFieldOrEvent(FieldVal23);
FieldVal24 := TSFFloat.CreateEvent(Script19, 'set_fraction', True);
Script19.AddCustomFieldOrEvent(FieldVal24);
Script19.SetUrl(['compiled:' + LineEnding +
  'initialize=Script19_initialize' + LineEnding +
  'set_fraction=Script19_set_fraction']);
Transform14.FdChildren.Add(Script19);
TimeSensor25 := TTimeSensorNode.Create;
TimeSensor25.X3DName := 'bubbleClock';
TimeSensor25.CycleInterval := 10;
TimeSensor25.Loop := True;
Transform14.FdChildren.Add(TimeSensor25);
{ ROUTE bounce1.translation_changed TO body_trans.set_translation }
Transform14.AddRoute(FieldVal21.EventOut, Transform14.FdTranslation.EventIn);
{ ROUTE bounce1.scale_changed TO body_trans.set_scale }
Transform14.AddRoute(FieldVal20.EventOut, Transform14.FdScale.EventIn);
{ ROUTE bubbleClock.fraction_changed TO bounce1.set_fraction }
Transform14.AddRoute(TimeSensor25.EventFraction_changed, FieldVal24);
ProtoDeclare12.Node.AddChildren([Transform14]);
X3D0.AddPrototype(ProtoDeclare12);
ProtoInstance29 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance29.X3DName := 'bubbleA';
Group8.FdChildren.Add(ProtoInstance29.Instantiate);
ProtoInstance30 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance30.X3DName := 'bubbleB';
Group8.FdChildren.Add(ProtoInstance30.Instantiate);
ProtoInstance31 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance31.X3DName := 'bubbleC';
Group8.FdChildren.Add(ProtoInstance31.Instantiate);
ProtoInstance32 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare12);
ProtoInstance32.X3DName := 'bubbleD';
end;

procedure InitbubsPart2;
begin
Group8.FdChildren.Add(ProtoInstance32.Instantiate);
X3D0.AddChildren([Group8]);
end;

function Createbubs: TX3DRootNode;
var
  Binder: TbubsScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript19List) do
    FreeAndNil(CompiledScript19List[_i]);
  SetLength(CompiledScript19List, 0);
  InitbubsPart0;
  InitbubsPart1;
  InitbubsPart2;
  Binder := TbubsScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterbubsScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript19List) do
  begin
    CompiledScript19List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript19List[_i].Initialized) then
      CompiledScript19List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure DetachbubsScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript19List) do
  begin
    CompiledScript19List[_i].Detach;
    FreeAndNil(CompiledScript19List[_i]);
  end;
  SetLength(CompiledScript19List, 0);
end;

finalization
  while Length(CompiledScript19List) > 0 do
  begin
    FreeAndNil(CompiledScript19List[High(CompiledScript19List)]);
    SetLength(CompiledScript19List, Length(CompiledScript19List) - 1);
  end;
end.
