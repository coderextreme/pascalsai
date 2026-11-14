unit BoxPrototype;

{ Builds the BoxEm PROTO in pure Pascal (no X3D/VRML text) and adds it,
  plus four instances, to a root node.

  Requires the CGE patch that makes TX3DPrototype.Node writable
  (cge-proto-node-setter.patch). }

interface

uses
  X3DNodes, X3DFields, CastleVectors;

type
  TBoxProto = class
  strict private
    function BuildProtoDeclare: TX3DPrototype;
    function BuildProtoInstance(ProtoDeclare: TX3DPrototype; const Translation, Color: TVector3): TAbstractChildNode;
  public
    { Declares the prototype in Root and adds four instances to it. }
    function CreateBoxes(Root: TX3DRootNode): TX3DRootNode;
  end;

implementation

{ Add one field to the prototype interface, return the field. }
function AddProtoField(const Proto: TX3DPrototype;
  const FieldClass: TX3DFieldClass; const AName: String;
  const Exposed: Boolean): TX3DField;
var
  Decl: TX3DInterfaceDeclaration;
begin
  Decl := TX3DInterfaceDeclaration.Create(nil);
  Decl.FieldOrEvent := FieldClass.CreateUndefined(nil, Exposed, AName);
  Decl.FieldOrEvent.ParentInterfaceDeclaration := Decl;
  Proto.InterfaceDeclarations.Add(Decl);
  Result := Decl.Field;
end;

function TBoxProto.BuildProtoDeclare: TX3DPrototype;
var
  Box: TBoxNode;
  Material: TMaterialNode;
  Appearance: TAppearanceNode;
  Shape: TShapeNode;
  Transform: TTransformNode;
  Body: TX3DRootNode;
begin
  Result := TX3DPrototype.Create;
  Result.X3DName := 'BoxEm';

  (AddProtoField(Result, TSFVec3f, 'size', false) as TSFVec3f).Value :=
    Vector3(1, 1, 1);
  (AddProtoField(Result, TSFColor, 'color', true) as TSFColor).Value :=
    Vector3(0, 1, 0);
  (AddProtoField(Result, TSFVec3f, 'translation', false) as TSFVec3f).Value :=
    Vector3(0, 0, 0);

  Box := TBoxNode.Create;
  Box.FdSize.IsClauseNamesAdd('size');

  Material := TMaterialNode.Create;
  Material.FdDiffuseColor.IsClauseNamesAdd('color');

  Appearance := TAppearanceNode.Create;
  Appearance.Material := Material;

  Shape := TShapeNode.Create;
  Shape.Appearance := Appearance;
  Shape.Geometry := Box;

  Transform := TTransformNode.Create;
  Transform.FdTranslation.IsClauseNamesAdd('translation');
  Transform.AddChildren(Shape);

  Body := TX3DRootNode.Create;
  Body.AddChildren(Transform);
  Result.Node := Body;   { needs the SetNode patch }
end;

function TBoxProto.BuildProtoInstance(ProtoDeclare: TX3DPrototype; const Translation, Color: TVector3): TAbstractChildNode;
var
  Inst: TX3DPrototypeNode;
begin
  Inst := TX3DPrototypeNode.CreatePrototypeNode('BoxEm', '', ProtoDeclare);
  (Inst.Field('translation', true) as TSFVec3f).Value := Translation;
  (Inst.Field('color', true) as TSFColor).Value := Color;
  { The returned node owns Inst; do NOT free it here. }
  { The expanded body root is the Transform, which is a child node. }
  Result := Inst.Instantiate as TAbstractChildNode;
end;

  
function TBoxProto.CreateBoxes(Root: TX3DRootNode): TX3DRootNode;
var
  I: Integer;
  ProtoDeclare: TX3DPrototype;
begin
  ProtoDeclare := BuildProtoDeclare;
  Root.AddPrototype(ProtoDeclare);   { Root owns the prototype }
  for I := 0 to 3 do
    Root.AddChildren(BuildProtoInstance(ProtoDeclare, Vector3(-3 + 2 * I, 0, 0), Vector3(0, 1, 0)));
  Result := Root;
end;

end.
