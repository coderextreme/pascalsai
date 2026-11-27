unit mirror;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createmirror: TX3DRootNode;
procedure RegistermirrorScripts(const Scene: TCastleSceneCore);
procedure DetachmirrorScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime, CastleRenderOptions;

type
  TScript52Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    FfrontUrls: array of String;
    FbackUrls: array of String;
    FleftUrls: array of String;
    FrightUrls: array of String;
    FtopUrls: array of String;
    FbottomUrls: array of String;
    Ffront_changed: array of String;
    FEvent_front_changed: TX3DEvent;
    FBack_front_changed: TMFString;
    FDirty_front_changed: Boolean;
    Fback_changed: array of String;
    FEvent_back_changed: TX3DEvent;
    FBack_back_changed: TMFString;
    FDirty_back_changed: Boolean;
    Fleft_changed: array of String;
    FEvent_left_changed: TX3DEvent;
    FBack_left_changed: TMFString;
    FDirty_left_changed: Boolean;
    Fright_changed: array of String;
    FEvent_right_changed: TX3DEvent;
    FBack_right_changed: TMFString;
    FDirty_right_changed: Boolean;
    Ftop_changed: array of String;
    FEvent_top_changed: TX3DEvent;
    FBack_top_changed: TMFString;
    FDirty_top_changed: Boolean;
    Fbottom_changed: array of String;
    FEvent_bottom_changed: TX3DEvent;
    FBack_bottom_changed: TMFString;
    FDirty_bottom_changed: Boolean;
    Fold: Int32;
    FField_old: TSFInt32;
    FBack_old: TSFInt32;
    FDirty_old: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_frontUrls: TMFString; const AField_backUrls: TMFString; const AField_leftUrls: TMFString; const AField_rightUrls: TMFString; const AField_topUrls: TMFString; const AField_bottomUrls: TMFString; const AEvent_front_changed: TX3DEvent; const AEvent_back_changed: TX3DEvent; const AEvent_left_changed: TX3DEvent; const AEvent_right_changed: TX3DEvent; const AEvent_top_changed: TX3DEvent; const AEvent_bottom_changed: TX3DEvent; const AField_old: TSFInt32);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript52Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TmirrorScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group15: TGroupNode;
  Viewpoint16: TViewpointNode;
  TextureBackground17: TTextureBackgroundNode;
  ImageTexture18: TImageTextureNode;
  ImageTexture19: TImageTextureNode;
  ImageTexture20: TImageTextureNode;
  ImageTexture21: TImageTextureNode;
  ImageTexture22: TImageTextureNode;
  ImageTexture23: TImageTextureNode;
  Transform24: TTransformNode;
  Shape25: TShapeNode;
  Appearance26: TAppearanceNode;
  Material27: TMaterialNode;
  ComposedCubeMapTexture28: TComposedCubeMapTextureNode;
  ImageTexture29: TImageTextureNode;
  ImageTexture30: TImageTextureNode;
  ImageTexture31: TImageTextureNode;
  ImageTexture32: TImageTextureNode;
  ImageTexture33: TImageTextureNode;
  ImageTexture34: TImageTextureNode;
  ComposedShader35: TComposedShaderNode;
  FieldVal36: TSFVec3f;
  FieldVal37: TSFInt32;
  FieldVal38: TSFFloat;
  FieldVal39: TSFFloat;
  FieldVal40: TSFFloat;
  ShaderPart41: TShaderPartNode;
  ShaderPart42: TShaderPartNode;
  ComposedShader43: TComposedShaderNode;
  FieldVal44: TSFVec3f;
  FieldVal45: TSFInt32;
  FieldVal46: TSFFloat;
  FieldVal47: TSFFloat;
  FieldVal48: TSFFloat;
  ShaderPart49: TShaderPartNode;
  ShaderPart50: TShaderPartNode;
  Sphere51: TSphereNode;
  Script52: TScriptNode;
  FieldVal53: TMFString;
  FieldVal54: TMFString;
  FieldVal55: TMFString;
  FieldVal56: TMFString;
  FieldVal57: TMFString;
  FieldVal58: TMFString;
  FieldVal59: TX3DEvent;
  FieldVal60: TX3DEvent;
  FieldVal61: TX3DEvent;
  FieldVal62: TX3DEvent;
  FieldVal63: TX3DEvent;
  FieldVal64: TX3DEvent;
  FieldVal65: TX3DEvent;
  FieldVal66: TSFInt32;
  CompiledScript52List: array of TScript52Script;
  TimeSensor67: TTimeSensorNode;

