unit flowers;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, HAnimDisplacerSupport, CastleSceneCore;

function Createflowers: TX3DRootNode;
procedure RegisterflowersScripts(const Scene: TCastleSceneCore);
procedure DetachflowersScripts;

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

  TflowersScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group16: TGroupNode;
  NavigationInfo17: TNavigationInfoNode;
  Background18: TBackgroundNode;
  ProtoDeclare19: TX3DPrototype;
  Transform21: TTransformNode;
  Shape22: TShapeNode;
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
  FieldVal33: TSFNode;
  FieldVal35: TSFVec3f;
  FieldVal36: TX3DEvent;
  FieldVal37: TX3DEvent;
  FieldVal38: TX3DEvent;
  FieldVal39: TX3DEvent;
  FieldVal40: TX3DEvent;
  FieldVal41: TX3DEvent;
  FieldVal42: TX3DEvent;
  FieldVal43: TX3DEvent;
  FieldVal44: TX3DEvent;
  ShaderPart45: TShaderPartNode;
  ShaderPart46: TShaderPartNode;
  Sphere47: TSphereNode;
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
  ProtoInstance67: TX3DPrototypeNode;
  ProtoInstance68: TX3DPrototypeNode;
  ProtoInstance69: TX3DPrototypeNode;

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
  Ftdelta := Ftdelta + 0.5;
  FDirty_tdelta := True;
  Fpdelta := Fpdelta + 0.5;
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

procedure TflowersScriptBinder.BindNode(Node: TX3DNode);
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

