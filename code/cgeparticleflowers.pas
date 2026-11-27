unit cgeparticleflowers;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createcgeparticleflowers: TX3DRootNode;
procedure RegistercgeparticleflowersScripts(const Scene: TCastleSceneCore);
procedure DetachcgeparticleflowersScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime, CastleRenderOptions;

type
  TScript48Script = class
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
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_a: TSFFloat; const AField_b: TSFFloat; const AField_c: TSFFloat; const AField_d: TSFFloat; const AField_tdelta: TSFFloat; const AField_pdelta: TSFFloat);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript48Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
    procedure Animate_flowers(const fraction: Single; const eventTime: Single; const Time: TX3DTime);
  end;

  TcgeparticleflowersScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group14: TGroupNode;
  WorldInfo15: TWorldInfoNode;
  NavigationInfo16: TNavigationInfoNode;
  Viewpoint17: TViewpointNode;
  Background18: TBackgroundNode;
  Transform19: TTransformNode;
  ParticleSystem20: TParticleSystemNode;
  BoundedPhysicsModel21: TBoundedPhysicsModelNode;
  Sphere22: TSphereNode;
  ExplosionEmitter23: TExplosionEmitterNode;
  Sphere24: TSphereNode;
  Appearance25: TAppearanceNode;
  Material26: TMaterialNode;
  ComposedCubeMapTexture27: TComposedCubeMapTextureNode;
  ImageTexture28: TImageTextureNode;
  ImageTexture29: TImageTextureNode;
  ImageTexture30: TImageTextureNode;
  ImageTexture31: TImageTextureNode;
  ImageTexture32: TImageTextureNode;
  ImageTexture33: TImageTextureNode;
  ComposedShader34: TComposedShaderNode;
  FieldVal35: TSFInt32;
  FieldVal36: TSFVec3f;
  FieldVal37: TSFFloat;
  FieldVal38: TSFFloat;
  FieldVal39: TSFFloat;
  FieldVal40: TSFFloat;
  FieldVal41: TSFFloat;
  FieldVal42: TSFFloat;
  FieldVal43: TSFFloat;
  FieldVal44: TSFFloat;
  FieldVal45: TSFFloat;
  ShaderPart46: TShaderPartNode;
  ShaderPart47: TShaderPartNode;
  Script48: TScriptNode;
  FieldVal49: TSFVec3f;
  FieldVal50: TSFVec3f;
  FieldVal51: TX3DEvent;
  FieldVal52: TSFFloat;
  FieldVal53: TSFFloat;
  FieldVal54: TSFFloat;
  FieldVal55: TSFFloat;
  FieldVal56: TSFFloat;
  FieldVal57: TSFFloat;
  CompiledScript48List: array of TScript48Script;
  TimeSensor58: TTimeSensorNode;

constructor TScript48Script.Create(const AHandlerPrefix: String; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_a: TSFFloat; const AField_b: TSFFloat; const AField_c: TSFFloat; const AField_d: TSFFloat; const AField_tdelta: TSFFloat; const AField_pdelta: TSFFloat);
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
  FField_translation := AField_translation;
  if AField_translation <> nil then Ftranslation := AField_translation.Value;
  FField_velocity := AField_velocity;
  if AField_velocity <> nil then Fvelocity := AField_velocity.Value;
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
end;

class function TScript48Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript48Script;
begin
  Result := TScript48Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('a') as TSFFloat, AScriptNode.FieldOrEvent('b') as TSFFloat, AScriptNode.FieldOrEvent('c') as TSFFloat, AScriptNode.FieldOrEvent('d') as TSFFloat, AScriptNode.FieldOrEvent('tdelta') as TSFFloat, AScriptNode.FieldOrEvent('pdelta') as TSFFloat);
end;

destructor TScript48Script.Destroy;
begin
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_a);
  FreeAndNil(FBack_b);
  FreeAndNil(FBack_c);
  FreeAndNil(FBack_d);
  FreeAndNil(FBack_tdelta);
  FreeAndNil(FBack_pdelta);
  inherited Destroy;