constructor TScript52Script.Create(const AHandlerPrefix: String; const AField_frontUrls: TMFString; const AField_backUrls: TMFString; const AField_leftUrls: TMFString; const AField_rightUrls: TMFString; const AField_topUrls: TMFString; const AField_bottomUrls: TMFString; const AEvent_front_changed: TX3DEvent; const AEvent_back_changed: TX3DEvent; const AEvent_left_changed: TX3DEvent; const AEvent_right_changed: TX3DEvent; const AEvent_top_changed: TX3DEvent; const AEvent_bottom_changed: TX3DEvent; const AField_old: TSFInt32);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  FfrontUrls := nil;
  FbackUrls := nil;
  FleftUrls := nil;
  FrightUrls := nil;
  FtopUrls := nil;
  FbottomUrls := nil;
  Ffront_changed := nil;
  FEvent_front_changed := nil;
  FBack_front_changed := TMFString.CreateUndefined(nil, False, 'front_changed');
  FDirty_front_changed := False;
  Fback_changed := nil;
  FEvent_back_changed := nil;
  FBack_back_changed := TMFString.CreateUndefined(nil, False, 'back_changed');
  FDirty_back_changed := False;
  Fleft_changed := nil;
  FEvent_left_changed := nil;
  FBack_left_changed := TMFString.CreateUndefined(nil, False, 'left_changed');
  FDirty_left_changed := False;
  Fright_changed := nil;
  FEvent_right_changed := nil;
  FBack_right_changed := TMFString.CreateUndefined(nil, False, 'right_changed');
  FDirty_right_changed := False;
  Ftop_changed := nil;
  FEvent_top_changed := nil;
  FBack_top_changed := TMFString.CreateUndefined(nil, False, 'top_changed');
  FDirty_top_changed := False;
  Fbottom_changed := nil;
  FEvent_bottom_changed := nil;
  FBack_bottom_changed := TMFString.CreateUndefined(nil, False, 'bottom_changed');
  FDirty_bottom_changed := False;
  Fold := 0;
  FField_old := nil;
  FBack_old := TSFInt32.Create(nil, False, 'old', 0);
  FDirty_old := False;
  if AField_frontUrls <> nil then
  begin
    SetLength(FfrontUrls, AField_frontUrls.Items.Count);
    for _i := 0 to AField_frontUrls.Items.Count - 1 do
      FfrontUrls[_i] := AField_frontUrls.Items[_i];
  end;
  if AField_backUrls <> nil then
  begin
    SetLength(FbackUrls, AField_backUrls.Items.Count);
    for _i := 0 to AField_backUrls.Items.Count - 1 do
      FbackUrls[_i] := AField_backUrls.Items[_i];
  end;
  if AField_leftUrls <> nil then
  begin
    SetLength(FleftUrls, AField_leftUrls.Items.Count);
    for _i := 0 to AField_leftUrls.Items.Count - 1 do
      FleftUrls[_i] := AField_leftUrls.Items[_i];
  end;
  if AField_rightUrls <> nil then
  begin
    SetLength(FrightUrls, AField_rightUrls.Items.Count);
    for _i := 0 to AField_rightUrls.Items.Count - 1 do
      FrightUrls[_i] := AField_rightUrls.Items[_i];
  end;
  if AField_topUrls <> nil then
  begin
    SetLength(FtopUrls, AField_topUrls.Items.Count);
    for _i := 0 to AField_topUrls.Items.Count - 1 do
      FtopUrls[_i] := AField_topUrls.Items[_i];
  end;
  if AField_bottomUrls <> nil then
  begin
    SetLength(FbottomUrls, AField_bottomUrls.Items.Count);
    for _i := 0 to AField_bottomUrls.Items.Count - 1 do
      FbottomUrls[_i] := AField_bottomUrls.Items[_i];
  end;
  FEvent_front_changed := AEvent_front_changed;
  FEvent_back_changed := AEvent_back_changed;
  FEvent_left_changed := AEvent_left_changed;
  FEvent_right_changed := AEvent_right_changed;
  FEvent_top_changed := AEvent_top_changed;
  FEvent_bottom_changed := AEvent_bottom_changed;
  FField_old := AField_old;
  if AField_old <> nil then Fold := AField_old.Value;
