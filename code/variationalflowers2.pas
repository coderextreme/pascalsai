unit variationalflowers2;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createvariationalflowers2: TX3DRootNode;
procedure Registervariationalflowers2Scripts(const Scene: TCastleSceneCore);
procedure Detachvariationalflowers2Scripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime, CastleRenderOptions;

type
  TScript43Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fvalues: array of Single;
    FField_values: TMFFloat;
    FBack_values: TMFFloat;
    FDirty_values: Boolean;
    Fvariations: array of Single;
    FField_variations: TMFFloat;
    FBack_variations: TMFFloat;
    FDirty_variations: Boolean;
    Flastframe: Single;
    FField_lastframe: TSFFloat;
    FBack_lastframe: TSFFloat;
    FDirty_lastframe: Boolean;
    Fupdaterate: Single;
    FField_updaterate: TSFFloat;
    FBack_updaterate: TSFFloat;
    FDirty_updaterate: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_values: TMFFloat; const AField_variations: TMFFloat; const AField_lastframe: TSFFloat; const AField_updaterate: TSFFloat);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript43Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  Tvariationalflowers2ScriptBinder = class
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
  VariationPhysicsModel21: TVariationPhysicsModelNode;
  ExplosionEmitter22: TExplosionEmitterNode;
  Sphere23: TSphereNode;
  Appearance24: TAppearanceNode;
  Material25: TMaterialNode;
  ComposedCubeMapTexture26: TComposedCubeMapTextureNode;
  ImageTexture27: TImageTextureNode;
  ImageTexture28: TImageTextureNode;
  ImageTexture29: TImageTextureNode;
  ImageTexture30: TImageTextureNode;
  ImageTexture31: TImageTextureNode;
  ImageTexture32: TImageTextureNode;
  ComposedShader33: TComposedShaderNode;
  FieldVal34: TSFVec3f;
  FieldVal35: TSFNode;
  FieldVal37: TSFFloat;
  FieldVal38: TSFFloat;
  FieldVal39: TSFFloat;
  FieldVal40: TMFFloat;
  ShaderPart41: TShaderPartNode;
  ShaderPart42: TShaderPartNode;
  Script43: TScriptNode;
  FieldVal44: TX3DEvent;
  FieldVal45: TMFFloat;
  FieldVal46: TMFFloat;
  FieldVal47: TSFFloat;
  FieldVal48: TSFFloat;
  CompiledScript43List: array of TScript43Script;
  TimeSensor49: TTimeSensorNode;

constructor TScript43Script.Create(const AHandlerPrefix: String; const AField_values: TMFFloat; const AField_variations: TMFFloat; const AField_lastframe: TSFFloat; const AField_updaterate: TSFFloat);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fvalues := nil;
  FField_values := nil;
  FBack_values := TMFFloat.CreateUndefined(nil, False, 'values');
  FDirty_values := False;
  Fvariations := nil;
  FField_variations := nil;
  FBack_variations := TMFFloat.CreateUndefined(nil, False, 'variations');
  FDirty_variations := False;
  Flastframe := 0.0;
  FField_lastframe := nil;
  FBack_lastframe := TSFFloat.Create(nil, False, 'lastframe', 0.0);
  FDirty_lastframe := False;
  Fupdaterate := 0.0;
  FField_updaterate := nil;
  FBack_updaterate := TSFFloat.Create(nil, False, 'updaterate', 0.0);
  FDirty_updaterate := False;
  FField_values := AField_values;
  if AField_values <> nil then
  begin
    SetLength(Fvalues, AField_values.Items.Count);
    for _i := 0 to AField_values.Items.Count - 1 do
      Fvalues[_i] := AField_values.Items[_i];
  end;
  FField_variations := AField_variations;
  if AField_variations <> nil then
  begin
    SetLength(Fvariations, AField_variations.Items.Count);
    for _i := 0 to AField_variations.Items.Count - 1 do
      Fvariations[_i] := AField_variations.Items[_i];
  end;
  FField_lastframe := AField_lastframe;
  if AField_lastframe <> nil then Flastframe := AField_lastframe.Value;
  FField_updaterate := AField_updaterate;
  if AField_updaterate <> nil then Fupdaterate := AField_updaterate.Value;
