{
  HAnimDisplacerSupport
  =====================
  Support code for the X3D 4.1 HAnimDisplacer node (ISO/IEC 19775-1 v4.1 CD,
  clause 26.3.1) on top of Castle Game Engine (CGE) master.

  IMPORTANT: current CGE master already defines THAnimDisplacerNode
  (src/scene/x3d/x3dnodes_standard_h-anim.inc, auto-generated fields in
  auto_generated_node_helpers/x3dnodes_hanimdisplacer.inc, parent class
  TAbstractGeometricPropertyNode, all five fields inputOutput, registered
  with NodesManager). Declaring a second node class with the same X3D type
  name would clash, so this unit does NOT redefine the node. It adds:

    1. accessType handling   (TX3DAccessType, FieldAccessType, TryModifyField)
    2. spec semantics, CPU   (ApplyDisplacers: skinCoord/coord vertex offsets)
    3. spec semantics, GPU   (THAnimDisplacerGPU: GLSL vertex plug + per-vertex
                              attribute + weight uniform kept in sync)
    4. a class helper on THAnimDisplacerNode exposing the above.

  The same file compiles with FPC (3.2.2+) and Delphi: all dialect settings
  come from castleconf.inc, and no FPC-only syntax is used.
}
unit HAnimDisplacerSupport;

{$I castleconf.inc}

interface

uses SysUtils, Classes,
  CastleVectors, CastleUtils, CastleLog, CastleRenderOptions, X3DTime,
  X3DFields, X3DNodes;

type
  { X3D field access types, ISO/IEC 19775-1 section 4.4.2. }
  TX3DAccessType = (
    atInitializeOnly, // field, no events: writable only while the node is initialized
    atInputOnly,      // eventIn:  writable at runtime, never readable
    atOutputOnly,     // eventOut: never writable from outside
    atInputOutput     // exposed field: set_X / X_changed events + stored value
  );

  { When a modification is attempted. }
  TX3DModifyPhase = (
    mpInitialize,  // loading / construction: initial values may be assigned
    mpRuntime      // running scene: only event input is allowed
  );

  EX3DAccessViolation = class(Exception);

{ CGE models accessType like this: Exposed field = inputOutput,
  non-exposed field = initializeOnly. inputOnly / outputOnly are TX3DEvent
  objects in CGE, not fields, so they are reported via AccessTypeOfEventName. }
function FieldAccessType(const Field: TX3DField): TX3DAccessType;

{ Maps an event name ("set_weight", "weight_changed") of a node to its
  access type, or returns False if the node has no such event. }
function EventAccessType(const Node: TX3DNode; const EventName: String;
  out AccessType: TX3DAccessType): Boolean;

{ Is a write of the given phase allowed for this accessType? }
function AccessTypeAllowsWrite(const AccessType: TX3DAccessType;
  const Phase: TX3DModifyPhase): Boolean;

{ Spec-conforming CPU displacement.
  For every displacer, for every k in [0, coordIndex.Count):
      Points[coordIndex[k]] += weight * displacements[k]
  Displacers are accumulated. Points should be a copy of the rest pose.
  Out-of-range indices and count mismatches are reported via WritelnWarning
  and skipped, never raise. }
procedure ApplyDisplacers(const Displacers: array of THAnimDisplacerNode;
  const Points: TVector3List);

{ Build the displaced coordinate set: copy rest pose, apply displacers,
  send to Target (TCoordinateNode.FdPoint, so the scene is notified). }
procedure ApplyDisplacersToCoordinate(
  const Displacers: array of THAnimDisplacerNode;
  const RestPose: TVector3List; const Target: TCoordinateNode);