end;

class function TScript52Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript52Script;
begin
  Result := TScript52Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('frontUrls') as TMFString, AScriptNode.FieldOrEvent('backUrls') as TMFString, AScriptNode.FieldOrEvent('leftUrls') as TMFString, AScriptNode.FieldOrEvent('rightUrls') as TMFString, AScriptNode.FieldOrEvent('topUrls') as TMFString, AScriptNode.FieldOrEvent('bottomUrls') as TMFString, AScriptNode.AnyEvent('front_changed'), AScriptNode.AnyEvent('back_changed'), AScriptNode.AnyEvent('left_changed'), AScriptNode.AnyEvent('right_changed'), AScriptNode.AnyEvent('top_changed'), AScriptNode.AnyEvent('bottom_changed'), AScriptNode.FieldOrEvent('old') as TSFInt32);
end;

destructor TScript52Script.Destroy;
begin
  FreeAndNil(FBack_front_changed);
  FreeAndNil(FBack_back_changed);
  FreeAndNil(FBack_left_changed);
  FreeAndNil(FBack_right_changed);
  FreeAndNil(FBack_top_changed);
  FreeAndNil(FBack_bottom_changed);
  FreeAndNil(FBack_old);
  inherited Destroy;
end;

procedure TScript52Script.Detach;
begin
end;

procedure TScript52Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_front_changed then
  begin
    FDirty_front_changed := False;
    if FEvent_front_changed <> nil then
    begin
      FBack_front_changed.Items.Clear;
      for _i := 0 to High(Ffront_changed) do
        FBack_front_changed.Items.Add(Ffront_changed[_i]);
      FEvent_front_changed.Send(FBack_front_changed, Time);
    end;
  end;
  if FDirty_back_changed then
  begin
    FDirty_back_changed := False;
    if FEvent_back_changed <> nil then
    begin
      FBack_back_changed.Items.Clear;
      for _i := 0 to High(Fback_changed) do
        FBack_back_changed.Items.Add(Fback_changed[_i]);
      FEvent_back_changed.Send(FBack_back_changed, Time);
    end;
  end;
  if FDirty_left_changed then
  begin
    FDirty_left_changed := False;
    if FEvent_left_changed <> nil then
    begin
      FBack_left_changed.Items.Clear;
      for _i := 0 to High(Fleft_changed) do
        FBack_left_changed.Items.Add(Fleft_changed[_i]);
      FEvent_left_changed.Send(FBack_left_changed, Time);
    end;
  end;
  if FDirty_right_changed then
  begin
    FDirty_right_changed := False;
    if FEvent_right_changed <> nil then
    begin
      FBack_right_changed.Items.Clear;
      for _i := 0 to High(Fright_changed) do
        FBack_right_changed.Items.Add(Fright_changed[_i]);
      FEvent_right_changed.Send(FBack_right_changed, Time);
    end;
  end;
  if FDirty_top_changed then
  begin
    FDirty_top_changed := False;
    if FEvent_top_changed <> nil then
    begin
      FBack_top_changed.Items.Clear;
      for _i := 0 to High(Ftop_changed) do
        FBack_top_changed.Items.Add(Ftop_changed[_i]);
      FEvent_top_changed.Send(FBack_top_changed, Time);
    end;
  end;
  if FDirty_bottom_changed then
  begin
    FDirty_bottom_changed := False;
    if FEvent_bottom_changed <> nil then
    begin
      FBack_bottom_changed.Items.Clear;
      for _i := 0 to High(Fbottom_changed) do
        FBack_bottom_changed.Items.Add(Fbottom_changed[_i]);
      FEvent_bottom_changed.Send(FBack_bottom_changed, Time);
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
end;

