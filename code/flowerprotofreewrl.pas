unit flowerprotofreewrl;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createflowerprotofreewrl: TX3DRootNode;
procedure RegisterflowerprotofreewrlScripts(const Scene: TCastleSceneCore);
procedure DetachflowerprotofreewrlScripts;

implementation

uses Classes, SysUtils, X3DLoad, CastleVectors, Math, X3DTime, CastleRenderOptions;

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
  TScript51Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Ftranslation: TVector3;
    FField_translation: TSFVec3f;
    FBack_translation: TSFVec3f;
    FDirty_translation: Boolean;
    Fvelocity: TVector3;
    FField_velocity: TSFVec3f;
    FBack_velocity: TSFVec3f;
    FDirty_velocity: Boolean;
    Fset_fraction: Single;
    FField_set_fraction: TSFFloat;
    FBack_set_fraction: TSFFloat;
    FDirty_set_fraction: Boolean;
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
    Ftdelta: Single;
    FField_tdelta: TSFFloat;
    FBack_tdelta: TSFFloat;
    FDirty_tdelta: Boolean;
    Fpdelta: Single;
    FField_pdelta: TSFFloat;
    FBack_pdelta: TSFFloat;
    FDirty_pdelta: Boolean;
    FLastTime_set_fraction: TX3DTime;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_set_fraction: TSFFloat; const AField_a: TSFFloat; const AField_b: TSFFloat; const AField_c: TSFFloat; const AField_d: TSFFloat; const AField_tdelta: TSFFloat; const AField_pdelta: TSFFloat);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript51Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
    procedure OnNotif_set_fraction(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
    procedure Animate_flowers(const fraction: Single; const eventTime: Single; const Time: TX3DTime);
  end;

  TflowerprotofreewrlScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group16: TGroupNode;
  NavigationInfo17: TNavigationInfoNode;
  Viewpoint18: TViewpointNode;
  Background19: TBackgroundNode;
  ProtoDeclare20: TX3DPrototype;
  FieldDecl22: TX3DInterfaceDeclaration;
  FieldVal22: TMFString;
  FieldDecl23: TX3DInterfaceDeclaration;
  FieldVal23: TMFString;
  Transform25: TTransformNode;
  Shape26: TShapeNode;
  Appearance27: TAppearanceNode;
  Material28: TMaterialNode;
  ComposedCubeMapTexture29: TComposedCubeMapTextureNode;
  ImageTexture30: TImageTextureNode;
  ImageTexture31: TImageTextureNode;
  ImageTexture32: TImageTextureNode;
  ImageTexture33: TImageTextureNode;
  ImageTexture34: TImageTextureNode;
  ImageTexture35: TImageTextureNode;
  ComposedShader36: TComposedShaderNode;
  FieldVal37: TSFInt32;
  FieldVal38: TSFVec3f;
  FieldVal39: TSFFloat;
  FieldVal40: TSFFloat;
  FieldVal41: TSFFloat;
  FieldVal42: TSFFloat;
  FieldVal43: TSFFloat;
  FieldVal44: TSFFloat;
  FieldVal45: TSFFloat;
  FieldVal46: TSFFloat;
  FieldVal47: TSFFloat;
  ShaderPart48: TShaderPartNode;
  ShaderPart49: TShaderPartNode;
  Sphere50: TSphereNode;
  Script51: TScriptNode;
  FieldVal52: TSFVec3f;
  FieldVal53: TSFVec3f;
  FieldVal54: TSFFloat;
  FieldVal55: TSFFloat;
  FieldVal56: TSFFloat;
  FieldVal57: TSFFloat;
  FieldVal58: TSFFloat;
  FieldVal59: TSFFloat;
  FieldVal60: TSFFloat;
  CompiledScript51List: array of TScript51Script;
  TimeSensor61: TTimeSensorNode;
  ProtoInstance70: TX3DPrototypeNode;

constructor TScript51Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_set_fraction: TSFFloat; const AField_a: TSFFloat; const AField_b: TSFFloat; const AField_c: TSFFloat; const AField_d: TSFFloat; const AField_tdelta: TSFFloat; const AField_pdelta: TSFFloat);
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Ftranslation := Vector3(0, 0, 0);
  FField_translation := nil;
  FBack_translation := TSFVec3f.Create(nil, False, 'translation', Vector3(0, 0, 0));
  FDirty_translation := False;
  Fvelocity := Vector3(0, 0, 0);
  FField_velocity := nil;
  FBack_velocity := TSFVec3f.Create(nil, False, 'velocity', Vector3(0, 0, 0));
  FDirty_velocity := False;
  Fset_fraction := 0.0;
  FField_set_fraction := nil;
  FBack_set_fraction := TSFFloat.Create(nil, False, 'set_fraction', 0.0);
  FDirty_set_fraction := False;
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
  Ftdelta := 0.0;
  FField_tdelta := nil;
  FBack_tdelta := TSFFloat.Create(nil, False, 'tdelta', 0.0);
  FDirty_tdelta := False;
  Fpdelta := 0.0;
  FField_pdelta := nil;
  FBack_pdelta := TSFFloat.Create(nil, False, 'pdelta', 0.0);
  FDirty_pdelta := False;
  FLastTime_set_fraction := TX3DTime.Oldest;
  FField_translation := AField_translation;
  if AField_translation <> nil then Ftranslation := AField_translation.Value;
  FField_velocity := AField_velocity;
  if AField_velocity <> nil then Fvelocity := AField_velocity.Value;
  FField_set_fraction := AField_set_fraction;
  if AField_set_fraction <> nil then Fset_fraction := AField_set_fraction.Value;
  FField_a := AField_a;
  if AField_a <> nil then Fa := AField_a.Value;
  FField_b := AField_b;
  if AField_b <> nil then Fb := AField_b.Value;
  FField_c := AField_c;
  if AField_c <> nil then Fc := AField_c.Value;
  FField_d := AField_d;
  if AField_d <> nil then Fd := AField_d.Value;
  FField_tdelta := AField_tdelta;
  if AField_tdelta <> nil then Ftdelta := AField_tdelta.Value;
  FField_pdelta := AField_pdelta;
  if AField_pdelta <> nil then Fpdelta := AField_pdelta.Value;
  if FField_set_fraction <> nil then
    FField_set_fraction.EventIn.AddNotification({$ifdef FPC}@{$endif}OnNotif_set_fraction);
