unit ViewFrustumExample;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported;

function CreateViewFrustumExample: TX3DRootNode;

implementation

uses CastleVectors;

var
  X3D0: TX3DRootNode;
  Group17: TGroupNode;
  WorldInfo18: TWorldInfoNode;
  Viewpoint19: TViewpointNode;
  Viewpoint20: TViewpointNode;
  Viewpoint21: TViewpointNode;
  Viewpoint22: TViewpointNode;
  NavigationInfo23: TNavigationInfoNode;
  X3DExternalPrototype24: TX3DExternalPrototype;
  FieldDecl25: TX3DInterfaceDeclaration;
  FieldVal25: TSFNode;
  FieldDecl26: TX3DInterfaceDeclaration;
  FieldVal26: TSFNode;
  FieldDecl27: TX3DInterfaceDeclaration;
  FieldVal27: TSFBool;
  FieldDecl28: TX3DInterfaceDeclaration;
  FieldVal28: TSFColor;
  FieldDecl29: TX3DInterfaceDeclaration;
  FieldVal29: TSFColor;
  FieldDecl30: TX3DInterfaceDeclaration;
  FieldVal30: TSFFloat;
  FieldDecl31: TX3DInterfaceDeclaration;
  FieldVal31: TSFFloat;
  FieldDecl32: TX3DInterfaceDeclaration;
  FieldVal32: TSFBool;
  ProtoInstance33: TX3DPrototypeNode;
  Viewpoint35: TViewpointNode;
  NavigationInfo37: TNavigationInfoNode;
  Inline43: TInlineNode;
  Transform44: TTransformNode;
  Inline45: TInlineNode;

procedure InitViewFrustumExamplePart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'ViewFrustumExample.x3d';
X3D0.Meta['description'] := 'Display view frustum associated with a given pair of Viewpoint and NavigationInfo nodes, illustrating ProtoInstance reuse of a separately declared prototype.';
X3D0.Meta['creator'] := 'Don Brutzman';
X3D0.Meta['translated'] := '16 August 2008';
X3D0.Meta['modified'] := '20 October 2019';
X3D0.Meta['reference'] := 'ViewFrustumPrototype.x3d';
X3D0.Meta['drawing'] := 'ViewFrustumComputation.png';
X3D0.Meta['Image'] := 'ViewFrustumOverheadView.png';
X3D0.Meta['Image'] := 'ViewFrustumObliqueView.png';
X3D0.Meta['Image'] := 'ViewpointCalculator.png';
X3D0.Meta['Image'] := 'ViewpointCalculatorComposed.png';
X3D0.Meta['subject'] := 'view culling frustum';
X3D0.Meta['identifier'] := 'https://X3dGraphics.com/examples/X3dForWebAuthors/Chapter14Prototypes/ViewFrustumExample.x3d';
X3D0.Meta['generator'] := 'X3D-Edit 3.3, https://savage.nps.edu/X3D-Edit';
X3D0.Meta['license'] := '../license.html';
Group17 := TGroupNode.Create;
WorldInfo18 := TWorldInfoNode.Create;
WorldInfo18.Title := 'ViewFrustumExample.x3d';
Group17.FdChildren.Add(WorldInfo18);
Viewpoint19 := TViewpointNode.Create;
Viewpoint19.Description := 'ViewFrustum from above, looking down';
Viewpoint19.Orientation := Vector4(1, 0, 0, -1.57);
Viewpoint19.Position := Vector3(0, 40, 0);
Group17.FdChildren.Add(Viewpoint19);
Viewpoint20 := TViewpointNode.Create;
Viewpoint20.Description := 'ViewFrustum from point of view';
Group17.FdChildren.Add(Viewpoint20);
Viewpoint21 := TViewpointNode.Create;
Viewpoint21.Description := 'ViewFrustum behind point of view';
Viewpoint21.Position := Vector3(0, 0, 15);
Group17.FdChildren.Add(Viewpoint21);
Viewpoint22 := TViewpointNode.Create;
Viewpoint22.Description := 'ViewFrustum oblique side view';
Viewpoint22.Orientation := Vector4(0.8005, 0.5926, 0.0898, -0.3743);
Viewpoint22.Position := Vector3(-5, 5, 20);
Group17.FdChildren.Add(Viewpoint22);
end;