procedure TScript52Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript52Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
var
  side: Integer;
begin
  side := Floor((Value as TSFFloat).Value * Length(FfrontUrls));
  if side > Length(FfrontUrls) - 1 then
  begin
    side := 0;
  end;
  if side <> Fold then
  begin
    WriteLn(FloatToStr((Value as TSFFloat).Value) + ' ' + IntToStr(side));
    Fold := side;
    FDirty_old := True;
    if (0) >= Length(Ffront_changed) then SetLength(Ffront_changed, (0) + 1);
    Ffront_changed[0] := FfrontUrls[side];
    FDirty_front_changed := True;
    if (0) >= Length(Fback_changed) then SetLength(Fback_changed, (0) + 1);
    Fback_changed[0] := FbackUrls[side];
    FDirty_back_changed := True;
    if (0) >= Length(Fleft_changed) then SetLength(Fleft_changed, (0) + 1);
    Fleft_changed[0] := FleftUrls[side];
    FDirty_left_changed := True;
    if (0) >= Length(Fright_changed) then SetLength(Fright_changed, (0) + 1);
    Fright_changed[0] := FrightUrls[side];
    FDirty_right_changed := True;
    if (0) >= Length(Ftop_changed) then SetLength(Ftop_changed, (0) + 1);
    Ftop_changed[0] := FtopUrls[side];
    FDirty_top_changed := True;
    if (0) >= Length(Fbottom_changed) then SetLength(Fbottom_changed, (0) + 1);
    Fbottom_changed[0] := FbottomUrls[side];
    FDirty_bottom_changed := True;
  end;
  FlushOutputs(Time);
end;

procedure TmirrorScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script52_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript52List);
    Prefix := 'Script52_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript52List, Idx + 1);
    CompiledScript52List[Idx] := TScript52Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitmirrorPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
{ <component name='Shape' level='4'></component> }
X3D0.Components['Scripting'] := 1;
X3D0.Components['EnvironmentalEffects'] := 3;
X3D0.Components['Shaders'] := 1;
X3D0.Components['CubeMapTexturing'] := 1;
X3D0.Components['Texturing'] := 1;
X3D0.Components['Rendering'] := 1;
X3D0.Components['Grouping'] := 3;
X3D0.Components['Core'] := 1;
X3D0.Meta['title'] := 'mirror.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['generator'] := 'manual';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/mirror.x3d';
X3D0.Meta['description'] := 'sphere with alternating backgrounds';
Group15 := TGroupNode.Create;
Viewpoint16 := TViewpointNode.Create;
Viewpoint16.Position := Vector3(0, 5, 100);
Viewpoint16.Description := 'Switch background and images texture';
Group15.FdChildren.Add(Viewpoint16);
TextureBackground17 := TTextureBackgroundNode.Create;
ImageTexture18 := TImageTextureNode.Create;
ImageTexture18.X3DName := 'leftBackgroundTexture';
ImageTexture18.SetUrl(['../resources/images/all_probes/beach_cross/beach_left.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_left.png']);
TextureBackground17.LeftTexture := ImageTexture18;
ImageTexture19 := TImageTextureNode.Create;
ImageTexture19.X3DName := 'rightBackgroundTexture';
ImageTexture19.SetUrl(['../resources/images/all_probes/beach_cross/beach_right.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_right.png']);
TextureBackground17.RightTexture := ImageTexture19;
ImageTexture20 := TImageTextureNode.Create;
ImageTexture20.X3DName := 'frontBackgroundTexture';
ImageTexture20.SetUrl(['../resources/images/all_probes/beach_cross/beach_front.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_front.png']);
TextureBackground17.FrontTexture := ImageTexture20;
ImageTexture21 := TImageTextureNode.Create;
ImageTexture21.X3DName := 'backBackgroundTexture';
ImageTexture21.SetUrl(['../resources/images/all_probes/beach_cross/beach_back.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_back.png']);
TextureBackground17.BackTexture := ImageTexture21;
end;