end;

class function TScript51Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript51Script;
begin
  Result := TScript51Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('set_fraction') as TSFFloat, AScriptNode.FieldOrEvent('a') as TSFFloat, AScriptNode.FieldOrEvent('b') as TSFFloat, AScriptNode.FieldOrEvent('c') as TSFFloat, AScriptNode.FieldOrEvent('d') as TSFFloat, AScriptNode.FieldOrEvent('tdelta') as TSFFloat, AScriptNode.FieldOrEvent('pdelta') as TSFFloat);
end;

destructor TScript51Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_set_fraction);
  FreeAndNil(FBack_a);
  FreeAndNil(FBack_b);
  FreeAndNil(FBack_c);
  FreeAndNil(FBack_d);
  FreeAndNil(FBack_tdelta);
  FreeAndNil(FBack_pdelta);
  inherited Destroy;
end;

procedure TScript51Script.Detach;
begin
  if FField_set_fraction <> nil then
  begin
    FField_set_fraction.EventIn.RemoveNotification({$ifdef FPC}@{$endif}OnNotif_set_fraction);
    FField_set_fraction := nil;
  end;
end;

procedure TScript51Script.FlushOutputs(const Time: TX3DTime);
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
  if FDirty_set_fraction then
  begin
    FDirty_set_fraction := False;
    if FField_set_fraction <> nil then
    begin
      FField_set_fraction.Value := Fset_fraction;
      FBack_set_fraction.Value := Fset_fraction;
      if (FField_set_fraction.ParentNode is TX3DNode) and (TX3DNode(FField_set_fraction.ParentNode).Scene <> nil) then
        FField_set_fraction.EventOut.Send(FBack_set_fraction, TX3DNode(FField_set_fraction.ParentNode).Scene.NextEventTime)
      else
        FField_set_fraction.EventOut.Send(FBack_set_fraction, Time);
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
end;

