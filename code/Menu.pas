unit Menu;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, CastleInternalNodesUnsupported, CastleSceneCore;

function CreateMenu: TX3DRootNode;
procedure RegisterMenuScripts(const Scene: TCastleSceneCore);
procedure DetachMenuScripts;

implementation

uses Classes, SysUtils, X3DLoad, CastleVectors, Math, X3DTime;

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
  TScript55Script_MFStringArray = array of String;
  TScript55Script = class
  private
    FScriptHandlerPrefix: String;
    FScriptInitialized: Boolean;
    FmenuItems: TScript55Script_MFStringArray;
    Fselection: Int32;
    FEvent_selection: TX3DEvent;
    FBack_selection: TSFInt32;
    FDirty_selection: Boolean;
    Fspacing: Single;
    Fsize: Single;
    FmenuCenterY: Single;
    FitemHeight: Single;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_menuItems: TMFString; const AEvent_selection: TX3DEvent; const AField_spacing: TSFFloat; const AField_size: TSFFloat; const AField_menuCenterY: TSFFloat; const AField_itemHeight: TSFFloat);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript55Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FScriptInitialized;
    procedure Initialize(Value: TX3DField; const Time: TX3DTime);
    procedure TouchPoint(Value: TX3DField; const Time: TX3DTime);
  end;

  TMenuScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

var
  X3D0: TX3DRootNode;
  Group5: TGroupNode;
  Viewpoint6: TViewpointNode;
  ProtoDeclare7: TX3DPrototype;
  FieldDecl9: TX3DInterfaceDeclaration;
  FieldVal9: TMFString;
  Group11: TGroupNode;
  Transform12: TTransformNode;
  TouchSensor13: TTouchSensorNode;
  Shape14: TShapeNode;
  Appearance15: TAppearanceNode;
  Material16: TMaterialNode;
  Text17: TTextNode;
  FontStyle18: TFontStyleNode;
  Shape19: TShapeNode;
  Appearance20: TAppearanceNode;
  Material21: TMaterialNode;
  IndexedFaceSet22: TIndexedFaceSetNode;
  Coordinate23: TCoordinateNode;
  Switch24: TSwitchNode;
  Inline25: TInlineNode;
  Inline26: TInlineNode;
  Inline27: TInlineNode;
  Inline28: TInlineNode;
  Inline29: TInlineNode;
  Inline30: TInlineNode;
  Inline31: TInlineNode;
  Inline32: TInlineNode;
  Inline33: TInlineNode;
  Inline34: TInlineNode;
  Inline35: TInlineNode;
  Inline36: TInlineNode;
  Inline37: TInlineNode;
  Inline38: TInlineNode;
  Inline39: TInlineNode;
  Inline40: TInlineNode;
  Inline41: TInlineNode;
  Inline42: TInlineNode;
  Inline43: TInlineNode;
  Inline44: TInlineNode;
  Inline45: TInlineNode;
  Inline46: TInlineNode;
  Inline47: TInlineNode;
  Inline48: TInlineNode;
  Inline49: TInlineNode;
  Inline50: TInlineNode;
  Inline51: TInlineNode;
  Inline52: TInlineNode;
  Inline53: TInlineNode;
  Inline54: TInlineNode;
  Script55: TScriptNode;
  FieldVal56: TMFString;
  FieldVal57: TX3DEvent;
  FieldVal58: TX3DEvent;
  FieldVal59: TSFFloat;
  FieldVal60: TSFFloat;
  FieldVal61: TSFFloat;
  FieldVal62: TSFFloat;
  CompiledScript55List: array of TScript55Script;
  ProtoInstance65: TX3DPrototypeNode;

constructor TScript55Script.Create(const AHandlerPrefix: String; const AField_menuItems: TMFString; const AEvent_selection: TX3DEvent; const AField_spacing: TSFFloat; const AField_size: TSFFloat; const AField_menuCenterY: TSFFloat; const AField_itemHeight: TSFFloat);
var
  _i: Integer;