procedure InitmirrorPart1;
begin
ImageTexture22 := TImageTextureNode.Create;
ImageTexture22.X3DName := 'topBackgroundTexture';
ImageTexture22.SetUrl(['../resources/images/all_probes/beach_cross/beach_top.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_top.png']);
TextureBackground17.TopTexture := ImageTexture22;
ImageTexture23 := TImageTextureNode.Create;
ImageTexture23.X3DName := 'bottomBackgroundTexture';
ImageTexture23.SetUrl(['../resources/images/all_probes/beach_cross/beach_bottom.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_bottom.png']);
TextureBackground17.BottomTexture := ImageTexture23;
Group15.FdChildren.Add(TextureBackground17);
Transform24 := TTransformNode.Create;
Shape25 := TShapeNode.Create;
Appearance26 := TAppearanceNode.Create;
Material27 := TMaterialNode.Create;
Material27.DiffuseColor := Vector3(0.7, 0.7, 0.7);
Material27.SpecularColor := Vector3(0.5, 0.5, 0.5);
Appearance26.Material := Material27;
ComposedCubeMapTexture28 := TComposedCubeMapTextureNode.Create;
ImageTexture29 := TImageTextureNode.Create;
ImageTexture29.X3DName := 'backShader';
ImageTexture29.SetUrl(['../resources/images/all_probes/beach_cross/beach_back.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_back.png']);
ComposedCubeMapTexture28.Back := ImageTexture29;
ImageTexture30 := TImageTextureNode.Create;
ImageTexture30.X3DName := 'bottomShader';
ImageTexture30.SetUrl(['../resources/images/all_probes/beach_cross/beach_bottom.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_bottom.png']);
ComposedCubeMapTexture28.Bottom := ImageTexture30;
ImageTexture31 := TImageTextureNode.Create;
ImageTexture31.X3DName := 'frontShader';
ImageTexture31.SetUrl(['../resources/images/all_probes/beach_cross/beach_front.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_front.png']);
ComposedCubeMapTexture28.Front := ImageTexture31;
ImageTexture32 := TImageTextureNode.Create;
ImageTexture32.X3DName := 'leftShader';
ImageTexture32.SetUrl(['../resources/images/all_probes/beach_cross/beach_left.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_left.png']);
ComposedCubeMapTexture28.Left := ImageTexture32;
ImageTexture33 := TImageTextureNode.Create;
ImageTexture33.X3DName := 'rightShader';
ImageTexture33.SetUrl(['../resources/images/all_probes/beach_cross/beach_right.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_right.png']);
ComposedCubeMapTexture28.Right := ImageTexture33;
ImageTexture34 := TImageTextureNode.Create;
ImageTexture34.X3DName := 'topShader';
ImageTexture34.SetUrl(['../resources/images/all_probes/beach_cross/beach_top.png', 'https://coderextrme.net/X3DJSONLD/src/main/resources/images/all_probes/beach_cross/beach_top.png']);
end;