procedure InitflowersPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
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
X3D0.Meta['title'] := 'flowers.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := '5 or more prismatic flowers';
X3D0.Meta['generator'] := 'X3D-Edit, https://savage.nps.edu/X3D-Edit';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/flowers.x3d';
Group16 := TGroupNode.Create;
NavigationInfo17 := TNavigationInfoNode.Create;
Group16.FdChildren.Add(NavigationInfo17);
{ Images courtesy of Paul Debevec's Light Probe Image Gallery }
Background18 := TBackgroundNode.Create;
Background18.SetBackUrl(['../resources/images/all_probes/stpeters_cross/stpeters_back.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_back.png']);
Background18.SetBottomUrl(['../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_bottom.png']);
Background18.SetFrontUrl(['../resources/images/all_probes/stpeters_cross/stpeters_front.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_front.png']);
Background18.SetLeftUrl(['../resources/images/all_probes/stpeters_cross/stpeters_left.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_left.png']);
Background18.SetRightUrl(['../resources/images/all_probes/stpeters_cross/stpeters_right.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_right.png']);
Background18.SetTopUrl(['../resources/images/all_probes/stpeters_cross/stpeters_top.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/all_probes/stpeters_cross/stpeters_top.png']);
Group16.FdChildren.Add(Background18);
ProtoDeclare19 := CreateEmptyPrototype('flower');
ProtoDeclare19.X3DName := 'flower';
Transform21 := TTransformNode.Create;
Transform21.X3DName := 'animate_transform';
Shape22 := TShapeNode.Create;
Appearance23 := TAppearanceNode.Create;
Material24 := TMaterialNode.Create;
Material24.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material24.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance23.Material := Material24;
end;

procedure InitflowersPart1;
begin
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
{ <ComposedShader DEF='x3dom' language="GLSL"> }
{ <field name='cube' type='SFInt32' accessType='inputOutput' value='0'></field> }
{ <field name='cube' type='SFNode' accessType="inputOutput"> }
{ <ComposedCubeMapTexture USE="texture"/> }
{ </field> }
{ <field name='chromaticDispertion' accessType='initializeOnly' type='SFVec3f' value='0.98 1.0 1.033'></field> }
{ <field name='bias' type='SFFloat' accessType='inputOutput' value='0.5'></field> }
{ <field name='scale' type='SFFloat' accessType='inputOutput' value='0.5'></field> }
{ <field name='power' type='SFFloat' accessType='inputOutput' value='2'></field> }
{ <field name='a' type='SFFloat' accessType='inputOutput' value='10'></field> }
{ <field name='b' type='SFFloat' accessType='inputOutput' value='1'></field> }
{ <field name='c' type='SFFloat' accessType='inputOutput' value='20'></field> }
{ <field name='d' type='SFFloat' accessType='inputOutput' value='20'></field> }
{ <field name='tdelta' type='SFFloat' accessType='inputOutput' value='0'></field> }
{ <field name='pdelta' type='SFFloat' accessType='inputOutput' value='0'></field> }
{ <ShaderPart url='"https://coderextreme.net/X3DJSONLD/src/main/shaders/x3dom_flowers_chromatic.vs" "https://coderextreme.net/X3DJSONLD/src/main/shaders/x3dom_flowers_chromatic.vs"'></ShaderPart> }
{ <ShaderPart url='"https://coderextreme.net/X3DJSONLD/src/main/shaders/common.fs" "https://coderextreme.net/X3DJSONLD/src/main/shaders/common.fs"' type='FRAGMENT'></ShaderPart> }
{ </ComposedShader> }
ComposedShader32 := TComposedShaderNode.Create;
end;

procedure InitflowersPart2;
begin
ComposedShader32.X3DName := 'x_ite';
ComposedShader32.Language := slGLSL;
FieldVal33 := TSFNode.CreateUndefined(ComposedShader32, True, 'cube');
ComposedShader32.AddCustomFieldOrEvent(FieldVal33);
FieldVal33.Value := ComposedCubeMapTexture25;
FieldVal35 := TSFVec3f.Create(ComposedShader32, False, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
ComposedShader32.AddCustomFieldOrEvent(FieldVal35);
FieldVal36 := TSFFloat.CreateEvent(ComposedShader32, 'bias', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal36);
FieldVal37 := TSFFloat.CreateEvent(ComposedShader32, 'scale', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFFloat.CreateEvent(ComposedShader32, 'power', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TSFFloat.CreateEvent(ComposedShader32, 'a', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TSFFloat.CreateEvent(ComposedShader32, 'b', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal40);
FieldVal41 := TSFFloat.CreateEvent(ComposedShader32, 'c', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal41);
FieldVal42 := TSFFloat.CreateEvent(ComposedShader32, 'd', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal42);
FieldVal43 := TSFFloat.CreateEvent(ComposedShader32, 'tdelta', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal43);
FieldVal44 := TSFFloat.CreateEvent(ComposedShader32, 'pdelta', True);
ComposedShader32.AddCustomFieldOrEvent(FieldVal44);
ShaderPart45 := TShaderPartNode.Create;
ShaderPart45.SetUrl(['https://coderextreme.net/X3DJSONLD/src/main/shaders/x_ite_flowers_chromatic.vs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/x_ite_flowers_chromatic.vs']);
ShaderPart45.ShaderType := stVertex;
ComposedShader32.FdParts.Add(ShaderPart45);
ShaderPart46 := TShaderPartNode.Create;
ShaderPart46.SetUrl(['https://coderextreme.net/X3DJSONLD/src/main/shaders/x_ite.fs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/x_ite.fs']);
ShaderPart46.ShaderType := stFragment;
ComposedShader32.FdParts.Add(ShaderPart46);
Appearance23.FdShaders.Add(ComposedShader32);
Shape22.Appearance := Appearance23;
Sphere47 := TSphereNode.Create;
Shape22.Geometry := Sphere47;
Transform21.FdChildren.Add(Shape22);
ProtoDeclare19.Node.AddChildren([Transform21]);
Script48 := TScriptNode.Create;
end;

procedure InitflowersPart3;
begin
Script48.X3DName := 'Animate';
FieldVal49 := TSFVec3f.Create(Script48, True, 'translation', Vector3(0, 0, 0));
Script48.AddCustomFieldOrEvent(FieldVal49);
FieldVal50 := TSFVec3f.Create(Script48, True, 'velocity', Vector3(0, 0, 0));
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
ProtoDeclare19.Node.AddChildren([Script48]);
TimeSensor58 := TTimeSensorNode.Create;
TimeSensor58.X3DName := 'TourTime';
TimeSensor58.CycleInterval := 5;
TimeSensor58.Loop := True;
ProtoDeclare19.Node.AddChildren([TimeSensor58]);
{ ROUTE TourTime.fraction_changed TO Animate.set_fraction }
ProtoDeclare19.Node.AddRoute(TimeSensor58.EventFraction_changed, FieldVal51);
{ ROUTE Animate.translation_changed TO animate_transform.set_translation }
ProtoDeclare19.Node.AddRoute(FieldVal49.EventOut, Transform21.FdTranslation.EventIn);
{ ROUTE Animate.a TO x_ite.a }
ProtoDeclare19.Node.AddRoute(FieldVal52.EventOut, FieldVal39);
{ ROUTE Animate.b TO x_ite.b }
ProtoDeclare19.Node.AddRoute(FieldVal53.EventOut, FieldVal40);
{ ROUTE Animate.c TO x_ite.c }
ProtoDeclare19.Node.AddRoute(FieldVal54.EventOut, FieldVal41);
{ ROUTE Animate.d TO x_ite.d }
ProtoDeclare19.Node.AddRoute(FieldVal55.EventOut, FieldVal42);
{ ROUTE Animate.pdelta TO x_ite.pdelta }
ProtoDeclare19.Node.AddRoute(FieldVal57.EventOut, FieldVal44);
end;

procedure InitflowersPart4;
begin
{ ROUTE Animate.tdelta TO x_ite.tdelta }
ProtoDeclare19.Node.AddRoute(FieldVal56.EventOut, FieldVal43);
{ <ROUTE fromNode='Animate' fromField='a' toNode='x3dom' toField='a'/> }
{ <ROUTE fromNode='Animate' fromField='b' toNode='x3dom' toField='b'/> }
{ <ROUTE fromNode='Animate' fromField='c' toNode='x3dom' toField='c'/> }
{ <ROUTE fromNode='Animate' fromField='d' toNode='x3dom' toField='d'/> }
{ <ROUTE fromNode='Animate' fromField='pdelta' toNode='x3dom' toField='pdelta'/> }
{ <ROUTE fromNode='Animate' fromField='tdelta' toNode='x3dom' toField='tdelta'/> }
X3D0.AddPrototype(ProtoDeclare19);
ProtoInstance67 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare19);
Group16.FdChildren.Add(ProtoInstance67.Instantiate);
ProtoInstance68 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare19);
Group16.FdChildren.Add(ProtoInstance68.Instantiate);
ProtoInstance69 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare19);
Group16.FdChildren.Add(ProtoInstance69.Instantiate);
X3D0.AddChildren([Group16]);
end;

function Createflowers: TX3DRootNode;
var
  Binder: TflowersScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript48List) do
    FreeAndNil(CompiledScript48List[_i]);
  SetLength(CompiledScript48List, 0);
  InitflowersPart0;
  InitflowersPart1;
  InitflowersPart2;
  InitflowersPart3;
  InitflowersPart4;
  Binder := TflowersScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterflowersScripts(const Scene: TCastleSceneCore);
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

procedure DetachflowersScripts;
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