end;

procedure TScript48Script.Detach;
begin
end;

procedure TScript48Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript48Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript48Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Ftranslation := Vector3(0, 0, 0);
  FDirty_translation := True;
  Fvelocity := Vector3(Random - 0.5, Random - 0.5, Random - 0.5);
  FDirty_velocity := True;
  FlushOutputs(Time);
end;

procedure TScript48Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
var
  j: Integer;
begin
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

procedure TScript48Script.Animate_flowers(const fraction: Single; const eventTime: Single; const Time: TX3DTime);
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
  Ftdelta := Ftdelta + 0.05;
  FDirty_tdelta := True;
  Fpdelta := Fpdelta + 0.05;
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

procedure TcgeparticleflowersScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script48_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript48List);
    Prefix := 'Script48_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript48List, Idx + 1);
    CompiledScript48List[Idx] := TScript48Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitcgeparticleflowersPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Components['EnvironmentalEffects'] := 3;
X3D0.Components['Shaders'] := 1;
X3D0.Components['CubeMapTexturing'] := 1;
X3D0.Components['Texturing'] := 1;
X3D0.Components['Rendering'] := 1;
X3D0.Components['Grouping'] := 3;
X3D0.Components['Core'] := 1;
X3D0.Components['ParticleSystems'] := 3;
X3D0.Meta['title'] := 'particleflowers.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'A flower proto with configurable shaders';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/particleflowers.x3d';
Group14 := TGroupNode.Create;
WorldInfo15 := TWorldInfoNode.Create;
WorldInfo15.Title := 'particleflowers.x3d';
Group14.FdChildren.Add(WorldInfo15);
NavigationInfo16 := TNavigationInfoNode.Create;
NavigationInfo16.SetType(['ANY', 'EXAMINE', 'FLY', 'LOOKAT']);
Group14.FdChildren.Add(NavigationInfo16);
Viewpoint17 := TViewpointNode.Create;
Viewpoint17.Description := 'Tour Views';
Viewpoint17.Position := Vector3(0, 0, 12);
Group14.FdChildren.Add(Viewpoint17);
Background18 := TBackgroundNode.Create;
Background18.SetBackUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_back.png']);
Background18.SetBottomUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
Background18.SetFrontUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_front.png']);
Background18.SetLeftUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_left.png']);
Background18.SetRightUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_right.png']);
Background18.SetTopUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_top.png']);
Group14.FdChildren.Add(Background18);
Transform19 := TTransformNode.Create;
ParticleSystem20 := TParticleSystemNode.Create;
ParticleSystem20.MaxParticles := 20;
ParticleSystem20.FdGeometryType.Value := 'GEOMETRY';
BoundedPhysicsModel21 := TBoundedPhysicsModelNode.Create;
end;

procedure InitcgeparticleflowersPart1;
begin
Sphere22 := TSphereNode.Create;
Sphere22.Radius := 100;
BoundedPhysicsModel21.Geometry := Sphere22;
ParticleSystem20.FdPhysics.Add(BoundedPhysicsModel21);
ExplosionEmitter23 := TExplosionEmitterNode.Create;
ExplosionEmitter23.Speed := 2;
ExplosionEmitter23.Variation := 0.75;
ParticleSystem20.Emitter := ExplosionEmitter23;
Sphere24 := TSphereNode.Create;
ParticleSystem20.Geometry := Sphere24;
Appearance25 := TAppearanceNode.Create;
Material26 := TMaterialNode.Create;
Material26.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material26.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance25.Material := Material26;
ComposedCubeMapTexture27 := TComposedCubeMapTextureNode.Create;
ComposedCubeMapTexture27.X3DName := 'texture';
ImageTexture28 := TImageTextureNode.Create;
ImageTexture28.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_back.png']);
ComposedCubeMapTexture27.Back := ImageTexture28;
ImageTexture29 := TImageTextureNode.Create;
ImageTexture29.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
ComposedCubeMapTexture27.Bottom := ImageTexture29;
ImageTexture30 := TImageTextureNode.Create;
ImageTexture30.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_from.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_front.png']);
ComposedCubeMapTexture27.Front := ImageTexture30;
ImageTexture31 := TImageTextureNode.Create;
ImageTexture31.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_left.png']);
ComposedCubeMapTexture27.Left := ImageTexture31;
ImageTexture32 := TImageTextureNode.Create;
ImageTexture32.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_right.png']);
ComposedCubeMapTexture27.Right := ImageTexture32;
ImageTexture33 := TImageTextureNode.Create;
ImageTexture33.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_top.png']);
ComposedCubeMapTexture27.Top := ImageTexture33;
Appearance25.Texture := ComposedCubeMapTexture27;
ComposedShader34 := TComposedShaderNode.Create;
ComposedShader34.X3DName := 'shader';
ComposedShader34.Language := slGLSL;
FieldVal35 := TSFInt32.Create(ComposedShader34, True, 'cube', 0);
end;