procedure InitmirrorPart2;
begin
ComposedCubeMapTexture28.Top := ImageTexture34;
Appearance26.Texture := ComposedCubeMapTexture28;
ComposedShader35 := TComposedShaderNode.Create;
ComposedShader35.X3DName := 'x3dom';
ComposedShader35.Language := slGLSL;
FieldVal36 := TSFVec3f.Create(ComposedShader35, True, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
ComposedShader35.AddCustomFieldOrEvent(FieldVal36);
FieldVal37 := TSFInt32.Create(ComposedShader35, True, 'cube', 0);
ComposedShader35.AddCustomFieldOrEvent(FieldVal37);
FieldVal38 := TSFFloat.Create(ComposedShader35, True, 'bias', 0.5);
ComposedShader35.AddCustomFieldOrEvent(FieldVal38);
FieldVal39 := TSFFloat.Create(ComposedShader35, True, 'scale', 0.5);
ComposedShader35.AddCustomFieldOrEvent(FieldVal39);
FieldVal40 := TSFFloat.Create(ComposedShader35, True, 'power', 2);
ComposedShader35.AddCustomFieldOrEvent(FieldVal40);
ShaderPart41 := TShaderPartNode.Create;
ShaderPart41.SetUrl(['../shaders/x3dom.vs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/x3dom.vs']);
ShaderPart41.ShaderType := stVertex;
ComposedShader35.FdParts.Add(ShaderPart41);
ShaderPart42 := TShaderPartNode.Create;
ShaderPart42.SetUrl(['../shaders/mix.fs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/mix.fs']);
ShaderPart42.ShaderType := stFragment;
ComposedShader35.FdParts.Add(ShaderPart42);
Appearance26.FdShaders.Add(ComposedShader35);
ComposedShader43 := TComposedShaderNode.Create;
ComposedShader43.X3DName := 'x_ite';
ComposedShader43.Language := slGLSL;
{ http://hypertextbook.com/facts/2005/JustinChe.shtml }
FieldVal44 := TSFVec3f.Create(ComposedShader43, True, 'chromaticDispertion', Vector3(0.98, 1, 1.033));
ComposedShader43.AddCustomFieldOrEvent(FieldVal44);
FieldVal45 := TSFInt32.Create(ComposedShader43, True, 'cube', 0);
ComposedShader43.AddCustomFieldOrEvent(FieldVal45);
FieldVal46 := TSFFloat.Create(ComposedShader43, True, 'bias', 0.5);
ComposedShader43.AddCustomFieldOrEvent(FieldVal46);
FieldVal47 := TSFFloat.Create(ComposedShader43, True, 'scale', 0.5);
ComposedShader43.AddCustomFieldOrEvent(FieldVal47);
FieldVal48 := TSFFloat.Create(ComposedShader43, True, 'power', 2);
ComposedShader43.AddCustomFieldOrEvent(FieldVal48);
ShaderPart49 := TShaderPartNode.Create;
ShaderPart49.SetUrl(['../shaders/x_ite.vs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/x_ite.vs']);
end;

procedure InitmirrorPart3;
begin
ShaderPart49.ShaderType := stVertex;
ComposedShader43.FdParts.Add(ShaderPart49);
ShaderPart50 := TShaderPartNode.Create;
ShaderPart50.SetUrl(['../shaders/x_itemix.fs', 'https://coderextreme.net/X3DJSONLD/src/main/shaders/x_itemix.fs']);
ShaderPart50.ShaderType := stFragment;
ComposedShader43.FdParts.Add(ShaderPart50);
Appearance26.FdShaders.Add(ComposedShader43);
Shape25.Appearance := Appearance26;
Sphere51 := TSphereNode.Create;
Sphere51.Radius := 30;
Shape25.Geometry := Sphere51;
Transform24.FdChildren.Add(Shape25);
Script52 := TScriptNode.Create;
Script52.X3DName := 'UrlSelector';
Script52.DirectOutput := True;
FieldVal53 := TMFString.Create(Script52, False, 'frontUrls', ['../resources/images/all_probes/beach_cross/beach_front.png', '../resources/images/all_probes/building_cross/building_front.png', '../resources/images/all_probes/campus_cross/campus_front.png', '../resources/images/all_probes/galileo_cross/galileo_front.png', '../resources/images/all_probes/grace_cross/grace_front.png', '../resources/images/all_probes/kitchen_cross/kitchen_front.png', '../resources/images/all_probes/rnl_cross/rnl_front.png', '../resources/images/all_probes/stpeters_cross/stpeters_front.png', '../resources/images/all_probes/uffizi_cross/uffizi_front.png']);
Script52.AddCustomFieldOrEvent(FieldVal53);
FieldVal54 := TMFString.Create(Script52, False, 'backUrls', ['../resources/images/all_probes/beach_cross/beach_back.png', '../resources/images/all_probes/building_cross/building_back.png', '../resources/images/all_probes/campus_cross/campus_back.png', '../resources/images/all_probes/galileo_cross/galileo_back.png', '../resources/images/all_probes/grace_cross/grace_back.png', '../resources/images/all_probes/kitchen_cross/kitchen_back.png', '../resources/images/all_probes/rnl_cross/rnl_back.png', '../resources/images/all_probes/stpeters_cross/stpeters_back.png', '../resources/images/all_probes/uffizi_cross/uffizi_back.png']);
Script52.AddCustomFieldOrEvent(FieldVal54);
FieldVal55 := TMFString.Create(Script52, False, 'leftUrls', ['../resources/images/all_probes/beach_cross/beach_left.png', '../resources/images/all_probes/building_cross/building_left.png', '../resources/images/all_probes/campus_cross/campus_left.png', '../resources/images/all_probes/galileo_cross/galileo_left.png', '../resources/images/all_probes/grace_cross/grace_left.png', '../resources/images/all_probes/kitchen_cross/kitchen_left.png', '../resources/images/all_probes/rnl_cross/rnl_left.png', '../resources/images/all_probes/stpeters_cross/stpeters_left.png', '../resources/images/all_probes/uffizi_cross/uffizi_left.png']);
Script52.AddCustomFieldOrEvent(FieldVal55);
FieldVal56 := TMFString.Create(Script52, False, 'rightUrls', ['../resources/images/all_probes/beach_cross/beach_right.png', '../resources/images/all_probes/building_cross/building_right.png', '../resources/images/all_probes/campus_cross/campus_right.png', '../resources/images/all_probes/galileo_cross/galileo_right.png', '../resources/images/all_probes/grace_cross/grace_right.png', '../resources/images/all_probes/kitchen_cross/kitchen_right.png', '../resources/images/all_probes/rnl_cross/rnl_right.png', '../resources/images/all_probes/stpeters_cross/stpeters_right.png', '../resources/images/all_probes/uffizi_cross/uffizi_right.png']);
Script52.AddCustomFieldOrEvent(FieldVal56);
FieldVal57 := TMFString.Create(Script52, False, 'topUrls', ['../resources/images/all_probes/beach_cross/beach_top.png', '../resources/images/all_probes/building_cross/building_top.png', '../resources/images/all_probes/campus_cross/campus_top.png', '../resources/images/all_probes/galileo_cross/galileo_top.png', '../resources/images/all_probes/grace_cross/grace_top.png', '../resources/images/all_probes/kitchen_cross/kitchen_top.png', '../resources/images/all_probes/rnl_cross/rnl_top.png', '../resources/images/all_probes/stpeters_cross/stpeters_top.png', '../resources/images/all_probes/uffizi_cross/uffizi_top.png']);
Script52.AddCustomFieldOrEvent(FieldVal57);
FieldVal58 := TMFString.Create(Script52, False, 'bottomUrls', ['../resources/images/all_probes/beach_cross/beach_bottom.png', '../resources/images/all_probes/building_cross/building_bottom.png', '../resources/images/all_probes/campus_cross/campus_bottom.png', '../resources/images/all_probes/galileo_cross/galileo_bottom.png', '../resources/images/all_probes/grace_cross/grace_bottom.png', '../resources/images/all_probes/kitchen_cross/kitchen_bottom.png', '../resources/images/all_probes/rnl_cross/rnl_bottom.png', '../resources/images/all_probes/stpeters_cross/stpeters_bottom.png', '../resources/images/all_probes/uffizi_cross/uffizi_bottom.png']);
Script52.AddCustomFieldOrEvent(FieldVal58);
FieldVal59 := TMFString.CreateEvent(Script52, 'front_changed', False);
Script52.AddCustomFieldOrEvent(FieldVal59);
FieldVal60 := TMFString.CreateEvent(Script52, 'back_changed', False);
Script52.AddCustomFieldOrEvent(FieldVal60);
FieldVal61 := TMFString.CreateEvent(Script52, 'left_changed', False);
Script52.AddCustomFieldOrEvent(FieldVal61);
FieldVal62 := TMFString.CreateEvent(Script52, 'right_changed', False);
Script52.AddCustomFieldOrEvent(FieldVal62);
FieldVal63 := TMFString.CreateEvent(Script52, 'top_changed', False);
Script52.AddCustomFieldOrEvent(FieldVal63);
FieldVal64 := TMFString.CreateEvent(Script52, 'bottom_changed', False);
Script52.AddCustomFieldOrEvent(FieldVal64);
FieldVal65 := TSFFloat.CreateEvent(Script52, 'set_fraction', True);
end;

procedure InitmirrorPart4;
begin
Script52.AddCustomFieldOrEvent(FieldVal65);
FieldVal66 := TSFInt32.Create(Script52, True, 'old', -1);
Script52.AddCustomFieldOrEvent(FieldVal66);
Script52.SetUrl(['compiled:' + LineEnding +
  'set_fraction=Script52_set_fraction']);
Transform24.FdChildren.Add(Script52);
TimeSensor67 := TTimeSensorNode.Create;
TimeSensor67.X3DName := 'Clock';
TimeSensor67.CycleInterval := 45;
TimeSensor67.Loop := True;
Transform24.FdChildren.Add(TimeSensor67);
{ ROUTE Clock.fraction_changed TO UrlSelector.set_fraction }
Transform24.AddRoute(TimeSensor67.EventFraction_changed, FieldVal65);
{ ROUTE UrlSelector.front_changed TO frontBackgroundTexture.url }
Transform24.AddRoute(FieldVal59, ImageTexture20.FdUrl.EventIn);
{ ROUTE UrlSelector.back_changed TO backBackgroundTexture.url }
Transform24.AddRoute(FieldVal60, ImageTexture21.FdUrl.EventIn);
{ ROUTE UrlSelector.left_changed TO leftBackgroundTexture.url }
Transform24.AddRoute(FieldVal61, ImageTexture18.FdUrl.EventIn);
{ ROUTE UrlSelector.right_changed TO rightBackgroundTexture.url }
Transform24.AddRoute(FieldVal62, ImageTexture19.FdUrl.EventIn);
{ ROUTE UrlSelector.top_changed TO topBackgroundTexture.url }
Transform24.AddRoute(FieldVal63, ImageTexture22.FdUrl.EventIn);
{ ROUTE UrlSelector.bottom_changed TO bottomBackgroundTexture.url }
Transform24.AddRoute(FieldVal64, ImageTexture23.FdUrl.EventIn);
{ ROUTE UrlSelector.front_changed TO frontShader.url }
Transform24.AddRoute(FieldVal59, ImageTexture31.FdUrl.EventIn);
{ ROUTE UrlSelector.back_changed TO backShader.url }
Transform24.AddRoute(FieldVal60, ImageTexture29.FdUrl.EventIn);
{ ROUTE UrlSelector.left_changed TO leftShader.url }
Transform24.AddRoute(FieldVal61, ImageTexture32.FdUrl.EventIn);
{ ROUTE UrlSelector.right_changed TO rightShader.url }
Transform24.AddRoute(FieldVal62, ImageTexture33.FdUrl.EventIn);
{ ROUTE UrlSelector.top_changed TO topShader.url }
Transform24.AddRoute(FieldVal63, ImageTexture34.FdUrl.EventIn);
{ ROUTE UrlSelector.bottom_changed TO bottomShader.url }
Transform24.AddRoute(FieldVal64, ImageTexture30.FdUrl.EventIn);
Group15.FdChildren.Add(Transform24);
X3D0.AddChildren([Group15]);
end;

function Createmirror: TX3DRootNode;
var
  Binder: TmirrorScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript52List) do
    FreeAndNil(CompiledScript52List[_i]);
  SetLength(CompiledScript52List, 0);
  InitmirrorPart0;
  InitmirrorPart1;
  InitmirrorPart2;
  InitmirrorPart3;
  InitmirrorPart4;
  Binder := TmirrorScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegistermirrorScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript52List) do
  begin
    CompiledScript52List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachmirrorScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript52List) do
  begin
    CompiledScript52List[_i].Detach;
    FreeAndNil(CompiledScript52List[_i]);
  end;
  SetLength(CompiledScript52List, 0);
end;

finalization
  while Length(CompiledScript52List) > 0 do
  begin
    FreeAndNil(CompiledScript52List[High(CompiledScript52List)]);
    SetLength(CompiledScript52List, Length(CompiledScript52List) - 1);
  end;
end.
