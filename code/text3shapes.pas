unit text3shapes;

interface

uses X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function Createtext3shapes: TX3DRootNode;
procedure Registertext3shapesScripts(const Scene: TCastleSceneCore);

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript25Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    FfrontUrls: array of String;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_frontUrls: TMFString);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript25Script;
    destructor Destroy; override;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
  end;

  Ttext3shapesScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group8: TGroupNode;
  Transform9: TTransformNode;
  Shape10: TShapeNode;
  Text11: TTextNode;
  FontStyle12: TFontStyleNode;
  Appearance13: TAppearanceNode;
  Material14: TMaterialNode;
  Shape15: TShapeNode;
  Text16: TTextNode;
  FontStyle17: TFontStyleNode;
  Appearance18: TAppearanceNode;
  Material19: TMaterialNode;
  Shape20: TShapeNode;
  Text21: TTextNode;
  FontStyle22: TFontStyleNode;
  Appearance23: TAppearanceNode;
  Material24: TMaterialNode;
  Script25: TScriptNode;
  FieldVal26: TMFString;
  CompiledScript25List: array of TScript25Script;

constructor TScript25Script.Create(const AHandlerPrefix: String; const AField_frontUrls: TMFString);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  FfrontUrls := nil;
  if AField_frontUrls <> nil then
  begin
    SetLength(FfrontUrls, AField_frontUrls.Items.Count);
    for _i := 0 to AField_frontUrls.Items.Count - 1 do
      FfrontUrls[_i] := AField_frontUrls.Items[_i];
  end;
end;

class function TScript25Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript25Script;
begin
  Result := TScript25Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('frontUrls') as TMFString);
end;

destructor TScript25Script.Destroy;
begin
  inherited Destroy;
end;

procedure TScript25Script.FlushOutputs(const Time: TX3DTime);
begin
end;

procedure TScript25Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
end;

procedure Ttext3shapesScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
end;

procedure Inittext3shapesPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['creator'] := 'John W Carlson';
X3D0.Meta['created'] := 'December 13 2015';
X3D0.Meta['title'] := 'text3shapes.x3d';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/text3shapes.x3d';
X3D0.Meta['description'] := '3 text shapes';
X3D0.Meta['generator'] := 'Vim, X3D-Edit, https://savage.nps.edu/X3D-Edit';
Group8 := TGroupNode.Create;
Transform9 := TTransformNode.Create;
Shape10 := TShapeNode.Create;
Text11 := TTextNode.Create;
Text11.SetText(['Node"""']);
FontStyle12 := TFontStyleNode.Create;
Text11.FontStyle := FontStyle12;
Shape10.Geometry := Text11;
Appearance13 := TAppearanceNode.Create;
Material14 := TMaterialNode.Create;
Appearance13.Material := Material14;
Shape10.Appearance := Appearance13;
Transform9.FdChildren.Add(Shape10);
Shape15 := TShapeNode.Create;
Text16 := TTextNode.Create;
Text16.SetText(['Node2', '\\\Node2']);
FontStyle17 := TFontStyleNode.Create;
Text16.FontStyle := FontStyle17;
Shape15.Geometry := Text16;
Appearance18 := TAppearanceNode.Create;
Material19 := TMaterialNode.Create;
Appearance18.Material := Material19;
Shape15.Appearance := Appearance18;
Transform9.FdChildren.Add(Shape15);
Shape20 := TShapeNode.Create;
Text21 := TTextNode.Create;
Text21.SetText(['Node3 \\ \ Node3"""']);
FontStyle22 := TFontStyleNode.Create;
Text21.FontStyle := FontStyle22;
Shape20.Geometry := Text21;
end;

procedure Inittext3shapesPart1;
begin
Appearance23 := TAppearanceNode.Create;
Material24 := TMaterialNode.Create;
Appearance23.Material := Material24;
Shape20.Appearance := Appearance23;
Transform9.FdChildren.Add(Shape20);
Script25 := TScriptNode.Create;
FieldVal26 := TMFString.Create(Script25, False, 'frontUrls', ['rnl_front.png', 'uffizi_front.png']);
Script25.AddCustomFieldOrEvent(FieldVal26);
Script25.SetUrl(['compiled:' + LineEnding +
  '']);
Transform9.FdChildren.Add(Script25);
Group8.FdChildren.Add(Transform9);
X3D0.AddChildren([Group8]);
end;

function Createtext3shapes: TX3DRootNode;
var
  Binder: Ttext3shapesScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript25List) do
    FreeAndNil(CompiledScript25List[_i]);
  SetLength(CompiledScript25List, 0);
  Inittext3shapesPart0;
  Inittext3shapesPart1;
  Binder := Ttext3shapesScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure Registertext3shapesScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript25List) do
  begin
    CompiledScript25List[_i].RegisterHandlers(Scene);
  end;
end;

finalization
  while Length(CompiledScript25List) > 0 do
  begin
    FreeAndNil(CompiledScript25List[High(CompiledScript25List)]);
    SetLength(CompiledScript25List, Length(CompiledScript25List) - 1);
  end;
end.