begin
  inherited Create;
  FScriptHandlerPrefix := AHandlerPrefix;
  FScriptInitialized := False;
  FmenuItems := nil;
  Fselection := 0;
  FEvent_selection := nil;
  FBack_selection := TSFInt32.Create(nil, False, 'selection', 0);
  FDirty_selection := False;
  Fspacing := 0.0;
  Fsize := 0.0;
  FmenuCenterY := 0.0;
  FitemHeight := 0.0;
  if AField_menuItems <> nil then
  begin
    SetLength(FmenuItems, AField_menuItems.Items.Count);
    for _i := 0 to AField_menuItems.Items.Count - 1 do
      FmenuItems[_i] := AField_menuItems.Items[_i];
  end;
  FEvent_selection := AEvent_selection;
  if AField_spacing <> nil then Fspacing := AField_spacing.Value;
  if AField_size <> nil then Fsize := AField_size.Value;
  if AField_menuCenterY <> nil then FmenuCenterY := AField_menuCenterY.Value;
  if AField_itemHeight <> nil then FitemHeight := AField_itemHeight.Value;
end;

class function TScript55Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript55Script;
begin
  Result := TScript55Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('menuItems') as TMFString, AScriptNode.AnyEvent('selection'), AScriptNode.FieldOrEvent('spacing') as TSFFloat, AScriptNode.FieldOrEvent('size') as TSFFloat, AScriptNode.FieldOrEvent('menuCenterY') as TSFFloat, AScriptNode.FieldOrEvent('itemHeight') as TSFFloat);
end;

destructor TScript55Script.Destroy;
begin
  FreeAndNil(FBack_selection);
  inherited Destroy;
end;

procedure TScript55Script.Detach;
begin
end;

procedure TScript55Script.FlushOutputs(const Time: TX3DTime);
begin
  if FDirty_selection then
  begin
    FDirty_selection := False;
    if FEvent_selection <> nil then
    begin
      FBack_selection.Value := Fselection;
      FEvent_selection.Send(FBack_selection, Time);
    end;
  end;
end;

procedure TScript55Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'initialize', {$ifdef FPC}@{$endif}Initialize);
  Scene.RegisterCompiledScript(FScriptHandlerPrefix + 'touchPoint', {$ifdef FPC}@{$endif}TouchPoint);
end;

procedure TScript55Script.Initialize(Value: TX3DField; const Time: TX3DTime);
var
  spacingBetweenGlyphs: Single;
  menuHeight: Single;
begin
  FScriptInitialized := True;
  Fselection := 0;
  FDirty_selection := True;
  spacingBetweenGlyphs := Fsize * Fspacing - Fsize;
  menuHeight := (Fsize + spacingBetweenGlyphs) * Length(FmenuItems);
  FmenuCenterY := menuHeight / 2;
  FitemHeight := menuHeight / Length(FmenuItems);
  FlushOutputs(Time);
end;

procedure TScript55Script.TouchPoint(Value: TX3DField; const Time: TX3DTime);
var
  index: Integer;
