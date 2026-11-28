unit variationalflowers;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createvariationalflowers: TX3DRootNode;
procedure RegistervariationalflowersScripts(const Scene: TCastleSceneCore);
procedure DetachvariationalflowersScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime, CastleRenderOptions;

type
  TScript42Script_MFFloatArray = array of Single;
  TScript42Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    Fvalues: TScript42Script_MFFloatArray;
    FField_values: TMFFloat;
    FBack_values: TMFFloat;
    FDirty_values: Boolean;
    Fvariations: TScript42Script_MFFloatArray;
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript42Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TvariationalflowersScriptBinder = class
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
  ExplosionEmitter21: TExplosionEmitterNode;
  Sphere22: TSphereNode;
  Appearance23: TAppearanceNode;
  Material24: TMaterialNode;
  ComposedCubeMapTexture25: TComposedCubeMapTextureNode;
  ImageTexture26: TImageTextureNode;
  ImageTexture27: TImageTextureNode;
  ImageTexture28: TImageTextureNode;
  ImageTexture29: TImageTextureNode;
  ImageTexture30: TImageTextureNode;
  ImageTexture31: TImageTextureNode;
  ComposedShader32: TComposedShaderNode;
  FieldVal33: TSFVec3f;
  FieldVal34: TSFNode;
  FieldVal36: TSFFloat;
  FieldVal37: TSFFloat;
  FieldVal38: TSFFloat;
  FieldVal39: TMFFloat;
  ShaderPart40: TShaderPartNode;
  ShaderPart41: TShaderPartNode;
  Script42: TScriptNode;
  FieldVal43: TX3DEvent;
  FieldVal44: TMFFloat;
  FieldVal45: TMFFloat;
  FieldVal46: TSFFloat;
  FieldVal47: TSFFloat;
  CompiledScript42List: array of TScript42Script;
  TimeSensor48: TTimeSensorNode;

constructor TScript42Script.Create(const AHandlerPrefix: String; const AField_values: TMFFloat; const AField_variations: TMFFloat; const AField_lastframe: TSFFloat; const AField_updaterate: TSFFloat);
var
  _i: Integer;
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
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

class function TScript42Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript42Script;
begin
  Result := TScript42Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('values') as TMFFloat, AScriptNode.FieldOrEvent('variations') as TMFFloat, AScriptNode.FieldOrEvent('lastframe') as TSFFloat, AScriptNode.FieldOrEvent('updaterate') as TSFFloat);
end;

destructor TScript42Script.Destroy;
begin
  FreeAndNil(FBack_values);
  FreeAndNil(FBack_variations);
  FreeAndNil(FBack_lastframe);
  FreeAndNil(FBack_updaterate);
  inherited Destroy;
end;

procedure TScript42Script.Detach;
begin
end;

procedure TScript42Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript42Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript42Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
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

procedure TvariationalflowersScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script42_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript42List);
    Prefix := 'Script42_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript42List, Idx + 1);
    CompiledScript42List[Idx] := TScript42Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitvariationalflowersPart0;
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
ParticleSystem20.MaxParticles := 100;
ParticleSystem20.FdGeometryType.Value := 'GEOMETRY';
{ * values - array of MFFloats to pass to ComposedShader }
end;