procedure InitcgeparticleflowersPart2;
begin
ComposedShader34.AddCustomFieldOrEvent(FieldVal35);
FieldVal36 := TSFVec3f.Create(ComposedShader34, False, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
ComposedShader34.AddCustomFieldOrEvent(FieldVal36);
FieldVal37 := TSFFloat.Create(ComposedShader34, True, 'bias', 0.5);
ComposedShader34.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFFloat.Create(ComposedShader34, True, 'scale', 0.5);
ComposedShader34.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TSFFloat.Create(ComposedShader34, True, 'power', 2);
ComposedShader34.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TSFFloat.Create(ComposedShader34, True, 'a', 2);
ComposedShader34.AddCustomFieldOrEvent(FieldVal40);
FieldVal41 := TSFFloat.Create(ComposedShader34, True, 'b', 1);
ComposedShader34.AddCustomFieldOrEvent(FieldVal41);
FieldVal42 := TSFFloat.Create(ComposedShader34, True, 'c', 5);
ComposedShader34.AddCustomFieldOrEvent(FieldVal42);
FieldVal43 := TSFFloat.Create(ComposedShader34, True, 'd', 5);
ComposedShader34.AddCustomFieldOrEvent(FieldVal43);
FieldVal44 := TSFFloat.Create(ComposedShader34, True, 'tdelta', 0);
ComposedShader34.AddCustomFieldOrEvent(FieldVal44);
FieldVal45 := TSFFloat.Create(ComposedShader34, True, 'pdelta', 0);
ComposedShader34.AddCustomFieldOrEvent(FieldVal45);
{ <field name='cube' type='SFNode' accessType="initializeOnly"> }
{ <ComposedCubeMapTexture USE="texture"></ComposedCubeMapTexture> }
{ </field> }
ShaderPart46 := TShaderPartNode.Create;
ShaderPart46.SetUrl(['https://coderextreme.net/X3DJSONLD/src/main/shaders/castle.vs']);
ShaderPart46.ShaderType := stVertex;
ComposedShader34.FdParts.Add(ShaderPart46);
ShaderPart47 := TShaderPartNode.Create;
ShaderPart47.ShaderType := stFragment;
ShaderPart47.SetUrl(['https://coderextreme.net/X3DJSONLD/src/main/shaders/castle.fs']);
ComposedShader34.FdParts.Add(ShaderPart47);
Appearance25.FdShaders.Add(ComposedShader34);
ParticleSystem20.Appearance := Appearance25;
Transform19.FdChildren.Add(ParticleSystem20);
Script48 := TScriptNode.Create;
Script48.X3DName := 'Animate';
FieldVal49 := TSFVec3f.Create(Script48, True, 'translation', Vector3(0, 0, 0));
Script48.AddCustomFieldOrEvent(FieldVal49);
FieldVal50 := TSFVec3f.Create(Script48, True, 'velocity', Vector3(0, 0, 0));
end;

procedure InitcgeparticleflowersPart3;
begin
Script48.AddCustomFieldOrEvent(FieldVal50);
FieldVal51 := TSFFloat.CreateEvent(Script48, 'set_fraction', True);
Script48.AddCustomFieldOrEvent(FieldVal51);
FieldVal52 := TSFFloat.Create(Script48, True, 'a', 0.5);
Script48.AddCustomFieldOrEvent(FieldVal52);
FieldVal53 := TSFFloat.Create(Script48, True, 'b', 0.5);
Script48.AddCustomFieldOrEvent(FieldVal53);
FieldVal54 := TSFFloat.Create(Script48, True, 'c', 3);
Script48.AddCustomFieldOrEvent(FieldVal54);
FieldVal55 := TSFFloat.Create(Script48, True, 'd', 3);
Script48.AddCustomFieldOrEvent(FieldVal55);
FieldVal56 := TSFFloat.Create(Script48, True, 'tdelta', 0.5);
Script48.AddCustomFieldOrEvent(FieldVal56);
FieldVal57 := TSFFloat.Create(Script48, True, 'pdelta', 0.5);
Script48.AddCustomFieldOrEvent(FieldVal57);
Script48.SetUrl(['compiled:' + LineEnding +
  'initialize=Script48_initialize' + LineEnding +
  'set_fraction=Script48_set_fraction']);
Transform19.FdChildren.Add(Script48);
TimeSensor58 := TTimeSensorNode.Create;
TimeSensor58.X3DName := 'TourTime';
TimeSensor58.CycleInterval := 5;
TimeSensor58.Loop := True;
Transform19.FdChildren.Add(TimeSensor58);
{ ROUTE TourTime.fraction_changed TO Animate.set_fraction }
Transform19.AddRoute(TimeSensor58.EventFraction_changed, FieldVal51);
{ ROUTE Animate.a TO shader.a }
Transform19.AddRoute(FieldVal52.EventOut, FieldVal40.EventIn);
{ ROUTE Animate.b TO shader.b }
Transform19.AddRoute(FieldVal53.EventOut, FieldVal41.EventIn);
{ ROUTE Animate.c TO shader.c }
Transform19.AddRoute(FieldVal54.EventOut, FieldVal42.EventIn);
{ ROUTE Animate.d TO shader.d }
Transform19.AddRoute(FieldVal55.EventOut, FieldVal43.EventIn);
{ ROUTE Animate.pdelta TO shader.pdelta }
Transform19.AddRoute(FieldVal57.EventOut, FieldVal45.EventIn);
{ ROUTE Animate.tdelta TO shader.tdelta }
Transform19.AddRoute(FieldVal56.EventOut, FieldVal44.EventIn);
Group14.FdChildren.Add(Transform19);
X3D0.AddChildren([Group14]);
end;

function Createcgeparticleflowers: TX3DRootNode;
var
  Binder: TcgeparticleflowersScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript48List) do
    FreeAndNil(CompiledScript48List[_i]);
  SetLength(CompiledScript48List, 0);
  InitcgeparticleflowersPart0;
  InitcgeparticleflowersPart1;
  InitcgeparticleflowersPart2;
  InitcgeparticleflowersPart3;
  Binder := TcgeparticleflowersScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegistercgeparticleflowersScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript48List) do
  begin
    CompiledScript48List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript48List[_i].Initialized) then
      CompiledScript48List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure DetachcgeparticleflowersScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript48List) do
  begin
    CompiledScript48List[_i].Detach;
    FreeAndNil(CompiledScript48List[_i]);
  end;
  SetLength(CompiledScript48List, 0);
end;

finalization
  while Length(CompiledScript48List) > 0 do
  begin
    FreeAndNil(CompiledScript48List[High(CompiledScript48List)]);
    SetLength(CompiledScript48List, Length(CompiledScript48List) - 1);
  end;
end.