end;

class function TScript43Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript43Script;
begin
  Result := TScript43Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('values') as TMFFloat, AScriptNode.FieldOrEvent('variations') as TMFFloat, AScriptNode.FieldOrEvent('lastframe') as TSFFloat, AScriptNode.FieldOrEvent('updaterate') as TSFFloat);
end;

destructor TScript43Script.Destroy;
begin
  FreeAndNil(FBack_values);
  FreeAndNil(FBack_variations);
  FreeAndNil(FBack_lastframe);
  FreeAndNil(FBack_updaterate);
  inherited Destroy;
end;

procedure TScript43Script.Detach;
begin
end;

procedure TScript43Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_values then
  begin
    FDirty_values := False;
    if FField_values <> nil then
    begin
      FField_values.Items.Clear;
      FBack_values.Items.Clear;
      for _i := 0 to High(Fvalues) do
      begin
        FField_values.Items.Add(Fvalues[_i]);
        FBack_values.Items.Add(Fvalues[_i]);
      end;
      if (FField_values.ParentNode is TX3DNode) and (TX3DNode(FField_values.ParentNode).Scene <> nil) then
        FField_values.EventOut.Send(FBack_values, TX3DNode(FField_values.ParentNode).Scene.NextEventTime)
      else
        FField_values.EventOut.Send(FBack_values, Time);
    end;
  end;
  if FDirty_variations then
  begin
    FDirty_variations := False;
    if FField_variations <> nil then
    begin
      FField_variations.Items.Clear;
      FBack_variations.Items.Clear;
      for _i := 0 to High(Fvariations) do
      begin
        FField_variations.Items.Add(Fvariations[_i]);
        FBack_variations.Items.Add(Fvariations[_i]);
      end;
      if (FField_variations.ParentNode is TX3DNode) and (TX3DNode(FField_variations.ParentNode).Scene <> nil) then
        FField_variations.EventOut.Send(FBack_variations, TX3DNode(FField_variations.ParentNode).Scene.NextEventTime)
      else
        FField_variations.EventOut.Send(FBack_variations, Time);
    end;
  end;
  if FDirty_lastframe then
  begin
    FDirty_lastframe := False;
    if FField_lastframe <> nil then
    begin
      FField_lastframe.Value := Flastframe;
      FBack_lastframe.Value := Flastframe;
      if (FField_lastframe.ParentNode is TX3DNode) and (TX3DNode(FField_lastframe.ParentNode).Scene <> nil) then
        FField_lastframe.EventOut.Send(FBack_lastframe, TX3DNode(FField_lastframe.ParentNode).Scene.NextEventTime)
      else
        FField_lastframe.EventOut.Send(FBack_lastframe, Time);
    end;
  end;
  if FDirty_updaterate then
  begin
    FDirty_updaterate := False;
    if FField_updaterate <> nil then
    begin
      FField_updaterate.Value := Fupdaterate;
      FBack_updaterate.Value := Fupdaterate;
      if (FField_updaterate.ParentNode is TX3DNode) and (TX3DNode(FField_updaterate.ParentNode).Scene <> nil) then
        FField_updaterate.EventOut.Send(FBack_updaterate, TX3DNode(FField_updaterate.ParentNode).Scene.NextEventTime)
      else
        FField_updaterate.EventOut.Send(FBack_updaterate, Time);
    end;
  end;
end;

procedure TScript43Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript43Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
var
  v: Integer;
begin
  if Flastframe + Fupdaterate < Time.Seconds then
  begin
    Flastframe := Time.Seconds;
    FDirty_lastframe := True;
    for v := 0 to High(Fvalues) do
    begin
      if (v) >= Length(Fvalues) then SetLength(Fvalues, (v) + 1);
      Fvalues[v] := Fvalues[v] + (2 * Random - 1) * Fvariations[v];
      FDirty_values := True;
    end;
  end;
  FlushOutputs(Time);
end;