procedure TScript51Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript51Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Ftranslation := Vector3(0, 0, 0);
  FDirty_translation := True;
  Fvelocity := Vector3(Random - 0.5, Random - 0.5, Random - 0.5);
  FDirty_velocity := True;
  FlushOutputs(Time);
end;

procedure TScript51Script.OnNotif_set_fraction(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
begin
  Set_fraction(Value, Time);
end;

procedure TScript51Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
var
  j: Integer;
begin
  if (Time.Seconds = FLastTime_set_fraction.Seconds) and (Time.PlusTicks = FLastTime_set_fraction.PlusTicks) then Exit;
  FLastTime_set_fraction := Time;
  Ftranslation := Vector3(Ftranslation.X + Fvelocity.X, Ftranslation.Y + Fvelocity.Y, Ftranslation.Z + Fvelocity.Z);
  FDirty_translation := True;
  for j := 0 to 2 do
  begin
    if Abs(Ftranslation.X) > 10 then
    begin
      Initialize(nil, Time);
    end
    else if Abs(Ftranslation.Y) > 10 then
    begin
      Initialize(nil, Time);
    end
    else if Abs(Ftranslation.Z) > 10 then
    begin
      Initialize(nil, Time);
    end
    else
    begin
      Fvelocity.X := Fvelocity.X + (Random * 0.2 - 0.1);
      FDirty_velocity := True;
      Fvelocity.Y := Fvelocity.Y + (Random * 0.2 - 0.1);
      FDirty_velocity := True;
      Fvelocity.Z := Fvelocity.Z + (Random * 0.2 - 0.1);
      FDirty_velocity := True;
    end;
  end;
  Animate_flowers(0.0, 0.0, Time);
  FlushOutputs(Time);
end;

procedure TScript51Script.Animate_flowers(const fraction: Single; const eventTime: Single; const Time: TX3DTime);
var
  choice: Integer;
begin
  choice := Floor(Random * 4);
  case choice of
    0:
    begin
      Fa := Fa + (Random * 0.2 - 0.1);
      FDirty_a := True;
    end;
    1:
    begin
      Fb := Fb + (Random * 0.2 - 0.1);
      FDirty_b := True;
    end;
    2:
    begin
      Fc := Fc + (Random * 2 - 1);
      FDirty_c := True;
    end;
    3:
    begin
      Fd := Fd + (Random * 2 - 1);
      FDirty_d := True;
    end;
  end;
  Ftdelta := Ftdelta + (0.5);
  FDirty_tdelta := True;
  Fpdelta := Fpdelta + (0.5);
  FDirty_pdelta := True;
  if Fa > 1 then
  begin
    Fa := 0.5;
    FDirty_a := True;
  end;
  if Fb > 1 then
  begin
    Fb := 0.5;
    FDirty_b := True;
  end;
  if Fc < 1 then
  begin
    Fc := 4;
    FDirty_c := True;
  end;
  if Fd < 1 then
  begin
    Fd := 4;
    FDirty_d := True;
  end;
  if Fc > 10 then
  begin
    Fc := 4;
    FDirty_c := True;
  end;
  if Fd > 10 then
  begin
    Fd := 4;
    FDirty_d := True;
  end;
end;

procedure TflowerprotofreewrlScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script51_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript51List);
    Prefix := 'Script51_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction' + LineEnding +
      'set_set_fraction=' + Prefix + 'set_set_fraction']);
    SetLength(CompiledScript51List, Idx + 1);
    CompiledScript51List[Idx] := TScript51Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitflowerprotofreewrlPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Full';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['Scripting'] := 1;
