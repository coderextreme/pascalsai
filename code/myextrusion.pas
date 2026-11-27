unit myextrusion;

interface

uses opensslsockets, X3DNodes, X3DFields, CastleColors, HAnimDisplacerSupport, CastleSceneCore;

function Createmyextrusion: TX3DRootNode;
procedure RegistermyextrusionScripts(const Scene: TCastleSceneCore);
procedure DetachmyextrusionScripts;

implementation

uses SysUtils, CastleVectors, Math, X3DTime;

type
  TScript16Script = class
  private
    FHandlerPrefix: String;
    FInitialized: Boolean;
    Fspine: array of TVector3;
    FField_spine: TMFVec3f;
    FBack_spine: TMFVec3f;
    FDirty_spine: Boolean;
    procedure FlushOutputs(const Time: TX3DTime);
  public
    constructor Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f);
    class function CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript16Script;
    destructor Destroy; override;
    procedure Detach;
    procedure RegisterHandlers(const Scene: TCastleSceneCore);
    property Initialized: Boolean read FInitialized;
    procedure Set_cycle(Value: TX3DField; const Time: TX3DTime);
  end;

  TmyextrusionScriptBinder = class
  public
    procedure BindNode(Node: TX3DNode);
  end;

  TmyextrusionExtrusionHelper = class
  public
    procedure BindNode(Node: TX3DNode);
    procedure SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
  end;

var
  X3D0: TX3DRootNode;
  Group9: TGroupNode;
  Group10: TGroupNode;
  Shape11: TShapeNode;
  Extrusion12: TExtrusionNode;
  Appearance13: TAppearanceNode;
  Material14: TMaterialNode;
  TimeSensor15: TTimeSensorNode;
  Script16: TScriptNode;
  FieldVal17: TX3DEvent;
  FieldVal18: TMFVec3f;
  CompiledScript16List: array of TScript16Script;
  CompiledmyextrusionExtrusionHelper: TmyextrusionExtrusionHelper;

constructor TScript16Script.Create(const AHandlerPrefix: String; const AField_spine: TMFVec3f);
var
  _i: Integer;
begin
  inherited Create;
  FHandlerPrefix := AHandlerPrefix;
  FInitialized := False;
  Fspine := nil;
  FField_spine := nil;
  FBack_spine := TMFVec3f.CreateUndefined(nil, False, 'spine');
  FDirty_spine := False;
  FField_spine := AField_spine;
  if AField_spine <> nil then
  begin
    SetLength(Fspine, AField_spine.Items.Count);
    for _i := 0 to AField_spine.Items.Count - 1 do
      Fspine[_i] := AField_spine.Items[_i];
  end;
end;

class function TScript16Script.CreateForNode(const AScriptNode: TScriptNode; const AHandlerPrefix: String): TScript16Script;
begin
  Result := TScript16Script.Create(AHandlerPrefix, AScriptNode.FieldOrEvent('spine') as TMFVec3f);
end;

destructor TScript16Script.Destroy;
begin
  FreeAndNil(FBack_spine);
  inherited Destroy;
end;

procedure TScript16Script.Detach;
begin
end;

procedure TScript16Script.FlushOutputs(const Time: TX3DTime);
var
  _i: Integer;
begin
  if FDirty_spine then
  begin
    FDirty_spine := False;
    if FField_spine <> nil then
    begin
      FField_spine.Items.Clear;
      FBack_spine.Items.Clear;
      for _i := 0 to High(Fspine) do
      begin
        FField_spine.Items.Add(Fspine[_i]);
        FBack_spine.Items.Add(Fspine[_i]);
      end;
      if (FField_spine.ParentNode is TX3DNode) and (TX3DNode(FField_spine.ParentNode).Scene <> nil) then
        FField_spine.EventOut.Send(FBack_spine, TX3DNode(FField_spine.ParentNode).Scene.NextEventTime)
      else
        FField_spine.EventOut.Send(FBack_spine, Time);
    end;
  end;
end;

procedure TScript16Script.RegisterHandlers(const Scene: TCastleSceneCore);
begin
  Scene.RegisterCompiledScript(FHandlerPrefix + 'set_cycle', {$ifdef FPC}@{$endif}Set_cycle);
end;

procedure TScript16Script.Set_cycle(Value: TX3DField; const Time: TX3DTime);
var
  endA: TVector3;
  endB: TVector3;
  tmpspine: array of TVector3;
begin
  WriteLn((Value as TSFTime).Value);
  endA := Vector3(Fspine[0].X * Random * 2, Fspine[0].Y * Random * 2, Fspine[0].Z * Random * 2);
  endB := Vector3(Fspine[1].X * Random * 2, Fspine[1].Y * Random * 2, Fspine[1].Z * Random * 2);
  tmpspine := [];
  if (0) >= Length(tmpspine) then SetLength(tmpspine, (0) + 1);
  tmpspine[0] := endA;
  if (1) >= Length(tmpspine) then SetLength(tmpspine, (1) + 1);
  tmpspine[1] := endB;
  Fspine := tmpspine;
  FDirty_spine := True;
  FlushOutputs(Time);
end;

procedure TmyextrusionScriptBinder.BindNode(Node: TX3DNode);
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
      'set_cycle=' + Prefix + 'set_cycle']);
    SetLength(CompiledScript16List, Idx + 1);
    CompiledScript16List[Idx] := TScript16Script.CreateForNode(S, Prefix);
    Exit;
  end;
end;

procedure TmyextrusionExtrusionHelper.BindNode(Node: TX3DNode);
begin
  (Node as TExtrusionNode).EventSet_spine.AddNotification({$ifdef FPC}@{$endif}SpineReceive);
end;