{ GLSL for the GPU path. Written in the portable old-style dialect CGE
  documents (no #version, "attribute", "uniform"): CGE itself adds a modern
  #version (desktop core 3.1+ / OpenGLES 3) and maps "attribute" to "in".
  Plug name PLUG_vertex_object_space_change is the same one CGE's own
  GPU skinning uses, so effects compose with skin animation. }
function HAnimDisplacerVertexShader(
  const AttributeName, WeightUniformName: String): String;

type
  { GPU displacement for one HAnimDisplacer.

    Owns a TEffectNode (language GLSL, one VERTEX part) and a
    TFloatVertexAttributeNode. Typical use:

      Gpu := THAnimDisplacerGPU.Create(Displacer, 'hanim_displace_0');
      Gpu.AttachTo(Geometry, Appearance);     // adds attrib + effect
      // later: Displacer.Weight := 0.5;       // uniform follows (see below)

    Inside a scene with ProcessEvents = True the weight uniform follows
    Displacer.FdWeight through its exposed events (ROUTEs, interpolators,
    Displacer.Weight := ...) and the attribute is rebuilt when coordIndex or
    displacements change. Elsewhere call Refresh. }
  THAnimDisplacerGPU = class
  strict private
    FDisplacer: THAnimDisplacerNode;
    FEffect: TEffectNode;
    FAttribute: TFloatVertexAttributeNode;
    FAttributeName, FWeightName: String;
    FVertexCount: Integer;
    FWeightField: TSFFloat;
    procedure WeightReceived(const Event: TX3DEvent; const Value: TX3DField;
      const Time: TX3DTime);
    procedure ShapeChanged(const Event: TX3DEvent; const Value: TX3DField;
      const Time: TX3DTime);
  public
    { VertexCount = number of points in the coord node of the target geometry. }
    constructor Create(const ADisplacer: THAnimDisplacerNode;
      const AUniqueName: String; const AVertexCount: Integer);
    destructor Destroy; override;
    property Effect: TEffectNode read FEffect;
    property Attribute: TFloatVertexAttributeNode read FAttribute;
    procedure RebuildAttribute;
    { Re-read weight and displacements from the displacer. Called
      automatically when the displacer is inside a scene with ProcessEvents
      (CGE only fires field notifications then; outside such a scene
      TX3DField.Send is a plain assignment). Call it yourself after
      changing the displacer from code in a scene without events. }
    procedure Refresh;
    { Adds Attribute to Geometry.attrib and Effect to Appearance.effects. }
    procedure AttachTo(const Geometry: TAbstractComposedGeometryNode;
      const Appearance: TAppearanceNode);
  end;

  { Convenience API directly on the node. }
  THAnimDisplacerHelper = class helper for THAnimDisplacerNode
  public
    function AccessTypeOf(const FieldName: String): TX3DAccessType;
    { Assign Value to the named field if its accessType allows it in Phase.
      Uses Send for exposed fields (events fire, scene is notified);
      assigns directly for initializeOnly fields (Phase = mpInitialize only).
      Returns False (and writes a warning) if refused, or if the field is
      unknown or of a different type. }
    function TryModifyField(const FieldName: String; const Value: TX3DField;
      const Phase: TX3DModifyPhase = mpRuntime): Boolean;
    { Same, but raises EX3DAccessViolation on refusal. }
    procedure ModifyField(const FieldName: String; const Value: TX3DField;
      const Phase: TX3DModifyPhase = mpRuntime);
    { Typed shortcuts, access-checked. }
    procedure ModifyWeight(const NewWeight: Single;
      const Phase: TX3DModifyPhase = mpRuntime);
    procedure ModifyName(const NewName: String;
      const Phase: TX3DModifyPhase = mpRuntime);
    procedure ModifyDescription(const NewDescription: String;
      const Phase: TX3DModifyPhase = mpRuntime);
    procedure ModifyCoordIndex(const NewIndex: array of Int32;
      const Phase: TX3DModifyPhase = mpRuntime);
    procedure ModifyDisplacements(const NewValues: array of TVector3;
      const Phase: TX3DModifyPhase = mpRuntime);
    { Number of usable (coordIndex, displacement) pairs. }
    function PairCount: Integer;
    { X3D naming rule: DEF = humanoidName + '_' + name. }
    function SuggestedDefName(const HumanoidName: String): String;
  end;

implementation

{ accessType ---------------------------------------------------------------- }

const
  AccessTypeNames: array [TX3DAccessType] of String =
    ('initializeOnly', 'inputOnly', 'outputOnly', 'inputOutput');

function FieldAccessType(const Field: TX3DField): TX3DAccessType;
begin
  if Field.Exposed then
    Result := atInputOutput
  else
    Result := atInitializeOnly;
end;

function EventAccessType(const Node: TX3DNode; const EventName: String;
  out AccessType: TX3DAccessType): Boolean;
var
  I: Integer;
  F: TX3DField;
  Ev: TX3DEvent;
begin
  Result := False;
  AccessType := atInputOutput;
  for I := 0 to Node.FieldsCount - 1 do
  begin
    F := Node.Fields[I];
    if F.Exposed then
    begin
      if SameText(EventName, 'set_' + F.X3DName) then
      begin
        AccessType := atInputOnly;
        Exit(True);
      end;
      if SameText(EventName, F.X3DName + '_changed') then
      begin
        AccessType := atOutputOnly;
        Exit(True);
      end;
    end;
  end;
  for I := 0 to Node.EventsCount - 1 do
  begin
    Ev := Node.Events[I];
    if SameText(Ev.X3DName, EventName) then
    begin
      if Ev.InEvent then AccessType := atInputOnly
        else AccessType := atOutputOnly;
      Exit(True);
    end;
  end;
end;

function AccessTypeAllowsWrite(const AccessType: TX3DAccessType;
  const Phase: TX3DModifyPhase): Boolean;
begin
  case AccessType of
    atInitializeOnly: Result := Phase = mpInitialize;
    atInputOnly:      Result := True;
    atOutputOnly:     Result := False;
    atInputOutput:    Result := True;
    else Result := False;
  end;
end;

{ CPU displacement ---------------------------------------------------------- }

procedure ApplyDisplacers(const Displacers: array of THAnimDisplacerNode;
  const Points: TVector3List);
var
  D: THAnimDisplacerNode;
  I, K, Pairs, Idx: Integer;
  W: Single;
  Index: TInt32List;
  Disp: TVector3List;
begin
  for I := Low(Displacers) to High(Displacers) do
  begin
    D := Displacers[I];
    if D = nil then Continue;
    W := D.Weight;
    if W = 0 then Continue; // fast path, and exactly "no effect" per spec
    Index := D.FdCoordIndex.Items;
    Disp := D.FdDisplacements.Items;
    Pairs := D.PairCount;
    if Index.Count <> Disp.Count then
      WritelnWarning('HAnimDisplacer', Format(
        '"%s": coordIndex has %d items but displacements has %d; using first %d',
        [D.NameField, Index.Count, Disp.Count, Pairs]));
    for K := 0 to Pairs - 1 do
    begin
      Idx := Index[K];
      if (Idx < 0) or (Idx >= Points.Count) then
      begin
        WritelnWarning('HAnimDisplacer', Format(
          '"%s": coordIndex[%d] = %d is outside coordinate range 0..%d, skipped',
          [D.NameField, K, Idx, Points.Count - 1]));
        Continue;
      end;
      Points[Idx] := Points[Idx] + Disp[K] * W;
    end;
  end;
end;

procedure ApplyDisplacersToCoordinate(
  const Displacers: array of THAnimDisplacerNode;
  const RestPose: TVector3List; const Target: TCoordinateNode);
var
  Work: TVector3List;
begin
  Work := TVector3List.Create;
  try
    Work.Assign(RestPose);
    ApplyDisplacers(Displacers, Work);
    Target.SetPoint(Work);
  finally FreeAndNil(Work) end;
end;

{ GLSL ---------------------------------------------------------------------- }

function HAnimDisplacerVertexShader(
  const AttributeName, WeightUniformName: String): String;
begin
  Result :=
    '/* HAnimDisplacer: object-space vertex offset = weight * displacement. */' + NL +
    'attribute vec3 ' + AttributeName + ';' + NL +
    'uniform float ' + WeightUniformName + ';' + NL +
    NL +
    'void PLUG_vertex_object_space_change(' + NL +
    '  inout vec4 vertex_object,' + NL +
    '  inout vec3 normal_object)' + NL +
    '{' + NL +
    '  vertex_object.xyz += ' + WeightUniformName + ' * ' + AttributeName + ';' + NL +
    '}' + NL;
end;

{ THAnimDisplacerGPU --------------------------------------------------------- }

constructor THAnimDisplacerGPU.Create(const ADisplacer: THAnimDisplacerNode;
  const AUniqueName: String; const AVertexCount: Integer);
var
  Part: TEffectPartNode;
begin
  inherited Create;
  FDisplacer := ADisplacer;
  FVertexCount := AVertexCount;
  FAttributeName := AUniqueName + '_displacement';
  FWeightName := AUniqueName + '_weight';

  FAttribute := TFloatVertexAttributeNode.Create;
  FAttribute.NameField := FAttributeName;
  FAttribute.NumComponents := 3;

  FEffect := TEffectNode.Create;
  FEffect.Language := slGLSL;
  { Custom exposed field -> becomes a uniform of the same name. }
  FWeightField := TSFFloat.Create(FEffect, True, FWeightName, FDisplacer.Weight);
  FEffect.AddCustomField(FWeightField);

  Part := TEffectPartNode.Create;
  Part.ShaderType := stVertex;
  Part.Contents := HAnimDisplacerVertexShader(FAttributeName, FWeightName);
  FEffect.FdParts.Add(Part);

  RebuildAttribute;

  FDisplacer.FdWeight.AddNotification({$ifdef FPC}@{$endif}WeightReceived);
  FDisplacer.FdCoordIndex.AddNotification({$ifdef FPC}@{$endif}ShapeChanged);
  FDisplacer.FdDisplacements.AddNotification({$ifdef FPC}@{$endif}ShapeChanged);
end;

destructor THAnimDisplacerGPU.Destroy;
begin
  if FDisplacer <> nil then
  begin
    FDisplacer.FdWeight.RemoveNotification({$ifdef FPC}@{$endif}WeightReceived);
    FDisplacer.FdCoordIndex.RemoveNotification({$ifdef FPC}@{$endif}ShapeChanged);
    FDisplacer.FdDisplacements.RemoveNotification({$ifdef FPC}@{$endif}ShapeChanged);
  end;
  { Nodes are owned by the scene graph once attached (reference counted by
    parents). Free them only if never attached. }
  if FEffect.ParentFieldsCount = 0 then FreeIfUnusedAndNil(FEffect);
  if FAttribute.ParentFieldsCount = 0 then FreeIfUnusedAndNil(FAttribute);
  inherited;
end;

procedure THAnimDisplacerGPU.WeightReceived(const Event: TX3DEvent;
  const Value: TX3DField; const Time: TX3DTime);
begin
  { Value is the new weight (TSFFloat); exposed events deliver it before
    the field value is stored, so read from Value, not from the field. }
  FWeightField.Send((Value as TSFFloat).Value);
end;

procedure THAnimDisplacerGPU.ShapeChanged(const Event: TX3DEvent;
  const Value: TX3DField; const Time: TX3DTime);
begin
  RebuildAttribute;
end;

procedure THAnimDisplacerGPU.Refresh;
begin
  FWeightField.Send(FDisplacer.Weight);
  RebuildAttribute;
end;

procedure THAnimDisplacerGPU.RebuildAttribute;
var
  Data: TSingleList;
  Index: TInt32List;
  Disp: TVector3List;
  K, Idx: Integer;
begin
  Data := TSingleList.Create;
  try
    Data.Count := FVertexCount * 3;
    for K := 0 to Data.Count - 1 do Data[K] := 0;
    Index := FDisplacer.FdCoordIndex.Items;
    Disp := FDisplacer.FdDisplacements.Items;
    for K := 0 to FDisplacer.PairCount - 1 do
    begin
      Idx := Index[K];
      if (Idx < 0) or (Idx >= FVertexCount) then Continue;
      { Several entries for the same vertex add up, same as the CPU path. }
      Data[Idx * 3 + 0] := Data[Idx * 3 + 0] + Disp[K].X;
      Data[Idx * 3 + 1] := Data[Idx * 3 + 1] + Disp[K].Y;
      Data[Idx * 3 + 2] := Data[Idx * 3 + 2] + Disp[K].Z;
    end;
    FAttribute.FdValue.Send(Data);
  finally FreeAndNil(Data) end;
end;

procedure THAnimDisplacerGPU.AttachTo(
  const Geometry: TAbstractComposedGeometryNode;
  const Appearance: TAppearanceNode);
begin
  Geometry.FdAttrib.Add(FAttribute);
  Appearance.FdEffects.Add(FEffect);
end;

{ THAnimDisplacerHelper ------------------------------------------------------ }

function THAnimDisplacerHelper.AccessTypeOf(const FieldName: String): TX3DAccessType;
var
  F: TX3DField;
begin
  F := Field(FieldName);
  if F <> nil then
    Exit(FieldAccessType(F));
  if not EventAccessType(Self, FieldName, Result) then
    raise EX3DAccessViolation.CreateFmt(
      'HAnimDisplacer has no field or event "%s"', [FieldName]);
end;

function THAnimDisplacerHelper.TryModifyField(const FieldName: String;
  const Value: TX3DField; const Phase: TX3DModifyPhase): Boolean;
var
  F: TX3DField;
  AT: TX3DAccessType;
begin
  Result := False;
  F := Field(FieldName);
  if F = nil then
  begin
    { "set_weight" style event names are inputOnly views of exposed fields. }
    if EventAccessType(Self, FieldName, AT) and (AT = atInputOnly) and
       (Copy(FieldName, 1, 4) = 'set_') then
      Exit(TryModifyField(Copy(FieldName, 5, MaxInt), Value, Phase));
    WritelnWarning('HAnimDisplacer', 'Unknown or write-protected field: ' + FieldName);
    Exit;
  end;
  AT := FieldAccessType(F);
  if not AccessTypeAllowsWrite(AT, Phase) then
  begin
    WritelnWarning('HAnimDisplacer', Format(
      'Field "%s" is %s; write refused in this phase',
      [FieldName, AccessTypeNames[AT]]));
    Exit;
  end;
  if F.ClassType <> Value.ClassType then
  begin
    WritelnWarning('HAnimDisplacer', Format(
      'Field "%s" is %s, got %s', [FieldName, F.X3DType, Value.X3DType]));
    Exit;
  end;
  if AT = atInitializeOnly then
  begin
    F.AssignValue(Value); // no events by definition
    F.Changed;
  end else
    F.Send(Value);        // events fire, scene notified, ROUTEs run
  Result := True;
end;

procedure THAnimDisplacerHelper.ModifyField(const FieldName: String;
  const Value: TX3DField; const Phase: TX3DModifyPhase);
begin
  if not TryModifyField(FieldName, Value, Phase) then
    raise EX3DAccessViolation.CreateFmt(
      'Cannot modify HAnimDisplacer.%s (accessType %d, phase %d)',
      [FieldName, Ord(AccessTypeOf(FieldName)), Ord(Phase)]);
end;

procedure CheckWrite(const D: THAnimDisplacerNode; const FieldName: String;
  const Phase: TX3DModifyPhase);
begin
  if not AccessTypeAllowsWrite(D.AccessTypeOf(FieldName), Phase) then
    raise EX3DAccessViolation.CreateFmt(
      'HAnimDisplacer.%s is not writable in this phase', [FieldName]);
end;

procedure THAnimDisplacerHelper.ModifyWeight(const NewWeight: Single;
  const Phase: TX3DModifyPhase);
begin
  CheckWrite(Self, 'weight', Phase);
  if FdWeight.Exposed then FdWeight.Send(NewWeight)
    else FdWeight.Value := NewWeight;
end;

procedure THAnimDisplacerHelper.ModifyName(const NewName: String;
  const Phase: TX3DModifyPhase);
begin
  CheckWrite(Self, 'name', Phase);
  if NewName = '' then
    raise EX3DAccessViolation.Create(
      'HAnimDisplacer.name must have non-zero length (X3D 4.1, 26.2.1)');
  if FdName.Exposed then FdName.Send(NewName)
    else FdName.Value := NewName;
end;

procedure THAnimDisplacerHelper.ModifyDescription(const NewDescription: String;
  const Phase: TX3DModifyPhase);
begin
  CheckWrite(Self, 'description', Phase);
  if FdDescription.Exposed then FdDescription.Send(NewDescription)
    else FdDescription.Value := NewDescription;
end;

procedure THAnimDisplacerHelper.ModifyCoordIndex(const NewIndex: array of Int32;
  const Phase: TX3DModifyPhase);
var
  I: Integer;
begin
  CheckWrite(Self, 'coordIndex', Phase);
  for I := Low(NewIndex) to High(NewIndex) do
    if NewIndex[I] < 0 then // spec range [0, infinity)
      raise EX3DAccessViolation.CreateFmt(
        'HAnimDisplacer.coordIndex[%d] = %d, must be >= 0', [I, NewIndex[I]]);
  FdCoordIndex.Send(NewIndex);
end;

procedure THAnimDisplacerHelper.ModifyDisplacements(
  const NewValues: array of TVector3; const Phase: TX3DModifyPhase);
begin
  CheckWrite(Self, 'displacements', Phase);
  FdDisplacements.Send(NewValues);
end;

function THAnimDisplacerHelper.PairCount: Integer;
begin
  Result := FdCoordIndex.Items.Count;
  if FdDisplacements.Items.Count < Result then
    Result := FdDisplacements.Items.Count;
end;

function THAnimDisplacerHelper.SuggestedDefName(const HumanoidName: String): String;
begin
  Result := HumanoidName + '_' + NameField;
end;

end.
