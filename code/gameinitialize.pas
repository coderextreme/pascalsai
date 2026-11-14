{ This unit is cross-platform.
  It will be used by the platform-specific program or library file.

  Feel free to use this code as a starting point for your own projects.
  This template code is in public domain, unlike most other CGE code which
  is covered by BSD or LGPL (see https://castle-engine.io/license). }
unit GameInitialize;

interface

implementation

uses SysUtils,
  CastleWindow, CastleLog, CastleUIControls, CastleScene, CastleViewport,
  CastleCameras, CastleVectors, CastleColors,
  X3DNodes,

AllenBox,
app,
ArchHalf,
ArchPrototype,
arcold,
arc,
ArtDecoExamples,
ArtDecoPrototypes,
asmallbox,
asphere,
asteroids,
BackToCoordinate,
ballcge,
ball,
ballx3dom,
ballx_ite,
blenderSkeleton,
bobblespheres,
BoxEm2,
BoxEm,
browser,
bubble,
Bubbles,
bub,
bubs2,
bubs3,
bubs,
bumpyfreewrljsonverse,
bumpyfreewrl,
bumpyfreewrlsliders,
bumpyx_ite,
bumpyx_itesliders,
Bushes,
CADPartChildNoTransformation,
CaliforniaCampuses,
CameraPrototypes,
CameraShape,
Cane,
CanonicalFacialAnimationComparisonScripts,
CatByMuru,
cgeparticleflowers,
CleanedMultiFacialAnimationMenu,
CleanedWink,
CleanedYouClocks,
CleatClamp_MeshLabLauncherTidy,
CleatClamp.MeshLab,
CleatClamp_MeshLab,
CleatClamp,
Connectors,
CoordinateAxes,
DesignPatternsApparelMedicalSkinLayers,
DonHumanoidNoSegSite,
DonHumanoid,
ExtrusionHeart,
FacialAnimationComparisonScripts,
Filters,
flipp,
flower3,
flower,
flowerprotofreewrl,
flowerproto,
flowers2,
flowers4,
flowers7,
flowers,
forcenode,
force,
force_tidy,
fors2,
fors,
freewrlflowers,
fwparticleflowers,
gears,
geobubbles,
geo,
glflowers,
gridBack,
GridXZ_20x20Fixed,
HalloweenPumpkinLanternKnight,
HAnimBehaviorPrototypes,
HAnimModelFootLeft,
HAnimModelFootRight,
HAnimModelHandLeft,
HAnimModelHandRight,
HAnimPoseExample,
HAnimPoseExternProtoDeclare,
HAnimPosePrototype,
HelloWorldCommented,
HelloWorldMinimal,
HelloWorldNoXmlNoDoctype,
HelloWorld,
Humanoid0,
Humanoid1NoSegSite,
Humanoid1,
Humanoid2NoSegSite,
Humanoid2,
Humanoid3NoSegSite,
Humanoid3,
Humanoid4_1,
Humanoid4NoSegSite,
Humanoid4,
IcosahedronSubdivisionLevel5,
ifscube,
ifscubeworks,
IFS,
indexedfacesetPixeltexture_entire,
indexedfacesetPixeltexture_part,
indexedfacesetPixeltexture_plus,
indexedfacesetPixeltexture_whole,
InlineSoundSource,
Jin20fSegmented,
JinBlink,
JinBrowLowerer,
JinCheekPuffer,
JinCheekRaiser,
JinChinRaiser,
JinConcat11c,
JinDimpler,
JinEyesClosed,
JinInnerBrowRaiser,
JinJawDrop,
JinLidDroop,
JinLidTightener,
JinLipCornerDepressor,
JinLipCornerPuller,
JinLipFunneler,
JinLipPressor,
JinLipPuckerer,
JinLipsPart,
JinLipStretcher,
JinLipSuck,
JinLipTightener,
JinLOA1,
JinLOA1RigidBody,
JinLOA4_1,
JinLOA4_3,
JinLOA4_4,
JinLOA4_5,
JinLOA4_6,
JinLOA4,
JinLOA4_scaled1_Final,
JinLOA4scaled1joe06c,
JinLowerLipDepressor,
JinMouthStretch,
JinNasolabialDeepener,
JinNoseWrinkler,
JinOuterBrowRaiser,
JinScaledV2L1LOA4OnlyMarkers11g,
JinScaledV2L1LOA4Sites07f,
JinScaledV2L1LOA4Sites08e,
JinScaledV2L1LOA4Sites10h,
JinSlit,
JinSquint,
JinUpperLidRaiser,
JinUpperLipRaiser,
JinWink,
JoeDemo5JoeSkin5a,
JoeDemo5JoeSkin5_Final,
JoeExample,
JoeHAnimKick1a_Final,
JoeKickAnimation,
JoeKick,
JoeSkeletonSkinSite,
JoeSkeletonSkinSiteSaluteWalk,
JoeSkinTexcoordDisplacerKick,
JoeSkinTexcoordDisplacerKickUpdate2,
JohnJoint20,
JohnJoint2,
JohnJoint,
JointCoordinateAxes,
jumpcut_loadurl,
KoreanCharacter01Jin,
KoreanCharacter02Chul,
KoreanCharacter03Hyun,
KoreanCharacter04Young,
KoreanCharacter05Ju,
KoreanCharacter06Ga,
KoreanCharacter07No,
KoreanCharacter08Da,
KoreanCharacter09Ru,
KoreanCharacter10Mi,
KoreanCharacter11Min,
KoreanCharacter12Sun,
KoreanCharacterMotionAnnexB01Jin,
KoreanCharacterMotionAnnexC01Jin,
KoreanCharacterMotionAnnexD01Jin,
LayerSet,
Leif5Final,
Leif8Final,
Lily5Final,
Lily8Final,
LOA1_JumpAnimation,
LOA1_KneelAnimation,
LOA1_RunAnimation,
LOA1_StandAnimation,
LOA1_StopAnimation,
LOA1_SwimmingFlutterKickAnimation,
LOA1_WalkAnimation,
MainStage,
ManyClocks,
Marine,
MaskAndSnorkel,
MenuJin,
Menu,
mirror2,
mirror,
mobiusCarlson,
mobiusDon,
mobius,
MultiFacialAnimationMenu,
MultiTextureDesignPattern,
MyBounce,
myextrusion,
New2TemplateNoBoxes,
New2Template,
ObliqueStrategies,
OrientationInterpolator,
particleballs,
particleflowers,
Pathway,
personal,
plainflowers,
PoseCollection,
pp3,
qq3,
rgb_alpha,
RotationTests,
RouteJin,
rubikFurnace,
rubikOnFire,
rubik,
rubikPly,
ScubaTank,
SheenCloth,
SimpleShader,
SingleMenuJin,
Size2tExample_revision2,
sliders,
SmokeTestProgramOutputCanonical,
SmokeTestProgramOutput_CommandLine,
SmokeTestProgramOutput_CommandLineUnzipped,
SmokeTestProgramOutput_JavaExport,
SmokeTestProgramOutput_MeshLabImport,
SmokeTestProgramOutput,
SmokeTestProgramOutput_ReloadedDOM,
SmokeTestProgramOutputTidy_CommandLine,
SmokeTestProgramOutputTidy,
SpatialAudioCameraAnimation,
sphereflowers,
SplitChannels,
SquawLOD023,
StandardHumanoidNoSegSite,
StandardHumanoid,
StringArrayEncodingExamples,
Teapot,
temp.exiInputTransformed,
text3shapes,
TextExamples,
ThreeDTexture,
ThreeInARow,
Tongue,
TransformKids,
Trebuchet,
Tufani5Final,
Tufani8Final,
TufaniAnimated,
variationalflowers2,
variationalflowers,
ViewFrustumExample,
ViewFrustumPrototype,
x3dconnector,
x3dconnectorProto,
x3domflowers,
YehudiMenuJin,
  BoxPrototype
  {$region 'Castle Initialization Uses'}
  // The content here may be automatically updated by CGE editor.
  , GameViewPSAI
  {$endregion 'Castle Initialization Uses'};

var
  Window: TCastleWindow;
  Viewport: TCastleViewport;
  Light: TCastleDirectionalLight;
  Ground: TCastleBox;
  BoxProto: TBoxProto;
  Root: TX3DRootNode;

const
  { Shadow volumes are finicky; set false to check plain lighting first. }
  UseShadows = false;

procedure addScene(Application: TCastleApplication; Viewport: TCastleViewport; Root: TX3DRootNode);
  
var
  Scene: TCastleScene;
begin
  Scene := TCastleScene.Create(Application);
  Scene.Load(Root, true); // Scene takes ownership of Root
  Viewport.Items.Add(Scene);
  WritelnLog('AddScene', 'Scene bounding box: ' + Scene.BoundingBox.ToString);
end;

{ One-time initialization of resources. }
procedure ApplicationInitialize;
begin
  { Adjust container settings for a scalable UI (adjusts to any window size in a smart way). }
  Application.MainWindow.Container.LoadSettings('castle-data:/CastleSettings.xml');

  { Build the 3D world: Window -> Viewport -> Scene -> prototype nodes. }
  Viewport := TCastleViewport.Create(Application);
  Viewport.FullSize := true;
  Application.MainWindow.Controls.InsertFront(Viewport);

  { Mouse navigation: drag to rotate the view, wheel to zoom.
    Navigation is now simply a child of the viewport. }
  Viewport.InsertFront(TCastleExamineNavigation.Create(Application));

  Root := TX3DRootNode.Create;
  BoxProto := TBoxProto.Create;
  AddScene(Application,Viewport,BoxProto.CreateBoxes(Root));
  AddScene(Application,Viewport,CreateIfscubeworks);
  AddScene(Application,Viewport,CreateAsphere);

  { Frame the camera on the cubes (done before adding the large ground, so the
    ground does not push the camera far away), and log what the scene holds
    (an empty bounding box means no nodes made it into the scene). }
  Viewport.AssignDefaultCamera;
  { View from above and in front, so the floor and any shadows are visible. }
  Viewport.Camera.SetWorldView(
    Vector3(0, 5, 9), Vector3(0, -0.45, -1), Vector3(0, 1, 0));

  { Ground for the shadows to fall on: a flat slab whose top face is at y = -0.5,
    exactly where the bottoms of the unit cubes are. }
  Ground := TCastleBox.Create(Application);
  Ground.Size := Vector3(20, 0.2, 20);
  Ground.Translation := Vector3(0, -0.6, 0);
  Ground.Color := Vector4(0.7, 0.7, 0.7, 1);
  Viewport.Items.Add(Ground);

  { Directional light shining down and slightly sideways.
    Shadows := true uses shadow volumes (needs a stencil buffer, which the
    window requests by default; shadow casters must be closed, 2-manifold
    shapes, which a Box is). Only one light per world can cast shadows. }
  Light := TCastleDirectionalLight.Create(Application);
  Light.Direction := Vector3(-0.3, -1, -0.5);
  Light.Color := Vector3(1, 1, 1);
  Light.Shadows := UseShadows;
  Viewport.Items.Add(Light);
  { Diagnostic: should print a direction pointing mostly DOWN (negative Y). }
  WritelnLog('BoxEm', 'Light direction: ' + Light.Direction.ToString);

  { Fill light attached to the camera (a "headlight", as in CGE examples),
    so whatever faces the camera is lit even if the world light is off. }
  Viewport.Camera.Add(TCastleDirectionalLight.Create(Application));

  { Create views (see https://castle-engine.io/views ). }
  {$region 'Castle View Creation'}
  // The content here may be automatically updated by CGE editor.
  ViewPSAI := TViewPSAI.Create(Application);
  {$endregion 'Castle View Creation'}

  Application.MainWindow.Container.View := ViewPSAI;
end;

initialization
  { This initialization section configures:
    - Application.OnInitialize
    - Application.MainWindow
    - determines initial window size

    You should not need to do anything more in this initialization section.
    Most of your actual application initialization (in particular, any file reading)
    should happen inside ApplicationInitialize.

    Do NOT call Application.Run here: the platform-specific program file
    (pascalsai_standalone.dpr) does that after this unit is initialized. }

  Application.OnInitialize := @ApplicationInitialize;

  { Create the window. Without this, Application.MainWindow is nil. }
  Window := TCastleWindow.Create(Application);
  Application.MainWindow := Window;

  { Optionally, adjust window fullscreen state and size at this point.
    Examples:

    Run fullscreen:

      Window.FullScreen := true;

    Run in a 600x400 window:

      Window.FullScreen := false; // default
      Window.Width := 600;
      Window.Height := 400;

    Run in a window taking 2/3 of screen (width and height):

      Window.FullScreen := false; // default
      Window.Width := Application.ScreenWidth * 2 div 3;
      Window.Height := Application.ScreenHeight * 2 div 3;

    Note that some platforms (like mobile) ignore these window sizes.
  }

  { Handle command-line parameters like --fullscreen and --window.
    By doing this last, you let user to override your fullscreen / mode setup. }
  Application.MainWindow.ParseParameters;
end.