procedure InitViewFrustumExamplePart1;
begin
NavigationInfo23 := TNavigationInfoNode.Create;
NavigationInfo23.SetType(['EXAMINE', 'FLY', 'ANY']);
Group17.FdChildren.Add(NavigationInfo23);
X3DExternalPrototype24 := TX3DExternalPrototype.Create;
X3DExternalPrototype24.X3DName := 'ViewFrustum';
X3DExternalPrototype24.UrlList.Send(['ViewFrustumPrototype.x3d#ViewFrustum']);
FieldVal25 := TSFNode.CreateUndefined(nil, False, 'ViewpointNode');
FieldDecl25 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl25.FieldOrEvent := FieldVal25;
FieldVal25.ParentInterfaceDeclaration := FieldDecl25;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl25);
FieldVal26 := TSFNode.CreateUndefined(nil, False, 'NavigationInfoNode');
FieldDecl26 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl26.FieldOrEvent := FieldVal26;
FieldVal26.ParentInterfaceDeclaration := FieldDecl26;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl26);
FieldVal27 := TSFBool.CreateUndefined(nil, True, 'visible');
FieldDecl27 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl27.FieldOrEvent := FieldVal27;
FieldVal27.ParentInterfaceDeclaration := FieldDecl27;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl27);
FieldVal28 := TSFColor.CreateUndefined(nil, True, 'lineColor');
FieldDecl28 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl28.FieldOrEvent := FieldVal28;
FieldVal28.ParentInterfaceDeclaration := FieldDecl28;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl28);
FieldVal29 := TSFColor.CreateUndefined(nil, True, 'frustumColor');
FieldDecl29 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl29.FieldOrEvent := FieldVal29;
FieldVal29.ParentInterfaceDeclaration := FieldDecl29;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl29);
FieldVal30 := TSFFloat.CreateUndefined(nil, True, 'transparency');
FieldDecl30 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl30.FieldOrEvent := FieldVal30;
FieldVal30.ParentInterfaceDeclaration := FieldDecl30;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl30);
FieldVal31 := TSFFloat.CreateUndefined(nil, True, 'aspectRatio');
FieldDecl31 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl31.FieldOrEvent := FieldVal31;
FieldVal31.ParentInterfaceDeclaration := FieldDecl31;
end;

procedure InitViewFrustumExamplePart2;
begin
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl31);
FieldVal32 := TSFBool.CreateUndefined(nil, False, 'trace');
FieldDecl32 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl32.FieldOrEvent := FieldVal32;
FieldVal32.ParentInterfaceDeclaration := FieldDecl32;
X3DExternalPrototype24.InterfaceDeclarations.Add(FieldDecl32);
X3D0.AddPrototype(X3DExternalPrototype24);
{ Example use }
ProtoInstance33 := TX3DPrototypeNode.CreatePrototypeNode('', '', X3DExternalPrototype24);
Viewpoint35 := TViewpointNode.Create;
Viewpoint35.Description := 'ViewFrustum ViewpointNode';
(ProtoInstance33.Field('ViewpointNode') as TSFNode).Value := Viewpoint35;
NavigationInfo37 := TNavigationInfoNode.Create;
NavigationInfo37.VisibilityLimit := 15;
(ProtoInstance33.Field('NavigationInfoNode') as TSFNode).Value := NavigationInfo37;
(ProtoInstance33.Field('visible') as TSFBool).Value := True;
(ProtoInstance33.Field('lineColor') as TSFColor).Value := Vector3(0.9, 0.9, 0.9);
(ProtoInstance33.Field('frustumColor') as TSFColor).Value := Vector3(0.8, 0.8, 0.8);
(ProtoInstance33.Field('transparency') as TSFFloat).Value := 0.75;
(ProtoInstance33.Field('trace') as TSFBool).Value := True;
Group17.FdChildren.Add(ProtoInstance33.Instantiate);
{ Visualization assists }
Inline43 := TInlineNode.Create;
Inline43.X3DName := 'GridXZ';
Inline43.SetUrl(['GridXZ_20x20Fixed.x3d']);
Group17.FdChildren.Add(Inline43);
Transform44 := TTransformNode.Create;
Transform44.Scale := Vector3(5, 5, 5);
Inline45 := TInlineNode.Create;
Inline45.X3DName := 'CoordinateAxes';
Inline45.SetUrl(['CoordinateAxes.x3d']);
Transform44.FdChildren.Add(Inline45);
Group17.FdChildren.Add(Transform44);
X3D0.AddChildren([Group17]);
end;

function CreateViewFrustumExample: TX3DRootNode;
begin
  InitViewFrustumExamplePart0;
  InitViewFrustumExamplePart1;
  InitViewFrustumExamplePart2;
  Result := X3D0;
end;

begin
end.
