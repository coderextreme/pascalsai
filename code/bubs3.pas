unit bubs3;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createbubs3: TX3DRootNode;
procedure Registerbubs3Scripts(const Scene: TCastleSceneCore);
procedure Detachbubs3Scripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript16Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript16Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript31Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript31Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript46Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript46Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  TScript61Script = class
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
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript61Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure Set_fraction(Value: TX3DField; const Time: TX3DTime);
  end;

  Tbubs3ScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group7: TGroupNode;
  NavigationInfo8: TNavigationInfoNode;
  Viewpoint9: TViewpointNode;
  Background10: TBackgroundNode;
  Transform11: TTransformNode;
  Shape12: TShapeNode;
  Sphere13: TSphereNode;
  Appearance14: TAppearanceNode;
  Material15: TMaterialNode;
  Script16: TScriptNode;
  FieldVal17: TSFVec3f;
  FieldVal18: TSFVec3f;
  FieldVal19: TSFVec3f;
  FieldVal20: TSFVec3f;
  FieldVal21: TX3DEvent;
  CompiledScript16List: array of TScript16Script;
  TimeSensor22: TTimeSensorNode;
  Transform26: TTransformNode;
  Shape27: TShapeNode;
  Sphere28: TSphereNode;
  Appearance29: TAppearanceNode;
  Material30: TMaterialNode;
  Script31: TScriptNode;
  FieldVal32: TSFVec3f;
  FieldVal33: TSFVec3f;
  FieldVal34: TSFVec3f;
  FieldVal35: TSFVec3f;
  FieldVal36: TX3DEvent;
  CompiledScript31List: array of TScript31Script;
  TimeSensor37: TTimeSensorNode;
  Transform41: TTransformNode;
  Shape42: TShapeNode;
  Sphere43: TSphereNode;
  Appearance44: TAppearanceNode;
  Material45: TMaterialNode;
  Script46: TScriptNode;
  FieldVal47: TSFVec3f;
  FieldVal48: TSFVec3f;
  FieldVal49: TSFVec3f;
  FieldVal50: TSFVec3f;
  FieldVal51: TX3DEvent;
  CompiledScript46List: array of TScript46Script;
  TimeSensor52: TTimeSensorNode;
  Transform56: TTransformNode;
  Shape57: TShapeNode;
  Sphere58: TSphereNode;
  Appearance59: TAppearanceNode;
  Material60: TMaterialNode;
  Script61: TScriptNode;
  FieldVal62: TSFVec3f;
  FieldVal63: TSFVec3f;
  FieldVal64: TSFVec3f;
  FieldVal65: TSFVec3f;
  FieldVal66: TX3DEvent;
  CompiledScript61List: array of TScript61Script;
  TimeSensor67: TTimeSensorNode;

constructor TScript16Script.Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
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

class function TScript16Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript16Script;
begin
  Result := TScript16Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('scale') as TSFVec3f, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('scalvel') as TSFVec3f);
end;

destructor TScript16Script.Destroy;
begin
  FreeAndNil(FBack_scale);
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_scalvel);
  inherited Destroy;
end;

procedure TScript16Script.Detach;
begin
end;

procedure TScript16Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript16Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript16Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Fvelocity := Vector3(Random * 0.25 - 0.125, Random * 0.25 - 0.125, Random * 0.25 - 0.125);
  FDirty_velocity := True;
  Fscalvel := Vector3(Random * 0.4, Random * 0.4, Random * 0.4);
  FDirty_scalvel := True;
  FlushOutputs(Time);
end;

procedure TScript16Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
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

constructor TScript31Script.Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
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

class function TScript31Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript31Script;
begin
  Result := TScript31Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('scale') as TSFVec3f, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('scalvel') as TSFVec3f);
end;

destructor TScript31Script.Destroy;
begin
  FreeAndNil(FBack_scale);
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_scalvel);
  inherited Destroy;
end;

procedure TScript31Script.Detach;
begin
end;

