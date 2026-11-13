unit BoxPrototype;

interface

uses
  SysUtils,
  CastleWindow, CastleViewport, CastleScene,
  X3DNodes, X3DFields, CastleVectors;

type
  TBoxProto = class
  public
    constructor Create;
    function BuildFieldInterface(const Proto: TX3DPrototype;
      const FieldClass: TX3DFieldClass; const AName: String;
      const Exposed: Boolean): TX3DField;
    function BuildProtoDeclare: TX3DPrototype;
    function BuildProtoInstance(const Proto: TX3DPrototype;
      const Translation, Color: TVector3): TX3DNode;
    procedure BuildPrototype(Root: TX3DRootNode);
  end;

implementation

constructor TBoxProto.Create;
begin
end;

{ Add one field to the prototype's public interface. }
function TBoxProto.BuildFieldInterface(const Proto: TX3DPrototype;
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

  { interface:  initializeOnly SFVec3f size 1 1 1, etc. }
  (BuildFieldInterface(Result, TSFVec3f, 'size', false) as TSFVec3f).Value :=
    Vector3(1, 1, 1);
  (BuildFieldInterface(Result, TSFColor, 'color', true) as TSFColor).Value :=
    Vector3(0, 1, 0);
  (BuildFieldInterface(Result, TSFVec3f, 'translation', false) as TSFVec3f).Value :=
    Vector3(0, 0, 0);

  { body, with IS clauses }
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
  Result.Node := Body;
end;

function TBoxProto.BuildProtoInstance(const Proto: TX3DPrototype;
  const Translation, Color: TVector3): TX3DNode;
var
  Inst: TX3DPrototypeNode;
begin
  Inst := TX3DPrototypeNode.CreatePrototypeNode('BoxEm', '', Proto);
  (Inst.Field('translation', true) as TSFVec3f).Value := Translation;
  (Inst.Field('color', true) as TSFColor).Value := Color;
  Result := Inst.Instantiate;
end;

procedure TBoxProto.BuildPrototype(Root: TX3DRootNode);
var
  Proto: TX3DPrototype;
  I: Integer;
begin
  Proto := BuildProtoDeclare;

  for I := 0 to 3 do
    Root.AddChildren(BuildProtoInstance(Proto,
      Vector3(-3 + 2 * I, 0, 0), Vector3(0, 1, 0)) as TAbstractChildNode);
end;
end.