X3D0.Components['EnvironmentalEffects'] := 3;
X3D0.Components['Shaders'] := 1;
X3D0.Components['CubeMapTexturing'] := 1;
X3D0.Components['Texturing'] := 1;
X3D0.Components['Rendering'] := 1;
X3D0.Components['Shape'] := 4;
X3D0.Components['Grouping'] := 3;
X3D0.Components['Core'] := 1;
X3D0.Meta['title'] := 'flowerproto.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'A flower proto with configurable shaders';
X3D0.Meta['generator'] := 'X3D-Edit, https://savage.nps.edu/X3D-Edit';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/flowerproto.x3d';
Group16 := TGroupNode.Create;
NavigationInfo17 := TNavigationInfoNode.Create;
Group16.FdChildren.Add(NavigationInfo17);
Viewpoint18 := TViewpointNode.Create;
Viewpoint18.Description := 'Tour Views';
Viewpoint18.Position := Vector3(0, 0, 50);
Group16.FdChildren.Add(Viewpoint18);
Background19 := TBackgroundNode.Create;
Background19.SetBackUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_back.png']);
Background19.SetBottomUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
Background19.SetFrontUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_front.png']);
Background19.SetLeftUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_left.png']);
Background19.SetRightUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_right.png']);
Background19.SetTopUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_top.png']);
Group16.FdChildren.Add(Background19);
ProtoDeclare20 := CreateEmptyPrototype('FlowerProto');
ProtoDeclare20.X3DName := 'FlowerProto';
FieldVal22 := TMFString.Create(nil, True, 'vertex', ['../shaders/freewrl_flowers_chromatic.vs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/freewrl_flowers_chromatic.vs']);
FieldDecl22 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl22.FieldOrEvent := FieldVal22;
FieldVal22.ParentInterfaceDeclaration := FieldDecl22;
ProtoDeclare20.InterfaceDeclarations.Add(FieldDecl22);
end;