procedure TScript31Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript31Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript31Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Fvelocity := Vector3(Random * 0.25 - 0.125, Random * 0.25 - 0.125, Random * 0.25 - 0.125);
  FDirty_velocity := True;
  Fscalvel := Vector3(Random * 0.4, Random * 0.4, Random * 0.4);
  FDirty_scalvel := True;
  FlushOutputs(Time);
end;

procedure TScript31Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
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

constructor TScript46Script.Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
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

class function TScript46Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript46Script;
begin
  Result := TScript46Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('scale') as TSFVec3f, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('scalvel') as TSFVec3f);
end;

destructor TScript46Script.Destroy;
begin
  FreeAndNil(FBack_scale);
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_scalvel);
  inherited Destroy;
end;

procedure TScript46Script.Detach;
begin
end;

procedure TScript46Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript46Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript46Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Fvelocity := Vector3(Random * 0.25 - 0.125, Random * 0.25 - 0.125, Random * 0.25 - 0.125);
  FDirty_velocity := True;
  Fscalvel := Vector3(Random * 0.4, Random * 0.4, Random * 0.4);
  FDirty_scalvel := True;
  FlushOutputs(Time);
end;

procedure TScript46Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
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

constructor TScript61Script.Create(const AHandlerPrefix: String; const AField_scale: TSFVec3f; const AField_translation: TSFVec3f; const AField_velocity: TSFVec3f; const AField_scalvel: TSFVec3f);
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

class function TScript61Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript61Script;
begin
  Result := TScript61Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('scale') as TSFVec3f, AScriptNode.FieldOrEvent('translation') as TSFVec3f, AScriptNode.FieldOrEvent('velocity') as TSFVec3f, AScriptNode.FieldOrEvent('scalvel') as TSFVec3f);
end;

destructor TScript61Script.Destroy;
begin
  FreeAndNil(FBack_scale);
  FreeAndNil(FBack_translation);
  FreeAndNil(FBack_velocity);
  FreeAndNil(FBack_scalvel);
  inherited Destroy;
end;

procedure TScript61Script.Detach;
begin
end;

procedure TScript61Script.FlushOutputs(const Time: TX3DTime);
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

procedure TScript61Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_fraction', {$ifdef FPC}@{$endif}Set_fraction);
end;

procedure TScript61Script.Initialize(Value: TX3DField; const Time: TX3DTime);
begin
  FInitialized := True;
  Fvelocity := Vector3(Random * 0.25 - 0.125, Random * 0.25 - 0.125, Random * 0.25 - 0.125);
  FDirty_velocity := True;
  Fscalvel := Vector3(Random * 0.4, Random * 0.4, Random * 0.4);
  FDirty_scalvel := True;
  FlushOutputs(Time);
end;

procedure TScript61Script.Set_fraction(Value: TX3DField; const Time: TX3DTime);
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

