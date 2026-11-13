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

{$I app.inc }
{$I asphere.inc }
{$I ifscube.inc }
{$I ifscubeworks.inc }
{$I IFS.inc }
{$I OrientationInterpolator.inc }
{$I personal.inc }
{$I ThreeInARow.inc }
{$I TransformKids.inc }

{ fields and Protos }

{   abox.inc }
{   app.inc }
{   arc1.inc }
{   arc2.inc }
{   arc3.inc }
{   arc4.inc }
{   arc.inc }
{   arcold.inc }
{   asmallbox.inc }
{   asphere.inc }
{   asteroids.inc }
{   BackToCoordinate.inc }
{   ballcge.inc }
{   ball.inc }
{   ballx3dom.inc }
{   ballx_ite.inc }
{   blenderSkeleton.inc }
{   bobblespheres.inc }
{   BoxEm2.inc }
{   BoxEm.inc }
{   browser.inc }
{   bubble.inc }
{   bub.inc }
{   bubs2.inc }
{   bubs3.inc }
{   bubs.inc }
{   bumpyfreewrl.inc }
{   bumpyfreewrljsonverse.inc }
{   bumpyfreewrlsliders.inc }
{   bumpyx_ite.inc }
{   bumpyx_itesliders.inc }
{   CanonicalFacialAnimationComparisonScripts.inc }
{   cgeparticleflowers.inc }
{   CleanedMultiFacialAnimationMenu.inc }
{   CleanedWink.inc }
{   CleanedYouClocks.inc }
{   DonHumanoid.inc }
{   DonHumanoidNoSegSite.inc }
{   FacialAnimationComparisonScripts.inc }
{   flipp.inc }
{   flower3.inc }
{   flower.inc }
{   flowerprotofreewrl.inc }
{   flowerproto.inc }
{   flowers2.inc }
{   flowers4.inc }
{   flowers7.inc }
{   flowers.inc }
{   force.inc }
{   forcenode.inc }
{   force_tidy.inc }
{   fors2.inc }
{   fors.inc }
{   freewrlflowers.inc }
{   fwparticleflowers.inc }
{   gears.inc }
{   geobubbles.inc }
{   geo.inc }
{   glflowers.inc }
{   Humanoid0.inc }
{   Humanoid1.inc }
{   Humanoid1NoSegSite.inc }
{   Humanoid2.inc }
{   Humanoid2NoSegSite.inc }
{   Humanoid3.inc }
{   Humanoid3NoSegSite.inc }
{   Humanoid4_1.inc }
{   Humanoid4.inc }
{   Humanoid4NoSegSite.inc }
{   ifscube.inc }
{   ifscubeworks.inc }
{   IFS.inc }
{   Jin20fSegmented.inc }
{   JinBlink.inc }
{   JinBrowLowerer.inc }
{   JinCheekPuffer.inc }
{   JinCheekRaiser.inc }
{   JinChinRaiser.inc }
{   JinConcat11c.inc }
{   JinDimpler.inc }
{   JinEyesClosed.inc }
{   JinInnerBrowRaiser.inc }
{   JinJawDrop.inc }
{   JinLidDroop.inc }
{   JinLidTightener.inc }
{   JinLipCornerDepressor.inc }
{   JinLipCornerPuller.inc }
{   JinLipFunneler.inc }
{   JinLipPressor.inc }
{   JinLipPuckerer.inc }
{   JinLipsPart.inc }
{   JinLipStretcher.inc }
{   JinLipSuck.inc }
{   JinLipTightener.inc }
{   JinLOA1.inc }
{   JinLOA1RigidBody.inc }
{   JinLOA4_1.inc }
{   JinLOA4_3.inc }
{   JinLOA4_4.inc }
{   JinLOA4_5.inc }
{   JinLOA4_6.inc }
{   JinLOA4.inc }
{   JinLOA4_scaled1_Final.inc }
{   JinLOA4scaled1joe06c.inc }
{   JinLowerLipDepressor.inc }
{   JinMouthStretch.inc }
{   JinNasolabialDeepener.inc }
{   JinNoseWrinkler.inc }
{   JinOuterBrowRaiser.inc }
{   JinScaledV2L1LOA4OnlyMarkers11g.inc }
{   JinScaledV2L1LOA4Sites07f.inc }
{   JinScaledV2L1LOA4Sites08e.inc }
{   JinScaledV2L1LOA4Sites10h.inc }
{   JinSlit.inc }
{   JinSquint.inc }
{   JinUpperLidRaiser.inc }
{   JinUpperLipRaiser.inc }
{   JinWink.inc }
{   JoeKickAnimation.inc }
{   JoeKick.inc }
{   JohnJoint20.inc }
{   JohnJoint2.inc }
{   JohnJoint.inc }
{   LayerSet.inc }
{   Leif5Final.inc }
{   Leif8Final.inc }
{   Lily5Final.inc }
{   Lily8Final.inc }
{   ManyClocks.inc }
{   Menu.inc }
{   MenuJin.inc }
{   mirror2.inc }
{   mirror.inc }
{   MultiFacialAnimationMenu.inc }
{   MyBounce.inc }
{   myextrusion.inc }
{   New2Template.inc }
{   New2TemplateNoBoxes.inc }
{   OrientationInterpolator.inc }
{   particleballs.inc }
{   particleflowers.inc }
{   personal.inc }
{   plainflowers.inc }
{   pp3.inc }
{   qq3.inc }
{   RouteJin.inc }
{   rubikFurnace.inc }
{   rubik.inc }
{   rubikOnFire.inc }
{   rubikPly.inc }
{   SimpleShader.inc }
{   sliders.inc }
{   sphereflowers.inc }
{   StandardHumanoid.inc }
{   StandardHumanoidNoSegSite.inc }
{   text3shapes.inc }
{   ThreeDTexture.inc }
{   ThreeInARow.inc }
{   TransformKids.inc }
{   Tufani5Final.inc }
{   Tufani8Final.inc }
{   TufaniAnimated.inc }
{   variationalflowers2.inc }
{   variationalflowers.inc }
{   x3domflowers.inc }
{   YehudiMenuJin.inc }

end.