procedure Tvariationalflowers2ScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script43_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript43List);
    Prefix := 'Script43_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript43List, Idx + 1);
    CompiledScript43List[Idx] := TScript43Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Initvariationalflowers2Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Full';
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
X3D0.Meta['title'] := 'variationalflowers.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'A flower particle system';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/variationalflowers.x3d';
Group14 := TGroupNode.Create;
WorldInfo15 := TWorldInfoNode.Create;
WorldInfo15.Title := 'variationalflowers.x3d';
Group14.FdChildren.Add(WorldInfo15);
NavigationInfo16 := TNavigationInfoNode.Create;
NavigationInfo16.SetType(['ANY', 'EXAMINE', 'FLY', 'LOOKAT']);
Group14.FdChildren.Add(NavigationInfo16);
Viewpoint17 := TViewpointNode.Create;
Viewpoint17.Description := 'Tour Views';
Viewpoint17.Position := Vector3(0, 0, 12);
Group14.FdChildren.Add(Viewpoint17);
Background18 := TBackgroundNode.Create;
Background18.SetBackUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png']);
Background18.SetBottomUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
Background18.SetFrontUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png']);
Background18.SetLeftUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png']);
Background18.SetRightUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png']);
Background18.SetTopUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png']);
Group14.FdChildren.Add(Background18);
Transform19 := TTransformNode.Create;
ParticleSystem20 := TParticleSystemNode.Create;
ParticleSystem20.MaxParticles := 20;
ParticleSystem20.FdGeometryType.Value := 'GEOMETRY';
{ * values - array of MFFloats to pass to ComposedShader }
end;

procedure Initvariationalflowers2Part1;
begin
{ * variations in values - array of MFFloats to pass to ComposedShader that varies values }
VariationPhysicsModel21 := TVariationPhysicsModelNode.Create;
VariationPhysicsModel21.Values := '2 2 5 5 0 0';
VariationPhysicsModel21.Variations := '0.2 0.1 0.3 0.3 0.01 0.01';
ParticleSystem20.FdPhysics.Add(VariationPhysicsModel21);
ExplosionEmitter22 := TExplosionEmitterNode.Create;
ExplosionEmitter22.Speed := 1;
ExplosionEmitter22.Variation := 0.75;
ParticleSystem20.Emitter := ExplosionEmitter22;
Sphere23 := TSphereNode.Create;
ParticleSystem20.Geometry := Sphere23;
Appearance24 := TAppearanceNode.Create;
Material25 := TMaterialNode.Create;
Material25.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material25.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance24.Material := Material25;
ComposedCubeMapTexture26 := TComposedCubeMapTextureNode.Create;
ComposedCubeMapTexture26.X3DName := 'texture';
ImageTexture27 := TImageTextureNode.Create;
ImageTexture27.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png']);
ComposedCubeMapTexture26.Back := ImageTexture27;
ImageTexture28 := TImageTextureNode.Create;
ImageTexture28.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
ComposedCubeMapTexture26.Bottom := ImageTexture28;
ImageTexture29 := TImageTextureNode.Create;
ImageTexture29.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png']);
ComposedCubeMapTexture26.Front := ImageTexture29;
ImageTexture30 := TImageTextureNode.Create;
ImageTexture30.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png']);
ComposedCubeMapTexture26.Left := ImageTexture30;
ImageTexture31 := TImageTextureNode.Create;
ImageTexture31.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png']);
ComposedCubeMapTexture26.Right := ImageTexture31;
ImageTexture32 := TImageTextureNode.Create;
ImageTexture32.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png']);
ComposedCubeMapTexture26.Top := ImageTexture32;
Appearance24.Texture := ComposedCubeMapTexture26;
ComposedShader33 := TComposedShaderNode.Create;
ComposedShader33.X3DName := 'x_ite';
ComposedShader33.Language := slGLSL;
end;