procedure Tbubs3ScriptBinder.BindNode(Node: TX3DNode);
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
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript16List, Idx + 1);
    CompiledScript16List[Idx] := TScript16Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script31_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript31List);
    Prefix := 'Script31_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript31List, Idx + 1);
    CompiledScript31List[Idx] := TScript31Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script46_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript46List);
    Prefix := 'Script46_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript46List, Idx + 1);
    CompiledScript46List[Idx] := TScript46Script.CreateForNode(S, Prefix);
    Exit;
  end;
  if Pos('=Script61_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript61List);
    Prefix := 'Script61_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'set_fraction=' + Prefix + 'set_fraction']);
    SetLength(CompiledScript61List, Idx + 1);
    CompiledScript61List[Idx] := TScript61Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure Initbubs3Part0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'bubs3.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'Tour around a prismatic sphere';
X3D0.Meta['generator'] := 'X3D-Edit, https://savage.nps.edu/X3D-Edit';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/bubs.x3d';
Group7 := TGroupNode.Create;
NavigationInfo8 := TNavigationInfoNode.Create;
NavigationInfo8.SetType(['EXAMINE']);
Group7.FdChildren.Add(NavigationInfo8);
Viewpoint9 := TViewpointNode.Create;
Viewpoint9.Position := Vector3(0, 0, 4);
Viewpoint9.Orientation := Vector4(1, 0, 0, 0);
Viewpoint9.Description := 'Bubbles in action';
Group7.FdChildren.Add(Viewpoint9);
Background10 := TBackgroundNode.Create;
Background10.SetBackUrl(['../resources/images/BK.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/BK.png']);
Background10.SetBottomUrl(['../resources/images/BT.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/BT.png']);
Background10.SetFrontUrl(['../resources/images/FR.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/FR.png']);
Background10.SetLeftUrl(['../resources/images/LF.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/LF.png']);
Background10.SetRightUrl(['../resources/images/RT.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/RT.png']);
Background10.SetTopUrl(['../resources/images/TP.png', 'https://coderextreme.net/X3DJSONLD/src/main/resources/images/TP.png']);
Group7.FdChildren.Add(Background10);
Transform11 := TTransformNode.Create;
Transform11.X3DName := 'DECLBubble_transformA';
Shape12 := TShapeNode.Create;
Sphere13 := TSphereNode.Create;
Sphere13.Radius := 0.25;
Shape12.Geometry := Sphere13;
Appearance14 := TAppearanceNode.Create;
Material15 := TMaterialNode.Create;
Material15.DiffuseColor := Vector3(1, 0, 0);
Material15.Transparency := 0.2;
Appearance14.Material := Material15;
Shape12.Appearance := Appearance14;
Transform11.FdChildren.Add(Shape12);
Script16 := TScriptNode.Create;
end;

procedure Initbubs3Part1;
begin
Script16.X3DName := 'DECLBubble_bubbleA_bounce';
FieldVal17 := TSFVec3f.Create(Script16, True, 'scale', Vector3(1, 1, 1));
Script16.AddCustomFieldOrEvent(FieldVal17);
FieldVal18 := TSFVec3f.Create(Script16, True, 'translation', Vector3(0, 0, 0));
Script16.AddCustomFieldOrEvent(FieldVal18);
FieldVal19 := TSFVec3f.Create(Script16, True, 'velocity', Vector3(0, 0, 0));
Script16.AddCustomFieldOrEvent(FieldVal19);
FieldVal20 := TSFVec3f.Create(Script16, True, 'scalvel', Vector3(0, 0, 0));
Script16.AddCustomFieldOrEvent(FieldVal20);
FieldVal21 := TSFFloat.CreateEvent(Script16, 'set_fraction', True);
Script16.AddCustomFieldOrEvent(FieldVal21);
Script16.SetUrl(['compiled:' + LineEnding +
  'initialize=Script16_initialize' + LineEnding +
  'set_fraction=Script16_set_fraction']);
Transform11.FdChildren.Add(Script16);
TimeSensor22 := TTimeSensorNode.Create;
TimeSensor22.X3DName := 'DECLBubble_bubbleA_bubbleClock';
TimeSensor22.CycleInterval := 10;
TimeSensor22.Loop := True;
Transform11.FdChildren.Add(TimeSensor22);
{ ROUTE DECLBubble_bubbleA_bounce.translation_changed TO DECLBubble_transformA.set_translation }
Transform11.AddRoute(FieldVal18.EventOut, Transform11.FdTranslation.EventIn);
{ ROUTE DECLBubble_bubbleA_bounce.scale_changed TO DECLBubble_transformA.set_scale }
Transform11.AddRoute(FieldVal17.EventOut, Transform11.FdScale.EventIn);
{ ROUTE DECLBubble_bubbleA_bubbleClock.fraction_changed TO DECLBubble_bubbleA_bounce.set_fraction }
Transform11.AddRoute(TimeSensor22.EventFraction_changed, FieldVal21);
Group7.FdChildren.Add(Transform11);
Transform26 := TTransformNode.Create;
Transform26.X3DName := 'DECLBubble_transformB';
Shape27 := TShapeNode.Create;
Sphere28 := TSphereNode.Create;
Sphere28.Radius := 0.25;
Shape27.Geometry := Sphere28;
Appearance29 := TAppearanceNode.Create;
Material30 := TMaterialNode.Create;
Material30.DiffuseColor := Vector3(1, 0, 0);
Material30.Transparency := 0.2;
Appearance29.Material := Material30;
Shape27.Appearance := Appearance29;
Transform26.FdChildren.Add(Shape27);
Script31 := TScriptNode.Create;
Script31.X3DName := 'DECLBubble_bubbleB_bounce';
end;

procedure Initbubs3Part2;
begin
FieldVal32 := TSFVec3f.Create(Script31, True, 'scale', Vector3(1, 1, 1));
Script31.AddCustomFieldOrEvent(FieldVal32);
FieldVal33 := TSFVec3f.Create(Script31, True, 'translation', Vector3(0, 0, 0));
Script31.AddCustomFieldOrEvent(FieldVal33);
FieldVal34 := TSFVec3f.Create(Script31, True, 'velocity', Vector3(0, 0, 0));
Script31.AddCustomFieldOrEvent(FieldVal34);
FieldVal35 := TSFVec3f.Create(Script31, True, 'scalvel', Vector3(0, 0, 0));
Script31.AddCustomFieldOrEvent(FieldVal35);
FieldVal36 := TSFFloat.CreateEvent(Script31, 'set_fraction', True);
Script31.AddCustomFieldOrEvent(FieldVal36);
Script31.SetUrl(['compiled:' + LineEnding +
  'initialize=Script31_initialize' + LineEnding +
  'set_fraction=Script31_set_fraction']);
Transform26.FdChildren.Add(Script31);
TimeSensor37 := TTimeSensorNode.Create;
TimeSensor37.X3DName := 'DECLBubble_bubbleB_bubbleClock';
TimeSensor37.CycleInterval := 10;
TimeSensor37.Loop := True;
Transform26.FdChildren.Add(TimeSensor37);
{ ROUTE DECLBubble_bubbleB_bounce.translation_changed TO DECLBubble_transformB.set_translation }
Transform26.AddRoute(FieldVal33.EventOut, Transform26.FdTranslation.EventIn);
{ ROUTE DECLBubble_bubbleB_bounce.scale_changed TO DECLBubble_transformB.set_scale }
Transform26.AddRoute(FieldVal32.EventOut, Transform26.FdScale.EventIn);
{ ROUTE DECLBubble_bubbleB_bubbleClock.fraction_changed TO DECLBubble_bubbleB_bounce.set_fraction }
Transform26.AddRoute(TimeSensor37.EventFraction_changed, FieldVal36);
Group7.FdChildren.Add(Transform26);
Transform41 := TTransformNode.Create;
Transform41.X3DName := 'DECLBubble_transformC';
Shape42 := TShapeNode.Create;
Sphere43 := TSphereNode.Create;
Sphere43.Radius := 0.25;
Shape42.Geometry := Sphere43;
Appearance44 := TAppearanceNode.Create;
Material45 := TMaterialNode.Create;
Material45.DiffuseColor := Vector3(1, 0, 0);
Material45.Transparency := 0.2;
Appearance44.Material := Material45;
Shape42.Appearance := Appearance44;
Transform41.FdChildren.Add(Shape42);
Script46 := TScriptNode.Create;
Script46.X3DName := 'DECLBubble_bubbleC_bounce';
FieldVal47 := TSFVec3f.Create(Script46, True, 'scale', Vector3(1, 1, 1));
end;

procedure Initbubs3Part3;
begin
Script46.AddCustomFieldOrEvent(FieldVal47);
FieldVal48 := TSFVec3f.Create(Script46, True, 'translation', Vector3(0, 0, 0));
Script46.AddCustomFieldOrEvent(FieldVal48);
FieldVal49 := TSFVec3f.Create(Script46, True, 'velocity', Vector3(0, 0, 0));
Script46.AddCustomFieldOrEvent(FieldVal49);
FieldVal50 := TSFVec3f.Create(Script46, True, 'scalvel', Vector3(0, 0, 0));
Script46.AddCustomFieldOrEvent(FieldVal50);
FieldVal51 := TSFFloat.CreateEvent(Script46, 'set_fraction', True);
Script46.AddCustomFieldOrEvent(FieldVal51);
Script46.SetUrl(['compiled:' + LineEnding +
  'initialize=Script46_initialize' + LineEnding +
  'set_fraction=Script46_set_fraction']);
Transform41.FdChildren.Add(Script46);
TimeSensor52 := TTimeSensorNode.Create;
TimeSensor52.X3DName := 'DECLBubble_bubbleC_bubbleClock';
TimeSensor52.CycleInterval := 10;
TimeSensor52.Loop := True;
Transform41.FdChildren.Add(TimeSensor52);
{ ROUTE DECLBubble_bubbleC_bounce.translation_changed TO DECLBubble_transformC.set_translation }
Transform41.AddRoute(FieldVal48.EventOut, Transform41.FdTranslation.EventIn);
{ ROUTE DECLBubble_bubbleC_bounce.scale_changed TO DECLBubble_transformC.set_scale }
Transform41.AddRoute(FieldVal47.EventOut, Transform41.FdScale.EventIn);
{ ROUTE DECLBubble_bubbleC_bubbleClock.fraction_changed TO DECLBubble_bubbleC_bounce.set_fraction }
Transform41.AddRoute(TimeSensor52.EventFraction_changed, FieldVal51);
Group7.FdChildren.Add(Transform41);
Transform56 := TTransformNode.Create;
Transform56.X3DName := 'DECLBubble_transformD';
Shape57 := TShapeNode.Create;
Sphere58 := TSphereNode.Create;
Sphere58.Radius := 0.25;
Shape57.Geometry := Sphere58;
Appearance59 := TAppearanceNode.Create;
Material60 := TMaterialNode.Create;
Material60.DiffuseColor := Vector3(1, 0, 0);
Material60.Transparency := 0.2;
Appearance59.Material := Material60;
Shape57.Appearance := Appearance59;
Transform56.FdChildren.Add(Shape57);
Script61 := TScriptNode.Create;
Script61.X3DName := 'DECLBubble_bubbleD_bounce';
FieldVal62 := TSFVec3f.Create(Script61, True, 'scale', Vector3(1, 1, 1));
Script61.AddCustomFieldOrEvent(FieldVal62);
end;

procedure Initbubs3Part4;
begin
FieldVal63 := TSFVec3f.Create(Script61, True, 'translation', Vector3(0, 0, 0));
Script61.AddCustomFieldOrEvent(FieldVal63);
FieldVal64 := TSFVec3f.Create(Script61, True, 'velocity', Vector3(0, 0, 0));
Script61.AddCustomFieldOrEvent(FieldVal64);
FieldVal65 := TSFVec3f.Create(Script61, True, 'scalvel', Vector3(0, 0, 0));
Script61.AddCustomFieldOrEvent(FieldVal65);
FieldVal66 := TSFFloat.CreateEvent(Script61, 'set_fraction', True);
Script61.AddCustomFieldOrEvent(FieldVal66);
Script61.SetUrl(['compiled:' + LineEnding +
  'initialize=Script61_initialize' + LineEnding +
  'set_fraction=Script61_set_fraction']);
Transform56.FdChildren.Add(Script61);
TimeSensor67 := TTimeSensorNode.Create;
TimeSensor67.X3DName := 'DECLBubble_bubbleD_bubbleClock';
TimeSensor67.CycleInterval := 10;
TimeSensor67.Loop := True;
Transform56.FdChildren.Add(TimeSensor67);
{ ROUTE DECLBubble_bubbleD_bounce.translation_changed TO DECLBubble_transformD.set_translation }
Transform56.AddRoute(FieldVal63.EventOut, Transform56.FdTranslation.EventIn);
{ ROUTE DECLBubble_bubbleD_bounce.scale_changed TO DECLBubble_transformD.set_scale }
Transform56.AddRoute(FieldVal62.EventOut, Transform56.FdScale.EventIn);
{ ROUTE DECLBubble_bubbleD_bubbleClock.fraction_changed TO DECLBubble_bubbleD_bounce.set_fraction }
Transform56.AddRoute(TimeSensor67.EventFraction_changed, FieldVal66);
Group7.FdChildren.Add(Transform56);
X3D0.AddChildren([Group7]);
end;

function Createbubs3: TX3DRootNode;
var
  Binder: Tbubs3ScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript16List) do
    FreeAndNil(CompiledScript16List[_i]);
  SetLength(CompiledScript16List, 0);
  for _i := 0 to High(CompiledScript31List) do
    FreeAndNil(CompiledScript31List[_i]);
  SetLength(CompiledScript31List, 0);
  for _i := 0 to High(CompiledScript46List) do
    FreeAndNil(CompiledScript46List[_i]);
  SetLength(CompiledScript46List, 0);
  for _i := 0 to High(CompiledScript61List) do
    FreeAndNil(CompiledScript61List[_i]);
  SetLength(CompiledScript61List, 0);
  Initbubs3Part0;
  Initbubs3Part1;
  Initbubs3Part2;
  Initbubs3Part3;
  Initbubs3Part4;
  Binder := Tbubs3ScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registerbubs3Scripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript16List) do
  begin
    CompiledScript16List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript16List[_i].Initialized) then
      CompiledScript16List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript31List) do
  begin
    CompiledScript31List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript31List[_i].Initialized) then
      CompiledScript31List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript46List) do
  begin
    CompiledScript46List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript46List[_i].Initialized) then
      CompiledScript46List[_i].Initialize(nil, Scene.NextEventTime);
  end;
  for _i := 0 to High(CompiledScript61List) do
  begin
    CompiledScript61List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript61List[_i].Initialized) then
      CompiledScript61List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure Detachbubs3Scripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript16List) do
  begin
    CompiledScript16List[_i].Detach;
    FreeAndNil(CompiledScript16List[_i]);
  end;
  SetLength(CompiledScript16List, 0);
  for _i := 0 to High(CompiledScript31List) do
  begin
    CompiledScript31List[_i].Detach;
    FreeAndNil(CompiledScript31List[_i]);
  end;
  SetLength(CompiledScript31List, 0);
  for _i := 0 to High(CompiledScript46List) do
  begin
    CompiledScript46List[_i].Detach;
    FreeAndNil(CompiledScript46List[_i]);
  end;
  SetLength(CompiledScript46List, 0);
  for _i := 0 to High(CompiledScript61List) do
  begin
    CompiledScript61List[_i].Detach;
    FreeAndNil(CompiledScript61List[_i]);
  end;
  SetLength(CompiledScript61List, 0);
end;

finalization
  while Length(CompiledScript16List) > 0 do
  begin
    FreeAndNil(CompiledScript16List[High(CompiledScript16List)]);
    SetLength(CompiledScript16List, Length(CompiledScript16List) - 1);
  end;
  while Length(CompiledScript31List) > 0 do
  begin
    FreeAndNil(CompiledScript31List[High(CompiledScript31List)]);
    SetLength(CompiledScript31List, Length(CompiledScript31List) - 1);
  end;
  while Length(CompiledScript46List) > 0 do
  begin
    FreeAndNil(CompiledScript46List[High(CompiledScript46List)]);
    SetLength(CompiledScript46List, Length(CompiledScript46List) - 1);
  end;
  while Length(CompiledScript61List) > 0 do
  begin
    FreeAndNil(CompiledScript61List[High(CompiledScript61List)]);
    SetLength(CompiledScript61List, Length(CompiledScript61List) - 1);
  end;
end.