procedure InitflowerprotofreewrlPart1;
begin
FieldVal23 := TMFString.Create(nil, True, 'fragment', ['../shaders/freewrl.fs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/freewrl.fs']);
FieldDecl23 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl23.FieldOrEvent := FieldVal23;
FieldVal23.ParentInterfaceDeclaration := FieldDecl23;
ProtoDeclare20.InterfaceDeclarations.Add(FieldDecl23);
Transform25 := TTransformNode.Create;
Transform25.X3DName := 'transform';
Shape26 := TShapeNode.Create;
Appearance27 := TAppearanceNode.Create;
Material28 := TMaterialNode.Create;
Material28.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material28.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance27.Material := Material28;
ComposedCubeMapTexture29 := TComposedCubeMapTextureNode.Create;
ComposedCubeMapTexture29.X3DName := 'texture';
ImageTexture30 := TImageTextureNode.Create;
ImageTexture30.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_back.png']);
ComposedCubeMapTexture29.Back := ImageTexture30;
ImageTexture31 := TImageTextureNode.Create;
ImageTexture31.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
ComposedCubeMapTexture29.Bottom := ImageTexture31;
ImageTexture32 := TImageTextureNode.Create;
ImageTexture32.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_front.png']);
ComposedCubeMapTexture29.Front := ImageTexture32;
ImageTexture33 := TImageTextureNode.Create;
ImageTexture33.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_left.png']);
ComposedCubeMapTexture29.Left := ImageTexture33;
ImageTexture34 := TImageTextureNode.Create;
ImageTexture34.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_right.png']);
ComposedCubeMapTexture29.Right := ImageTexture34;
ImageTexture35 := TImageTextureNode.Create;
ImageTexture35.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_top.png']);
ComposedCubeMapTexture29.Top := ImageTexture35;
Appearance27.Texture := ComposedCubeMapTexture29;
ComposedShader36 := TComposedShaderNode.Create;
ComposedShader36.X3DName := 'shader';
ComposedShader36.Language := slGLSL;
FieldVal37 := TSFInt32.Create(ComposedShader36, True, 'fw_textureCoordGenType', 0);
ComposedShader36.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFVec3f.Create(ComposedShader36, False, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
end;

procedure InitflowerprotofreewrlPart2;
begin
ComposedShader36.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TSFFloat.Create(ComposedShader36, True, 'bias', 0.5);
ComposedShader36.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TSFFloat.Create(ComposedShader36, True, 'scale', 0.5);
ComposedShader36.AddCustomFieldOrEvent(FieldVal40);
FieldVal41 := TSFFloat.Create(ComposedShader36, True, 'power', 2);
ComposedShader36.AddCustomFieldOrEvent(FieldVal41);
FieldVal42 := TSFFloat.Create(ComposedShader36, True, 'a', 5);
ComposedShader36.AddCustomFieldOrEvent(FieldVal42);
FieldVal43 := TSFFloat.Create(ComposedShader36, True, 'b', 5);
ComposedShader36.AddCustomFieldOrEvent(FieldVal43);
FieldVal44 := TSFFloat.Create(ComposedShader36, True, 'c', 20);
ComposedShader36.AddCustomFieldOrEvent(FieldVal44);
FieldVal45 := TSFFloat.Create(ComposedShader36, True, 'd', 20);
ComposedShader36.AddCustomFieldOrEvent(FieldVal45);
FieldVal46 := TSFFloat.Create(ComposedShader36, True, 'tdelta', 0);
ComposedShader36.AddCustomFieldOrEvent(FieldVal46);
FieldVal47 := TSFFloat.Create(ComposedShader36, True, 'pdelta', 0);
ComposedShader36.AddCustomFieldOrEvent(FieldVal47);
{ <field name='cube' type='SFNode' accessType="inputOutput"> }
{ <ComposedCubeMapTexture USE="texture"/> }
{ </field> }
ShaderPart48 := TShaderPartNode.Create;
ShaderPart48.ShaderType := stVertex;
ShaderPart48.FieldOrEvent('url', True).IsClauseNamesAdd('vertex');
ComposedShader36.FdParts.Add(ShaderPart48);
ShaderPart49 := TShaderPartNode.Create;
ShaderPart49.ShaderType := stFragment;
ShaderPart49.FieldOrEvent('url', True).IsClauseNamesAdd('fragment');
ComposedShader36.FdParts.Add(ShaderPart49);
Appearance27.FdShaders.Add(ComposedShader36);
Shape26.Appearance := Appearance27;
Sphere50 := TSphereNode.Create;
Sphere50.Radius := 5;
Shape26.Geometry := Sphere50;
Transform25.FdChildren.Add(Shape26);
Script51 := TScriptNode.Create;
Script51.X3DName := 'Animate';
Script51.DirectOutput := True;
FieldVal52 := TSFVec3f.Create(Script51, True, 'translation', Vector3(0, 0, 0));
end;

procedure InitflowerprotofreewrlPart3;
begin
Script51.AddCustomFieldOrEvent(FieldVal52);
FieldVal53 := TSFVec3f.Create(Script51, True, 'velocity', Vector3(0, 0, 0));
Script51.AddCustomFieldOrEvent(FieldVal53);
FieldVal54 := TSFFloat.CreateUndefined(Script51, True, 'set_fraction');
Script51.AddCustomFieldOrEvent(FieldVal54);
FieldVal55 := TSFFloat.Create(Script51, True, 'a', 0.5);
Script51.AddCustomFieldOrEvent(FieldVal55);
FieldVal56 := TSFFloat.Create(Script51, True, 'b', 0.5);
Script51.AddCustomFieldOrEvent(FieldVal56);
FieldVal57 := TSFFloat.Create(Script51, True, 'c', 3);
Script51.AddCustomFieldOrEvent(FieldVal57);
FieldVal58 := TSFFloat.Create(Script51, True, 'd', 3);
Script51.AddCustomFieldOrEvent(FieldVal58);
FieldVal59 := TSFFloat.Create(Script51, True, 'tdelta', 0.5);
Script51.AddCustomFieldOrEvent(FieldVal59);
FieldVal60 := TSFFloat.Create(Script51, True, 'pdelta', 0.5);
Script51.AddCustomFieldOrEvent(FieldVal60);
Script51.SetUrl(['compiled:' + LineEnding +
  'initialize=Script51_initialize' + LineEnding +
  'set_fraction=Script51_set_fraction' + LineEnding +
  'set_set_fraction=Script51_set_set_fraction']);
Transform25.FdChildren.Add(Script51);
TimeSensor61 := TTimeSensorNode.Create;
TimeSensor61.X3DName := 'TourTime';
TimeSensor61.CycleInterval := 5;
TimeSensor61.Loop := True;
Transform25.FdChildren.Add(TimeSensor61);
{ ROUTE TourTime.fraction_changed TO Animate.set_fraction }
Transform25.AddRoute(TimeSensor61.EventFraction_changed, FieldVal54.EventIn);
{ ROUTE Animate.translation_changed TO transform.set_translation }
Transform25.AddRoute(FieldVal52.EventOut, Transform25.FdTranslation.EventIn);
{ ROUTE Animate.a TO shader.a }
Transform25.AddRoute(FieldVal55.EventOut, FieldVal42.EventIn);
{ ROUTE Animate.b TO shader.b }
Transform25.AddRoute(FieldVal56.EventOut, FieldVal43.EventIn);
{ ROUTE Animate.c TO shader.c }
Transform25.AddRoute(FieldVal57.EventOut, FieldVal44.EventIn);
{ ROUTE Animate.d TO shader.d }
Transform25.AddRoute(FieldVal58.EventOut, FieldVal45.EventIn);
{ ROUTE Animate.tdelta TO shader.tdelta }
Transform25.AddRoute(FieldVal59.EventOut, FieldVal46.EventIn);
{ ROUTE Animate.pdelta TO shader.pdelta }
Transform25.AddRoute(FieldVal60.EventOut, FieldVal47.EventIn);
end;

procedure InitflowerprotofreewrlPart4;
begin
ProtoDeclare20.Node.AddChildren([Transform25]);
X3D0.AddPrototype(ProtoDeclare20);
ProtoInstance70 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare20);
(ProtoInstance70.Field('vertex') as TMFString).Send(['../shaders/freewrl_flowers_chromatic.vs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/freewrl_flowers_chromatic.vs']);
(ProtoInstance70.Field('fragment') as TMFString).Send(['../shaders/freewrl.fs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/freewrl.fs']);
Group16.FdChildren.Add(ProtoInstance70.Instantiate);
X3D0.AddChildren([Group16]);
end;

function Createflowerprotofreewrl: TX3DRootNode;
var
  Binder: TflowerprotofreewrlScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript51List) do
    FreeAndNil(CompiledScript51List[_i]);
  SetLength(CompiledScript51List, 0);
  InitflowerprotofreewrlPart0;
  InitflowerprotofreewrlPart1;
  InitflowerprotofreewrlPart2;
  InitflowerprotofreewrlPart3;
  InitflowerprotofreewrlPart4;
  Binder := TflowerprotofreewrlScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterflowerprotofreewrlScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript51List) do
  begin
    CompiledScript51List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript51List[_i].Initialized) then
      CompiledScript51List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure DetachflowerprotofreewrlScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript51List) do
  begin
    CompiledScript51List[_i].Detach;
    FreeAndNil(CompiledScript51List[_i]);
  end;
  SetLength(CompiledScript51List, 0);
end;

finalization
  while Length(CompiledScript51List) > 0 do
  begin
    FreeAndNil(CompiledScript51List[High(CompiledScript51List)]);
    SetLength(CompiledScript51List, Length(CompiledScript51List) - 1);
  end;
end.