procedure TmyextrusionExtrusionHelper.SpineReceive(const Event: TX3DEvent; const Value: TX3DField; const Time: TX3DTime);
var
  Ext: TExtrusionNode;
  NewSpine: TMFVec3f;
begin
  Ext := Event.ParentNode as TExtrusionNode;
  NewSpine := Value as TMFVec3f;
  if not Ext.FdSpine.Equals(NewSpine) then
  begin
    Ext.FdSpine.AssignValue(NewSpine);
    Ext.FdSpine.Changed;
  end;
end;

procedure InitmyextrusionPart0;
begin
X3D0 := TX3DRootNode.Create;
X3D0.Profile := 'Immersive';
X3D0.ForceVersion.Major := 4;
X3D0.ForceVersion.Minor := 0;
X3D0.Meta['creator'] := 'John W Carlson';
X3D0.Meta['created'] := 'December 13 2015';
X3D0.Meta['modified'] := 'November 9 2024';
X3D0.Meta['title'] := 'myextrusion.x3d';
X3D0.Meta['identifier'] := 'https://coderextreme.net/X3DJSONLD/src/main/data/myextrusion.x3d';
X3D0.Meta['description'] := 'beginnings of a force directed graph in 3D';
X3D0.Meta['generator'] := 'Vim, X3D-Edit, https://savage.nps.edu/X3D-Edit';
Group9 := TGroupNode.Create;
Group10 := TGroupNode.Create;
Shape11 := TShapeNode.Create;
Extrusion12 := TExtrusionNode.Create;
Extrusion12.X3DName := 'myextrusion';
Extrusion12.SetSpine([Vector3(-50, -50, 0), Vector3(50, 50, 0)]);
Extrusion12.CreaseAngle := 0.785;
Extrusion12.SetCrossSection([Vector2(1, 0), Vector2(0.92, -0.38), Vector2(0.71, -0.71), Vector2(0.38, -0.92), Vector2(0, -1), Vector2(-0.38, -0.92), Vector2(-0.71, -0.71), Vector2(-0.92, -0.38), Vector2(-1, 0), Vector2(-0.92, 0.38), Vector2(-0.71, 0.71), Vector2(-0.38, 0.92), Vector2(0, 1), Vector2(0.38, 0.92), Vector2(0.71, 0.71), Vector2(0.92, 0.38), Vector2(1, 0)]);
Shape11.Geometry := Extrusion12;
Appearance13 := TAppearanceNode.Create;
Material14 := TMaterialNode.Create;
Material14.DiffuseColor := Vector3(0, 1, 0);
Appearance13.Material := Material14;
Shape11.Appearance := Appearance13;
Group10.FdChildren.Add(Shape11);
TimeSensor15 := TTimeSensorNode.Create;
TimeSensor15.X3DName := 'TourTime';
TimeSensor15.Loop := True;
Group10.FdChildren.Add(TimeSensor15);
Script16 := TScriptNode.Create;
Script16.X3DName := 'MoveCylinder';
FieldVal17 := TSFTime.CreateEvent(Script16, 'set_cycle', True);
Script16.AddCustomFieldOrEvent(FieldVal17);
FieldVal18 := TMFVec3f.Create(Script16, True, 'spine', [Vector3(-50, -50, 0), Vector3(50, 50, 0)]);
Script16.AddCustomFieldOrEvent(FieldVal18);
Script16.SetUrl(['compiled:' + LineEnding +
  'set_cycle=Script16_set_cycle']);
Group10.FdChildren.Add(Script16);
{ ROUTE TourTime.cycleTime TO MoveCylinder.set_cycle }
Group10.AddRoute(TimeSensor15.EventCycleTime, FieldVal17);
end;

procedure InitmyextrusionPart1;
begin
{ ROUTE MoveCylinder.spine_changed TO myextrusion.set_spine }
Group10.AddRoute(FieldVal18.EventOut, Extrusion12.EventSet_spine);
Group9.FdChildren.Add(Group10);
X3D0.AddChildren([Group9]);
end;

function Createmyextrusion: TX3DRootNode;
var
  Binder: TmyextrusionScriptBinder;
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript16List) do
    FreeAndNil(CompiledScript16List[_i]);
  SetLength(CompiledScript16List, 0);
  InitmyextrusionPart0;
  InitmyextrusionPart1;
  Binder := TmyextrusionScriptBinder.Create;
  try
    X3D0.EnumerateNodes(TScriptNode, {$ifdef FPC}@{$endif}Binder.BindNode, False);
  finally
    FreeAndNil(Binder);
  end;
  FreeAndNil(CompiledmyextrusionExtrusionHelper);
  CompiledmyextrusionExtrusionHelper := TmyextrusionExtrusionHelper.Create;
  X3D0.EnumerateNodes(TExtrusionNode, {$ifdef FPC}@{$endif}CompiledmyextrusionExtrusionHelper.BindNode, False);
  Result := X3D0;
end;

procedure RegistermyextrusionScripts(const Scene: TCastleSceneCore);
var
  _i: Integer;
begin
  Randomize;
  for _i := 0 to High(CompiledScript16List) do
  begin
    CompiledScript16List[_i].RegisterHandlers(Scene);
  end;
end;

procedure DetachmyextrusionScripts;
var
  _i: Integer;
begin
  for _i := 0 to High(CompiledScript16List) do
  begin
    CompiledScript16List[_i].Detach;
    FreeAndNil(CompiledScript16List[_i]);
  end;
  SetLength(CompiledScript16List, 0);
end;

finalization
  while Length(CompiledScript16List) > 0 do
  begin
    FreeAndNil(CompiledScript16List[High(CompiledScript16List)]);
    SetLength(CompiledScript16List, Length(CompiledScript16List) - 1);
  end;
  FreeAndNil(CompiledmyextrusionExtrusionHelper);
end.