procedure InitvariationalflowersPart1;
begin
{ * variations in values - array of MFFloats to pass to ComposedShader that varies values }
{ * lastFrame - last frame that was rendered (0 for default) }
{ * updateRate - update rate is amount of time between frames }
{ <VariationPhysicsModel values="2 2 5 5 0 0" varations="2 1 3 3 0.1 0.1" lastFrame='0' updateRate='0.1'> }
{ </VariationPhysicsModel> }
ExplosionEmitter21 := TExplosionEmitterNode.Create;
ExplosionEmitter21.Speed := 1;
ExplosionEmitter21.Variation := 0.75;
ParticleSystem20.Emitter := ExplosionEmitter21;
Sphere22 := TSphereNode.Create;
ParticleSystem20.Geometry := Sphere22;
Appearance23 := TAppearanceNode.Create;
Material24 := TMaterialNode.Create;
Material24.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material24.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance23.Material := Material24;
ComposedCubeMapTexture25 := TComposedCubeMapTextureNode.Create;
ComposedCubeMapTexture25.X3DName := 'texture';
ImageTexture26 := TImageTextureNode.Create;
ImageTexture26.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_back.png']);
ComposedCubeMapTexture25.Back := ImageTexture26;
ImageTexture27 := TImageTextureNode.Create;
ImageTexture27.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
ComposedCubeMapTexture25.Bottom := ImageTexture27;
ImageTexture28 := TImageTextureNode.Create;
ImageTexture28.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_front.png']);
ComposedCubeMapTexture25.Front := ImageTexture28;
ImageTexture29 := TImageTextureNode.Create;
ImageTexture29.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_left.png']);
ComposedCubeMapTexture25.Left := ImageTexture29;
ImageTexture30 := TImageTextureNode.Create;
ImageTexture30.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_right.png']);
ComposedCubeMapTexture25.Right := ImageTexture30;
ImageTexture31 := TImageTextureNode.Create;
ImageTexture31.SetUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_top.png']);
ComposedCubeMapTexture25.Top := ImageTexture31;
Appearance23.Texture := ComposedCubeMapTexture25;
{ <ComposedShader language='GLSL'> }
{ <field name='chromaticDispertion' accessType='inputOutput' type='SFVec3f' value='0.98 1 1.033'></field> }
{ <field name='cube' type='SFNode' accessType="inputOutput"> }
end;