procedure Initvariationalflowers2Part2;
begin
FieldVal34 := TSFVec3f.Create(ComposedShader33, False, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
ComposedShader33.AddCustomFieldOrEvent(FieldVal34);
FieldVal35 := TSFNode.CreateUndefined(ComposedShader33, False, 'cube');
ComposedShader33.AddCustomFieldOrEvent(FieldVal35);
FieldVal35.Value := ComposedCubeMapTexture26;
FieldVal37 := TSFFloat.Create(ComposedShader33, False, 'bias', 0.5);
ComposedShader33.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFFloat.Create(ComposedShader33, False, 'scale', 0.5);
ComposedShader33.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TSFFloat.Create(ComposedShader33, False, 'power', 2);
ComposedShader33.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TMFFloat.Create(ComposedShader33, True, 'x3d_ParticleValues', [2, 1, 4, 4, 0, 0]);
ComposedShader33.AddCustomFieldOrEvent(FieldVal40);
ShaderPart41 := TShaderPartNode.Create;
ShaderPart41.SetUrl(['../shaders/x_ite_variations.vs']);
ShaderPart41.ShaderType := stVertex;
ComposedShader33.FdParts.Add(ShaderPart41);
ShaderPart42 := TShaderPartNode.Create;
ShaderPart42.SetUrl(['../shaders/commonnew.fs']);
ShaderPart42.ShaderType := stFragment;
ComposedShader33.FdParts.Add(ShaderPart42);
Appearance24.FdShaders.Add(ComposedShader33);
ParticleSystem20.Appearance := Appearance24;
Transform19.FdChildren.Add(ParticleSystem20);
Script43 := TScriptNode.Create;
Script43.X3DName := 'Animate';
FieldVal44 := TSFFloat.CreateEvent(Script43, 'set_fraction', True);
Script43.AddCustomFieldOrEvent(FieldVal44);
FieldVal45 := TMFFloat.Create(Script43, True, 'values', [2, 2, 5, 5, 0, 0]);
Script43.AddCustomFieldOrEvent(FieldVal45);
FieldVal46 := TMFFloat.Create(Script43, True, 'variations', [0.2, 0.1, 0.3, 0.3, 0.01, 0.01]);
Script43.AddCustomFieldOrEvent(FieldVal46);
FieldVal47 := TSFFloat.Create(Script43, True, 'lastframe', 0);
Script43.AddCustomFieldOrEvent(FieldVal47);
FieldVal48 := TSFFloat.Create(Script43, True, 'updaterate', 0.1);
Script43.AddCustomFieldOrEvent(FieldVal48);
Script43.SetUrl(['compiled:' + LineEnding +
  'set_fraction=Script43_set_fraction']);
Transform19.FdChildren.Add(Script43);
TimeSensor49 := TTimeSensorNode.Create;
TimeSensor49.X3DName := 'TourTime';
end;

procedure Initvariationalflowers2Part3;
begin
TimeSensor49.CycleInterval := 45;
TimeSensor49.Loop := True;
Transform19.FdChildren.Add(TimeSensor49);
{ ROUTE TourTime.fraction_changed TO Animate.set_fraction }
Transform19.AddRoute(TimeSensor49.EventFraction_changed, FieldVal44);
{ ROUTE Animate.values TO x_ite.x3d_ParticleValues }
Transform19.AddRoute(FieldVal45.EventOut, FieldVal40.EventIn);
Group14.FdChildren.Add(Transform19);
X3D0.AddChildren([Group14]);
end;

function Createvariationalflowers2: TX3DRootNode;
var
  Binder: Tvariationalflowers2ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript43List) do
    FreeAndNil(CompiledScript43List[_i]);
  SetLength(CompiledScript43List, 0);
  Initvariationalflowers2Part0;
  Initvariationalflowers2Part1;
  Initvariationalflowers2Part2;
  Initvariationalflowers2Part3;
  Binder := Tvariationalflowers2ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registervariationalflowers2Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript43List) do
  begin
    CompiledScript43List[_i].RegisterHandlers(Scene);
  end;
end;

procedure Detachvariationalflowers2Scripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript43List) do
  begin
    CompiledScript43List[_i].Detach;
    FreeAndNil(CompiledScript43List[_i]);
  end;
  SetLength(CompiledScript43List, 0);
end;

finalization
  while Length(CompiledScript43List) > 0 do
  begin
    FreeAndNil(CompiledScript43List[High(CompiledScript43List)]);
    SetLength(CompiledScript43List, Length(CompiledScript43List) - 1);
  end;
end.