begin
  WriteLn('Hit ' + (Value as TSFVec3f).Value.ToString + ' ' + IntToStr(Fselection) + #10);
  index := Floor((FmenuCenterY - (Value as TSFVec3f).Value.Y) / FitemHeight - 0.5);
  Fselection := index - 2;
  FDirty_selection := True;
  if (Fselection >= 0) and (Fselection < Length(FmenuItems)) then
  begin
    WriteLn('Selected ' + (Value as TSFVec3f).Value.ToString + ' ' + IntToStr(Fselection) + ' ' + FmenuItems[Fselection] + #10);
  end;
  FlushOutputs(Time);
end;

procedure TMenuScriptBinder.BindNode(Node: TX3DNode);
var
  S: TScriptNode;
  UrlText, Prefix: String;
  Idx: Integer;
begin
  S := Node as TScriptNode;
  if S.FdUrl.Items.Count = 0 then Exit;
  UrlText := S.FdUrl.Items.Text;
  if Pos('=Script55_', UrlText) > 0 then
  begin
    Idx := Length(CompiledScript55List);
    Prefix := 'Script55_' + IntToStr(Idx) + '_';
    S.SetUrl(['compiled:' + LineEnding +
      'initialize=' + Prefix + 'initialize' + LineEnding +
      'touchPoint=' + Prefix + 'touchPoint']);
    SetLength(CompiledScript55List, Idx + 1);
    CompiledScript55List[Idx] := TScript55Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure InitMenuPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['title'] := 'Menu.x3d';
X3D0.Meta['creator'] := 'John Carlson';
X3D0.Meta['description'] := 'X3D scene with a Switch of Inlines controlled by a menu';
Group5 := TGroupNode.Create;
{ Viewpoint and any other scene setup }
Viewpoint6 := TViewpointNode.Create;
Viewpoint6.Position := Vector3(0, 20, 110);
Group5.FdChildren.Add(Viewpoint6);
{ Menu prototype declaration }
ProtoDeclare7 := CreateEmptyPrototype('Menu');
ProtoDeclare7.X3DName := 'Menu';
FieldVal9 := TMFString.CreateUndefined(nil, False, 'menuItems');
FieldDecl9 := TX3DInterfaceDeclaration.Create(nil);
FieldDecl9.FieldOrEvent := FieldVal9;
FieldVal9.ParentInterfaceDeclaration := FieldDecl9;
ProtoDeclare7.InterfaceDeclarations.Add(FieldDecl9);
Group11 := TGroupNode.Create;
Transform12 := TTransformNode.Create;
Transform12.X3DName := 'TextMenuTransform';
Transform12.Translation := Vector3(48, 27, 0);
TouchSensor13 := TTouchSensorNode.Create;
TouchSensor13.X3DName := 'MenuTouchSensor';
Transform12.FdChildren.Add(TouchSensor13);
Shape14 := TShapeNode.Create;
Appearance15 := TAppearanceNode.Create;
Material16 := TMaterialNode.Create;
Material16.DiffuseColor := Vector3(1, 1, 1);
Appearance15.Material := Material16;
Shape14.Appearance := Appearance15;
Text17 := TTextNode.Create;
Text17.X3DName := 'MenuText';
Text17.FieldOrEvent('string', True).IsClauseNamesAdd('menuItems');
FontStyle18 := TFontStyleNode.Create;
FontStyle18.Size := 2.4;
FontStyle18.Spacing := 1.2;
FontStyle18.Justify := fjMiddle;
end;

procedure InitMenuPart1;
begin
FontStyle18.JustifyMinor := fjMiddle;
Text17.FontStyle := FontStyle18;
Shape14.Geometry := Text17;
Transform12.FdChildren.Add(Shape14);
Shape19 := TShapeNode.Create;
Appearance20 := TAppearanceNode.Create;
Material21 := TMaterialNode.Create;
Material21.DiffuseColor := Vector3(0, 0, 1);
Appearance20.Material := Material21;
Shape19.Appearance := Appearance20;
IndexedFaceSet22 := TIndexedFaceSetNode.Create;
IndexedFaceSet22.X3DName := 'Backing';
IndexedFaceSet22.SetCoordIndex([0, 1, 2, 3, -1]);
Coordinate23 := TCoordinateNode.Create;
Coordinate23.SetPoint([Vector3(25, 36, -0.01), Vector3(-25, 36, -0.01), Vector3(-25, -51, -0.01), Vector3(25, -51, -0.01)]);
IndexedFaceSet22.Coord := Coordinate23;
Shape19.Geometry := IndexedFaceSet22;
Transform12.FdChildren.Add(Shape19);
Group11.FdChildren.Add(Transform12);
Switch24 := TSwitchNode.Create;
Switch24.X3DName := 'SceneSwitcher';
Switch24.WhichChoice := 0;
Inline25 := TInlineNode.Create;
Inline25.X3DName := 'OPTION1';
Inline25.SetUrl(['../resources/JinInnerBrowRaiser.x3d', 'JinInnerBrowRaiser.x3d']);
Switch24.FdChildren.Add(Inline25);
Inline26 := TInlineNode.Create;
Inline26.X3DName := 'OPTION2';
Inline26.SetUrl(['../resources/JinOuterBrowRaiser.x3d', 'JinOuterBrowRaiser.x3d']);
Switch24.FdChildren.Add(Inline26);
Inline27 := TInlineNode.Create;
Inline27.X3DName := 'OPTION3';
Inline27.SetUrl(['../resources/JinBrowLowerer.x3d', 'JinBrowLowerer.x3d']);
Switch24.FdChildren.Add(Inline27);
Inline28 := TInlineNode.Create;
Inline28.X3DName := 'OPTION4';
Inline28.SetUrl(['../resources/JinUpperLidRaiser.x3d', 'JinUpperLidRaiser.x3d']);
Switch24.FdChildren.Add(Inline28);
Inline29 := TInlineNode.Create;
Inline29.X3DName := 'OPTION5';
end;

procedure InitMenuPart2;
begin
Inline29.SetUrl(['../resources/JinCheekRaiser.x3d', 'JinCheekRaiser.x3d']);
Switch24.FdChildren.Add(Inline29);
Inline30 := TInlineNode.Create;
Inline30.X3DName := 'OPTION6';
Inline30.SetUrl(['../resources/JinLidTightener.x3d', 'JinLidTightener.x3d']);
Switch24.FdChildren.Add(Inline30);
Inline31 := TInlineNode.Create;
Inline31.X3DName := 'OPTION7';
Inline31.SetUrl(['../resources/JinNoseWrinkler.x3d', 'JinNoseWrinkler.x3d']);
Switch24.FdChildren.Add(Inline31);
Inline32 := TInlineNode.Create;
Inline32.X3DName := 'OPTION8';
Inline32.SetUrl(['../resources/JinUpperLipRaiser.x3d', 'JinUpperLipRaiser.x3d']);
Switch24.FdChildren.Add(Inline32);
Inline33 := TInlineNode.Create;
Inline33.X3DName := 'OPTION9';
Inline33.SetUrl(['../resources/JinNasolabialDeepener.x3d', 'JinNasolabialDeepener.x3d']);
Switch24.FdChildren.Add(Inline33);
Inline34 := TInlineNode.Create;
Inline34.X3DName := 'OPTION10';
Inline34.SetUrl(['../resources/JinLipCornerPuller.x3d', 'JinLipCornerPuller.x3d']);
Switch24.FdChildren.Add(Inline34);
Inline35 := TInlineNode.Create;
Inline35.X3DName := 'OPTION11';
Inline35.SetUrl(['../resources/JinCheekPuffer.x3d', 'JinCheekPuffer.x3d']);
Switch24.FdChildren.Add(Inline35);
Inline36 := TInlineNode.Create;
Inline36.X3DName := 'OPTION12';
Inline36.SetUrl(['../resources/JinDimpler.x3d', 'JinDimpler.x3d']);
Switch24.FdChildren.Add(Inline36);
Inline37 := TInlineNode.Create;
Inline37.X3DName := 'OPTION13';
Inline37.SetUrl(['../resources/JinLipCornerDepressor.x3d', 'JinLipCornerDepressor.x3d']);
Switch24.FdChildren.Add(Inline37);
Inline38 := TInlineNode.Create;
Inline38.X3DName := 'OPTION14';
Inline38.SetUrl(['../resources/JinLowerLipDepressor.x3d', 'JinLowerLipDepressor.x3d']);
Switch24.FdChildren.Add(Inline38);
Inline39 := TInlineNode.Create;
Inline39.X3DName := 'OPTION15';
end;

procedure InitMenuPart3;
begin
Inline39.SetUrl(['../resources/JinChinRaiser.x3d', 'JinChinRaiser.x3d']);
Switch24.FdChildren.Add(Inline39);
Inline40 := TInlineNode.Create;
Inline40.X3DName := 'OPTION16';
Inline40.SetUrl(['../resources/JinLipPuckerer.x3d', 'JinLipPuckerer.x3d']);
Switch24.FdChildren.Add(Inline40);
Inline41 := TInlineNode.Create;
Inline41.X3DName := 'OPTION17';
Inline41.SetUrl(['../resources/JinLipStretcher.x3d', 'JinLipStretcher.x3d']);
Switch24.FdChildren.Add(Inline41);
Inline42 := TInlineNode.Create;
Inline42.X3DName := 'OPTION18';
Inline42.SetUrl(['../resources/JinLipFunneler.x3d', 'JinLipFunneler.x3d']);
Switch24.FdChildren.Add(Inline42);
Inline43 := TInlineNode.Create;
Inline43.X3DName := 'OPTION19';
Inline43.SetUrl(['../resources/JinLipTightener.x3d', 'JinLipTightener.x3d']);
Switch24.FdChildren.Add(Inline43);
Inline44 := TInlineNode.Create;
Inline44.X3DName := 'OPTION20';
Inline44.SetUrl(['../resources/JinLipPressor.x3d', 'JinLipPressor.x3d']);
Switch24.FdChildren.Add(Inline44);
Inline45 := TInlineNode.Create;
Inline45.X3DName := 'OPTION21';
Inline45.SetUrl(['../resources/JinLipsPart.x3d', 'JinLipsPart.x3d']);
Switch24.FdChildren.Add(Inline45);
Inline46 := TInlineNode.Create;
Inline46.X3DName := 'OPTION22';
Inline46.SetUrl(['../resources/JinJawDrop.x3d', 'JinJawDrop.x3d']);
Switch24.FdChildren.Add(Inline46);
Inline47 := TInlineNode.Create;
Inline47.X3DName := 'OPTION23';
Inline47.SetUrl(['../resources/JinMouthStretch.x3d', 'JinMouthStretch.x3d']);
Switch24.FdChildren.Add(Inline47);
Inline48 := TInlineNode.Create;
Inline48.X3DName := 'OPTION24';
Inline48.SetUrl(['../resources/JinLipSuck.x3d', 'JinLipSuck.x3d']);
Switch24.FdChildren.Add(Inline48);
Inline49 := TInlineNode.Create;
Inline49.X3DName := 'OPTION25';
end;

procedure InitMenuPart4;
begin
Inline49.SetUrl(['../resources/JinLidDroop.x3d', 'JinLidDroop.x3d']);
Switch24.FdChildren.Add(Inline49);
Inline50 := TInlineNode.Create;
Inline50.X3DName := 'OPTION26';
Inline50.SetUrl(['../resources/JinSlit.x3d', 'JinSlit.x3d']);
Switch24.FdChildren.Add(Inline50);
Inline51 := TInlineNode.Create;
Inline51.X3DName := 'OPTION27';
Inline51.SetUrl(['../resources/JinEyesClosed.x3d', 'JinEyesClosed.x3d']);
Switch24.FdChildren.Add(Inline51);
Inline52 := TInlineNode.Create;
Inline52.X3DName := 'OPTION28';
Inline52.SetUrl(['../resources/JinSquint.x3d', 'JinSquint.x3d']);
Switch24.FdChildren.Add(Inline52);
Inline53 := TInlineNode.Create;
Inline53.X3DName := 'OPTION29';
Inline53.SetUrl(['../resources/JinBlink.x3d', 'JinBlink.x3d']);
Switch24.FdChildren.Add(Inline53);
Inline54 := TInlineNode.Create;
Inline54.X3DName := 'OPTION30';
Inline54.SetUrl(['../resources/JinWink.x3d', 'JinWink.x3d']);
Switch24.FdChildren.Add(Inline54);
Group11.FdChildren.Add(Switch24);
{ Script to handle selection logic }
Script55 := TScriptNode.Create;
Script55.X3DName := 'MenuScript';
FieldVal56 := TMFString.CreateUndefined(Script55, False, 'menuItems');
Script55.AddCustomFieldOrEvent(FieldVal56);
FieldVal57 := TSFInt32.CreateEvent(Script55, 'selection', False);
Script55.AddCustomFieldOrEvent(FieldVal57);
FieldVal58 := TSFVec3f.CreateEvent(Script55, 'touchPoint', True);
Script55.AddCustomFieldOrEvent(FieldVal58);
FieldVal59 := TSFFloat.Create(Script55, False, 'spacing', 1.2);
Script55.AddCustomFieldOrEvent(FieldVal59);
FieldVal60 := TSFFloat.Create(Script55, False, 'size', 2.4);
Script55.AddCustomFieldOrEvent(FieldVal60);
FieldVal61 := TSFFloat.CreateUndefined(Script55, False, 'menuCenterY');
Script55.AddCustomFieldOrEvent(FieldVal61);
FieldVal62 := TSFFloat.CreateUndefined(Script55, False, 'itemHeight');
Script55.AddCustomFieldOrEvent(FieldVal62);
end;

procedure InitMenuPart5;
begin
Script55.FieldOrEvent('menuItems', True).IsClauseNamesAdd('menuItems');
Script55.SetUrl(['compiled:' + LineEnding +
  'initialize=Script55_initialize' + LineEnding +
  'touchPoint=Script55_touchPoint']);
Group11.FdChildren.Add(Script55);
{ ROUTEs to connect everything }
{ ROUTE MenuTouchSensor.hitPoint_changed TO MenuScript.touchPoint }
Group11.AddRoute(TouchSensor13.EventHitPoint_changed, FieldVal58);
{ ROUTE MenuScript.selection TO SceneSwitcher.whichChoice }
Group11.AddRoute(FieldVal57, Switch24.FdWhichChoice.EventIn);
ProtoDeclare7.Node.AddChildren([Group11]);
X3D0.AddPrototype(ProtoDeclare7);
ProtoInstance65 := TX3DPrototypeNode.CreatePrototypeNode('', '', ProtoDeclare7);
ProtoInstance65.X3DName := 'MainMenu';
(ProtoInstance65.Field('menuItems') as TMFString).Send(['JinInnerBrowRaiser.x3d', 'JinOuterBrowRaiser.x3d', 'JinBrowLowerer.x3d', 'JinUpperLidRaiser.x3d', 'JinCheekRaiser.x3d', 'JinLidTightener.x3d', 'JinNoseWrinkler.x3d', 'JinUpperLipRaiser.x3d', 'JinNasolabialDeepener.x3d', 'JinLipCornerPuller.x3d', 'JinCheekPuffer.x3d', 'JinDimpler.x3d', 'JinLipCornerDepressor.x3d', 'JinLowerLipDepressor.x3d', 'JinChinRaiser.x3d', 'JinLipPuckerer.x3d', 'JinLipStretcher.x3d', 'JinLipFunneler.x3d', 'JinLipTightener.x3d', 'JinLipPressor.x3d', 'JinLipsPart.x3d', 'JinJawDrop.x3d', 'JinMouthStretch.x3d', 'JinLipSuck.x3d', 'JinLidDroop.x3d', 'JinSlit.x3d', 'JinEyesClosed.x3d', 'JinSquint.x3d', 'JinBlink.x3d', 'JinWink.x3d']);
Group5.FdChildren.Add(ProtoInstance65.Instantiate);
X3D0.AddChildren([Group5]);
end;

function CreateMenu: TX3DRootNode;
var
  Binder: TMenuScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript55List) do
    FreeAndNil(CompiledScript55List[_i]);
  SetLength(CompiledScript55List, 0);
  InitMenuPart0;
  InitMenuPart1;
  InitMenuPart2;
  InitMenuPart3;
  InitMenuPart4;
  InitMenuPart5;
  Binder := TMenuScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  Result := X3D0;
end;

procedure RegisterMenuScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript55List) do
  begin
    CompiledScript55List[_i].RegisterHandlers(Scene);
    if (Scene.RootNode <> nil) and Scene.ProcessEvents and (not CompiledScript55List[_i].Initialized) then
      CompiledScript55List[_i].Initialize(nil, Scene.NextEventTime);
  end;
end;

procedure DetachMenuScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript55List) do
  begin
    CompiledScript55List[_i].Detach;
    FreeAndNil(CompiledScript55List[_i]);
  end;
  SetLength(CompiledScript55List, 0);
end;

finalization
  while Length(CompiledScript55List) > 0 do
  begin
    FreeAndNil(CompiledScript55List[High(CompiledScript55List)]);
    SetLength(CompiledScript55List, Length(CompiledScript55List) - 1);
  end;
end.