procedure InitvariationalflowersPart2;
begin
{ <ComposedCubeMapTexture USE="texture"></ComposedCubeMapTexture> }
{ </field> }
{ <field name='bias' accessType='inputOutput' type='SFFloat' value='0.5'></field> }
{ <field name='scale' accessType='inputOutput' type='SFFloat' value='0.5'></field> }
{ <field name='power' accessType='inputOutput' type='SFFloat' value='2'></field> }
{ <ShaderPart url='"../shaders/freewrl.vs" "https://coderextreme.net/X3DJSONLD/src/main/shaders/freewrl.vs"'></ShaderPart> }
{ <ShaderPart url='"../shaders/freewrl.fs" "https://coderextreme.net/X3DJSONLD/src/main/shaders/freewrl.fs"' type='FRAGMENT'></ShaderPart> }
{ </ComposedShader> }
{ <ComposedShader DEF="shader" language="GLSL"> }
{ <field name='cube' type='SFInt32' accessType='inputOutput' value='0'></field> }
{ <field name='chromaticDispertion' accessType='initializeOnly' type='SFVec3f' value='0.98 1.0 1.033'></field> }
{ <field name='bias' type='SFFloat' accessType='inputOutput' value='0.5'></field> }
{ <field name='scale' type='SFFloat' accessType='inputOutput' value='0.5'></field> }
{ <field name='power' type='SFFloat' accessType='inputOutput' value='2'></field> }
{ <ShaderPart url='"../shaders/castle.vs" "https://coderextreme.net/X3DJSONLD/src/main/shaders/castle.vs"'/> }
{ <ShaderPart type='FRAGMENT' url='"../shaders/castle.fs" "https://coderextreme.net/X3DJSONLD/src/main/shaders/castle.fs"'/> }
{ </ComposedShader> }
ComposedShader32 := TComposedShaderNode.Create;
ComposedShader32.X3DName := 'x_ite';
ComposedShader32.Language := slGLSL;
FieldVal33 := TSFVec3f.Create(ComposedShader32, False, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
ComposedShader32.AddCustomFieldOrEvent(FieldVal33);
FieldVal34 := TSFNode.CreateUndefined(ComposedShader32, False, 'cube');
ComposedShader32.AddCustomFieldOrEvent(FieldVal34);
FieldVal34.Value := ComposedCubeMapTexture25;
FieldVal36 := TSFFloat.Create(ComposedShader32, False, 'bias', 0.5);
ComposedShader32.AddCustomFieldOrEvent(FieldVal36);
FieldVal37 := TSFFloat.Create(ComposedShader32, False, 'scale', 0.5);
ComposedShader32.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFFloat.Create(ComposedShader32, False, 'power', 2);
ComposedShader32.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TMFFloat.Create(ComposedShader32, True, 'x3d_ParticleValues', [2, 1, 4, 4, 0, 0]);
ComposedShader32.AddCustomFieldOrEvent(FieldVal39);
ShaderPart40 := TShaderPartNode.Create;
ShaderPart40.SetUrl(['../shaders/x_ite_variations.vs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/x_ite_variations.vs']);
ShaderPart40.ShaderType := stVertex;
ComposedShader32.FdParts.Add(ShaderPart40);
ShaderPart41 := TShaderPartNode.Create;
ShaderPart41.SetUrl(['../shaders/commonnew.fs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/commonnew.fs']);
ShaderPart41.ShaderType := stFragment;
end;

procedure InitvariationalflowersPart3;
begin
ComposedShader32.FdParts.Add(ShaderPart41);
Appearance23.FdShaders.Add(ComposedShader32);
ParticleSystem20.Appearance := Appearance23;
Transform19.FdChildren.Add(ParticleSystem20);
Script42 := TScriptNode.Create;
Script42.X3DName := 'Animate';
FieldVal43 := TSFFloat.CreateEvent(Script42, 'set_fraction', True);
Script42.AddCustomFieldOrEvent(FieldVal43);
FieldVal44 := TMFFloat.Create(Script42, True, 'values', [2, 2, 5, 5, 0, 0]);
Script42.AddCustomFieldOrEvent(FieldVal44);
FieldVal45 := TMFFloat.Create(Script42, True, 'variations', [0.2, 0.1, 0.3, 0.3, 0.01, 0.01]);
Script42.AddCustomFieldOrEvent(FieldVal45);
FieldVal46 := TSFFloat.Create(Script42, True, 'lastframe', 0);
Script42.AddCustomFieldOrEvent(FieldVal46);
FieldVal47 := TSFFloat.Create(Script42, True, 'updaterate', 0.1);
Script42.AddCustomFieldOrEvent(FieldVal47);
Script42.SetUrl(['compiled:' + LineEnding +
  'set_fraction=Script42_set_fraction']);
Transform19.FdChildren.Add(Script42);
TimeSensor48 := TTimeSensorNode.Create;
TimeSensor48.X3DName := 'TourTime';
TimeSensor48.CycleInterval := 45;
TimeSensor48.Loop := True;
Transform19.FdChildren.Add(TimeSensor48);
{ ROUTE TourTime.fraction_changed TO Animate.set_fraction }
Transform19.AddRoute(TimeSensor48.EventFraction_changed, FieldVal43);
{ ROUTE Animate.values TO x_ite.x3d_ParticleValues }
Transform19.AddRoute(FieldVal44.EventOut, FieldVal39.EventIn);
Group14.FdChildren.Add(Transform19);
X3D0.AddChildren([Group14]);
end;

function Createvariationalflowers: TX3DRootNode;
var
  Binder: TvariationalflowersScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript42List) do
    FreeAndNil(CompiledScript42List[_i]);
  SetLength(CompiledScript42List, 0);
  InitvariationalflowersPart0;
  InitvariationalflowersPart1;
  InitvariationalflowersPart2;
  InitvariationalflowersPart3;
  Binder := TvariationalflowersScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegistervariationalflowersScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript42List) do
  begin
    CompiledScript42List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachvariationalflowersScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript42List) do
  begin
    CompiledScript42List[_i].Detach;
    FreeAndNil(CompiledScript42List[_i]);
  end;
  SetLength(CompiledScript42List, 0);
end;

finalization
  while Length(CompiledScript42List) > 0 do
  begin
    FreeAndNil(CompiledScript42List[High(CompiledScript42List)]);
    SetLength(CompiledScript42List, Length(CompiledScript42List) - 1);
  end;
end.
