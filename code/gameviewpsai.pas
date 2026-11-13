{ Main view, where most of the application logic takes place.

  Feel free to use this code as a starting point for your own projects.
  This template code is in public domain, unlike most other CGE code which
  is covered by BSD or LGPL (see https://castle-engine.io/license). }
unit GameViewPSAI;

interface

uses Classes, X3DNodes,
  CastleVectors, CastleComponentSerialize,
  CastleVectorsInternalDouble,
  CastleVectorsInternalSingle,
  CastleUIControls, CastleControls, CastleKeysMouse,
  CastleInternalNodesUnsupported,
  CastleImages,
  CastleScene, CastleColors, CastleSceneCore, X3DFields;

type
  { Main view, where most of the application logic takes place. }
  TViewPSAI = class(TCastleView)
  published
    { Components designed using CGE editor.
      These fields will be automatically initialized at Start. }
    LabelFps: TCastleLabel;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Start; override;
    procedure Update(const SecondsPassed: Single; var HandleInput: Boolean); override;
    function Press(const Event: TInputPressRelease): Boolean; override;
  end;

var
  ViewPSAI: TViewPSAI;

implementation

uses SysUtils;

{ This function is from Claude.ai }
function MakeMatrix4(const V: array of Single): TMatrix4;
var
  I: Integer;
begin
  for I := 0 to 15 do
    Result.Data[I div 4, I mod 4] := V[I];
end;

{ This function is from Claude.ai }
function MakeRGBAImage(const W, H: Cardinal; const Pixels: array of LongInt): TRGBAlphaImage;
var
  I: Integer;
  P: PByte;
  V: LongWord;
begin
  Result := TRGBAlphaImage.Create(W, H);
  P := PByte(Result.RawPixels);
  for I := 0 to High(Pixels) do
  begin
    V := LongWord(Pixels[I]);          { X3D packs pixels as 0xRRGGBBAA }
    P[0] := (V shr 24) and $FF;        { R }
    P[1] := (V shr 16) and $FF;        { G }
    P[2] := (V shr 8)  and $FF;        { B }
    P[3] := V and $FF;                 { A }
    Inc(P, 4);
  end;
end;

{ TViewPSAI ----------------------------------------------------------------- }

constructor TViewPSAI.Create(AOwner: TComponent);
begin
  inherited;
  DesignUrl := 'castle-data:/gameviewpsai.castle-user-interface';
end;

procedure TViewPSAI.Start;
begin
  inherited;
end;

procedure TViewPSAI.Update(const SecondsPassed: Single; var HandleInput: Boolean);
begin
  inherited;
  { This virtual method is executed every frame (many times per second). }
  Assert(LabelFps <> nil, 'If you remove LabelFps from the design, remember to remove also the assignment "LabelFps.Caption := ..." from code');
  LabelFps.Caption := 'FPS: ' + Container.Fps.ToString;
end;

function TViewPSAI.Press(const Event: TInputPressRelease): Boolean;
begin
  Result := inherited;
  if Result then Exit; // allow the ancestor to handle keys

  { This virtual method is executed when user presses
    a key, a mouse button, or touches a touch-screen.

    Note that each UI control has also events like OnPress and OnClick.
    These events can be used to handle the "press", if it should do something
    specific when used in that UI control.
    The TViewPSAI.Press method should be used to handle keys
    not handled in children controls.
  }

  // Use this to handle keys:
  {
  if Event.IsKey(keyXxx) then
  begin
    // DoSomething;
    Exit(true); // key was handled
  end;
  }
end;

{$I AllenBox.inc }
{$I app.inc }
{$I ArchHalf.inc }
{$I asphere.inc }
{$I Bubbles.inc }
{$I Bushes.inc }
{$I CameraShape.inc }
{$I Cane.inc }
{$I CleatClamp.inc }
{$I CleatClamp_MeshLab.inc }
{$I CleatClamp_MeshLabLauncherTidy.inc }
{$I CoordinateAxes.inc }
{$I ExtrusionHeart.inc }
{   flipp.inc }
{$I gears.inc }
{$I gridBack.inc }
{$I GridXZ_20x20Fixed.inc }
{$I HelloWorldCommented.inc }
{$I HelloWorld.inc }
{$I HelloWorldMinimal.inc }
{$I HelloWorldNoXmlNoDoctype.inc }
{$I IcosahedronSubdivisionLevel5.inc }
{$I ifscube.inc }
{$I ifscubeworks.inc }
{$I IFS.inc }
{$I InlineSoundSource.inc }
{$I JointCoordinateAxes.inc }
{$I MainStage.inc }
{$I Marine.inc }
{$I MaskAndSnorkel.inc }
{$I MultiTextureDesignPattern.inc }
{$I OrientationInterpolator.inc }
{   Pathway.inc }
{$I personal.inc }
{$I rgb_alpha.inc }
{$I RotationTests.inc }
{$I ScubaTank.inc }
{   SheenCloth.inc }
{   Size2tExample_revision2.inc }
{$I SmokeTestProgramOutput_MeshLabImport.inc }
{   SpatialAudioCameraAnimation.inc }
{   SplitChannels.inc }
{$I SquawLOD023.inc }
{$I StringArrayEncodingExamples.inc }
{$I Teapot.inc }
{$I TextExamples.inc }
{$I ThreeInARow.inc }
{$I TransformKids.inc }

{ fields and Protos }

{   abox.inc }
{   arc1.inc }
{   ArchPrototype.inc }
{   arc.inc }
{   arcold.inc }
{   asmallbox.inc }
{   BackToCoordinate.inc }
{   ball.inc }
{   bobblespheres.inc }
{   BoxEm2.inc }
{   BoxEm.inc }
{   bub.inc }
{   bumpyfreewrljsonverse.inc }
{   bumpyfreewrlsliders.inc }
{   bumpyx_itesliders.inc }
{   CaliforniaCampuses.inc }
{   CameraPrototypes.inc }
{   CanonicalFacialAnimationComparisonScripts.inc }
{   cgeparticleflowers.inc }
{   CleanedMultiFacialAnimationMenu.inc }
{   CleanedYouClocks.inc }
{   Connectors.inc }
{   FacialAnimationComparisonScripts.inc }
{   flower3.inc }
{   flower.inc }
{   flowerprotofreewrl.inc }
{   flowerproto.inc }
{   flowers2.inc }
{   flowers7.inc }
{   flowers.inc }
{   force.inc }
{   forcenode.inc }
{   force_tidy.inc }
{   fors2.inc }
{   fors.inc }
{   freewrlflowers.inc }
{   glflowers.inc }
{   HAnimBehaviorPrototypes.inc }
{   HAnimPoseExternProtoDeclare.inc }
{   HAnimPosePrototype.inc }
{   jumpcut_loadurl.inc }
{   ManyClocks.inc }
{   Menu.inc }
{   MultiFacialAnimationMenu.inc }
{   ObliqueStrategies.inc }
{   particleballs.inc }
{   personal.inc }
{   plainflowers.inc }
{   rubikFurnace.inc }
{   rubik.inc }
{   rubikOnFire.inc }
{   rubikPly.inc }
{   sliders.inc }
{   SmokeTestProgramOutputCanonical.inc }
{   SmokeTestProgramOutput_CommandLine.inc }
{   SmokeTestProgramOutput_CommandLineUnzipped.inc }
{   SmokeTestProgramOutput.inc }
{   SmokeTestProgramOutput_JavaExport.inc }
{   SmokeTestProgramOutput_ReloadedDOM.inc }
{   SmokeTestProgramOutputTidy_CommandLine.inc }
{   SmokeTestProgramOutputTidy.inc }
{   SpatialAudioCameraAnimation.inc }
{   sphereflowers.inc }
{   StringArrayEncodingExamples.inc }
{   temp.exiInputTransformed.inc }
{   ThreeDTexture.inc }
{   variationalflowers.inc }
{   ViewFrustumExample.inc }
{   x3dconnector.inc }
{   x3dconnectorProto.inc }
{   x3domflowers.inc }

end.
