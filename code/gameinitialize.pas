{ This unit is cross-platform.
  It will be used by the platform-specific program or library file.

  Feel free to use this code as a starting point for your own projects.
  This template code is in public domain, unlike most other CGE code which
  is covered by BSD or LGPL (see https://castle-engine.io/license). }
unit GameInitialize;

interface

implementation

uses Classes, SysUtils,
  CastleWindow, CastleLog, CastleUIControls, CastleScene, CastleSceneCore, CastleDownload,
  CastleViewport, CastleCameras, CastleVectors, CastleColors, CastleControls,
  CastleKeysMouse, X3DNodes,

abox,
AllenBox,
AllenDutton,
allflowers,
app,
{
arc1,
arc2,
arc3,
arc4,
}
ArchHalf,
{
ArchPrototype,
arcold,
ArtDecoExamples,
ArtDecoPrototypes,
}
asmallbox,
asphere,
asteroids,
BackToCoordinate,
ball,
ballcge,
ballx3dom,
ballx_ite,
blenderSkeleton,
{
bobblespheres,
}
BoxEm,
BoxEm2,
browser,
bub,
bubble,
Bubbles,
bubs,
bubs2,
bubs3,
{
bumpyfreewrljsonverse,
bumpyfreewrl,
bumpyfreewrlsliders,
bumpyx_ite,
bumpyx_itesliders,
}
Bushes,
CADPartChildNoTransformation,
CaliforniaCampuses,
CameraPrototypes,
CameraShape,
Cane,
CanonicalFacialAnimationComparisonScripts,
CatByMuru,
cgeflowers,
cgeparticleflowers,
CleanedMultiFacialAnimationMenu,
CleanedWink,
CleanedYouClocks,
CleatClamp,
{
CleatClamp.MeshLab,
}
CleatClamp_MeshLab,
CleatClamp_MeshLabLauncherTidy,
{
Connectors,
}
CoordinateAxes,
{
DesignPatternsApparelMedicalSkinLayers,
DonHumanoidNoSegSite,
DonHumanoid,
}
ExtrusionHeart,
FacialAnimationComparisonScripts,
Filters,
flipp,
{
flower,
flower3,
}
flowerproto,
flowerprotofreewrl,
flowers,
flowers2,
flowers4,
flowers7,
force,
{
force_tidy,
forcenode,
}
fors,
fors2,
{
freewrlflowers,
fwparticleflowers,
}
gears,
geo,
{
geobubbles,
glflowers,
}
gridBack,
GridXZ_20x20Fixed,
HalloweenPumpkinLanternKnight,
{
HAnimBehaviorPrototypes,
HAnimGimbalJointController22,
}
HAnimModelFootLeft,
HAnimModelFootRight,
HAnimModelHandLeft,
HAnimModelHandRight,
{
HAnimPoseExample,
HAnimPoseExternProtoDeclare,
HAnimPosePrototype,
}
HelloWorld,
HelloWorldCommented,
HelloWorldMinimal,
HelloWorldNoXmlNoDoctype,
{
Humanoid0,
Humanoid1,
Humanoid1NoSegSite,
Humanoid2,
Humanoid2NoSegSite,
Humanoid3,
Humanoid3NoSegSite,
Humanoid4,
Humanoid4_1,
Humanoid4NoSegSite,
}
IcosahedronSubdivisionLevel5,
IFS,
ifscube,
ifscubeworks,
{
indexedfacesetPixeltexture_entire,
indexedfacesetPixeltexture_part,
indexedfacesetPixeltexture_plus,
indexedfacesetPixeltexture_whole,
}
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
{
JinLOA1RigidBody,
}
JinLOA4,
JinLOA4_1,
JinLOA4_3,
JinLOA4_4,
JinLOA4_5,
JinLOA4_6,
JinLOA4_scaled1_Final,
JinLOA4Animated,
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
JoeDemo5JoeSkin5_Final,
JoeDemo5JoeSkin5a,
JoeExample,
JoeHAnimKick1a_Final,
JoeKick,
JoeKickAnimation,
JoeSkeletonSkinSite,
JoeSkeletonSkinSiteSaluteWalk,
JoeSkinTexcoordDisplacerKick,
JoeSkinTexcoordDisplacerKickUpdate2,
JohnJoint,
JohnJoint2,
{
JohnJoint20,
}
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
{
KoreanCharacterMotionAnnexD01Jin,
LayerSet,
Leif5Final,
Leif8Final,
Lily5Final,
Lily8Final,
}
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
Menu,
MenuJin,
{
mirror,
}
mirror2,
mobius,
mobiusCarlson,
mobiusDon,
MultiFacialAnimationMenu,
{
MultiTextureDesignPattern,
}
MyBounce,
myextrusion,
{
New2Template,
New2TemplateNoBoxes,
}
noweb3d,
ObliqueStrategies,
OrientationInterpolator,
particleballs,
{
particleflowers,
}
Pathway,
personal,
{
plainflowers,
PoseCollection,
}
pp3,
qq3,
{
rgb_alpha,
}
RotationTests,
RouteJin,
rubik,
rubikFurnace,
rubikOnFire,
rubikPly,
ScubaTank,
{
SheenCloth,
}
SimpleShader,
SingleMenuJin,
{
Size2tExample_revision2,
sliders,
SmokeTestProgramOutput,
SmokeTestProgramOutput_CommandLine,
SmokeTestProgramOutput_CommandLineUnzipped,
SmokeTestProgramOutput_JavaExport,
}
SmokeTestProgramOutput_MeshLabImport,
{
SmokeTestProgramOutput_ReloadedDOM,
SmokeTestProgramOutputTidy,
SmokeTestProgramOutputTidy_CommandLine,
}
SpatialAudioCameraAnimation,
{
sphereflowers,
SplitChannels,
SquawLOD023,
}
StandardHumanoid,
{
StandardHumanoidNoSegSite,
}
StringArrayEncodingExamples,
Teapot,
{
temp.exiInputTransformed,
text3shapes,
}
TextExamples,
ThreeDTexture,
ThreeInARow,
{
Tongue,
}
TransformKids,
{
Trebuchet,
Tufani5Final,
Tufani8Final,
TufaniAnimated,
}
variationalflowers,
{
variationalflowers2,
ViewFrustumExample,
ViewFrustumPrototype,
x3dconnector,
x3dconnectorProto,
x3domflowers,
}
YehudiMenuJin,

BoxPrototype
  {$region 'Castle Initialization Uses'}
  // The content here may be automatically updated by CGE editor.
  ,GameViewPSAI
  {$endregion 'Castle Initialization Uses'};

const
  { Shadow volumes are finicky; set false to check plain lighting first. }
  UseShadows = false;
  { Seconds each scene stays on screen before advancing. }
  SceneViewDuration = 5.0;

type
  TCreateRootFunc = function: TX3DRootNode;
  TRegisterScriptsProc = procedure(const Scene: TCastleSceneCore);
  { Unhooks script notifications; MUST run while the scene is still alive. }
  TDetachScriptsProc = procedure;

  TSceneEntry = record
    Name: String;
    CreateRoot: TCreateRootFunc;
    RegisterScripts: TRegisterScriptsProc;
    DetachScripts: TDetachScriptsProc;
  end;

  TSceneSlideshow = class(TCastleUserInterface)
  private
    FEntries: array of TSceneEntry;
    FCurrentIndex: Integer;
    FElapsed: Single;
    FPaused: Boolean;
    FCurrentScene: TCastleScene;
    FCurrentDetach: TDetachScriptsProc;
    FViewport: TCastleViewport;
    FLabel: TCastleLabel;
    procedure AddEntry(const AName: String; const ACreate: TCreateRootFunc;
      const ARegister: TRegisterScriptsProc = nil;
      const ADetach: TDetachScriptsProc = nil);
    procedure BuildPlaylist;
    procedure ShowIndex(const Index: Integer);
    procedure UpdateLabel;
  public
    constructor Create(AOwner: TComponent; const AViewport: TCastleViewport;
      const ALabel: TCastleLabel); reintroduce;
    procedure Update(const SecondsPassed: Single; var HandleInput: Boolean); override;
    function Press(const Event: TInputPressRelease): Boolean; override;
  end;

var
  Window: TCastleWindow;
  Viewport: TCastleViewport;
  Light: TCastleDirectionalLight;
  Ground: TCastleBox;
  SceneLabel: TCastleLabel;
  Slideshow: TSceneSlideshow;

{ TSceneSlideshow ----------------------------------------------------------- }

constructor TSceneSlideshow.Create(AOwner: TComponent;
  const AViewport: TCastleViewport; const ALabel: TCastleLabel);
begin
  inherited Create(AOwner);
  { Keep 0x0 so mouse drag/wheel always goes to the Viewport underneath. }
  FullSize := False;
  Width := 0;
  Height := 0;
  FViewport := AViewport;
  FLabel := ALabel;
  FCurrentIndex := -1;
  FElapsed := 0.0;
  FPaused := False;
  FCurrentScene := nil;
  FCurrentDetach := nil;
  BuildPlaylist;
end;

procedure TSceneSlideshow.AddEntry(const AName: String;
  const ACreate: TCreateRootFunc; const ARegister: TRegisterScriptsProc;
  const ADetach: TDetachScriptsProc);
var
  Idx: Integer;
begin
  Idx := Length(FEntries);
  SetLength(FEntries, Idx + 1);
  FEntries[Idx].Name := AName;
  FEntries[Idx].CreateRoot := ACreate;
  FEntries[Idx].RegisterScripts := ARegister;
  FEntries[Idx].DetachScripts := ADetach;
end;

procedure TSceneSlideshow.BuildPlaylist;
begin
  AddEntry('ballcge', @Createballcge);
  AddEntry('bubs2', @Createbubs2, @Registerbubs2Scripts, @Detachbubs2Scripts);
  AddEntry('abox', @Createabox);
  AddEntry('AllenBox', @CreateAllenBox);
  AddEntry('AllenDutton', @CreateAllenDutton);
  AddEntry('allflowers', @Createallflowers, @RegisterallflowersScripts, @DetachallflowersScripts);
  AddEntry('app', @Createapp);
  AddEntry('ArchHalf', @CreateArchHalf);
  AddEntry('asmallbox', @Createasmallbox);
  AddEntry('asphere', @Createasphere);
  AddEntry('asteroids', @Createasteroids);
  AddEntry('ball', @Createball);
  AddEntry('BoxEm', @CreateBoxEm);
  AddEntry('BoxEm2', @CreateBoxEm2);
  AddEntry('browser', @Createbrowser, @RegisterbrowserScripts, @DetachbrowserScripts);
  AddEntry('bub', @Createbub, @RegisterbubScripts, @DetachbubScripts);
  AddEntry('bubble', @Createbubble, @RegisterbubbleScripts, @DetachbubbleScripts);
  AddEntry('Bubbles', @CreateBubbles);
  AddEntry('bubs', @Createbubs, @RegisterbubsScripts, @DetachbubsScripts);
  AddEntry('bubs3', @Createbubs3, @Registerbubs3Scripts, @Detachbubs3Scripts);
  AddEntry('Bushes', @CreateBushes);
  AddEntry('CADPartChildNoTransformation', @CreateCADPartChildNoTransformation);
  AddEntry('CameraShape', @CreateCameraShape);
  AddEntry('Cane', @CreateCane);
  AddEntry('CanonicalFacialAnimationComparisonScripts', @CreateCanonicalFacialAnimationComparisonScripts, @RegisterCanonicalFacialAnimationComparisonScriptsScripts, @DetachCanonicalFacialAnimationComparisonScriptsScripts);
  AddEntry('cgeflowers', @Createcgeflowers);
  AddEntry('cgeparticleflowers', @Createcgeparticleflowers, @RegistercgeparticleflowersScripts, @DetachcgeparticleflowersScripts);
  AddEntry('CleanedMultiFacialAnimationMenu', @CreateCleanedMultiFacialAnimationMenu, @RegisterCleanedMultiFacialAnimationMenuScripts, @DetachCleanedMultiFacialAnimationMenuScripts);
  AddEntry('CleanedWink', @CreateCleanedWink);
  AddEntry('CleanedYouClocks', @CreateCleanedYouClocks);
  AddEntry('CleatClamp', @CreateCleatClamp);
  AddEntry('CleatClamp_MeshLab', @CreateCleatClamp_MeshLab);
  AddEntry('CleatClamp_MeshLabLauncherTidy', @CreateCleatClamp_MeshLabLauncherTidy);
  {
  AddEntry('Connectors', @CreateConnectors, @RegisterConnectorsScripts, @DetachConnectorsScripts);
  }
  AddEntry('CoordinateAxes', @CreateCoordinateAxes);
  AddEntry('ExtrusionHeart', @CreateExtrusionHeart);
  AddEntry('FacialAnimationComparisonScripts', @CreateFacialAnimationComparisonScripts, @RegisterFacialAnimationComparisonScriptsScripts, @DetachFacialAnimationComparisonScriptsScripts);
  AddEntry('Filters', @CreateFilters);
  AddEntry('flipp', @Createflipp);
  AddEntry('flowerproto', @Createflowerproto, @RegisterflowerprotoScripts, @DetachflowerprotoScripts);
  AddEntry('flowerprotofreewrl', @Createflowerprotofreewrl, @RegisterflowerprotofreewrlScripts, @DetachflowerprotofreewrlScripts);
  AddEntry('flowers', @Createflowers, @RegisterflowersScripts, @DetachflowersScripts);
  AddEntry('flowers2', @Createflowers2, @Registerflowers2Scripts, @Detachflowers2Scripts);
  AddEntry('flowers4', @Createflowers4, @Registerflowers4Scripts, @Detachflowers4Scripts);
  AddEntry('flowers7', @Createflowers7, @Registerflowers7Scripts, @Detachflowers7Scripts);
  AddEntry('force', @Createforce, @RegisterforceScripts, @DetachforceScripts);
  AddEntry('fors', @Createfors, @RegisterforsScripts, @DetachforsScripts);
  AddEntry('fors2', @Createfors2, @Registerfors2Scripts, @Detachfors2Scripts);
  AddEntry('gears', @Creategears);
  AddEntry('geo', @Creategeo);
  AddEntry('gridBack', @CreategridBack);
  AddEntry('GridXZ_20x20Fixed', @CreateGridXZ_20x20Fixed);
  AddEntry('HalloweenPumpkinLanternKnight', @CreateHalloweenPumpkinLanternKnight);
  // AddEntry('HAnimGimbalJointController22', @CreateHAnimGimbalJointController22);
  AddEntry('HAnimModelFootLeft', @CreateHAnimModelFootLeft);
  AddEntry('HAnimModelFootRight', @CreateHAnimModelFootRight);
  AddEntry('HAnimModelHandLeft', @CreateHAnimModelHandLeft);
  AddEntry('HAnimModelHandRight', @CreateHAnimModelHandRight);
  AddEntry('HelloWorld', @CreateHelloWorld);
  AddEntry('HelloWorldCommented', @CreateHelloWorldCommented);
  AddEntry('HelloWorldMinimal', @CreateHelloWorldMinimal);
  AddEntry('HelloWorldNoXmlNoDoctype', @CreateHelloWorldNoXmlNoDoctype);
  AddEntry('IcosahedronSubdivisionLevel5', @CreateIcosahedronSubdivisionLevel5);
  AddEntry('IFS', @CreateIFS);
  AddEntry('ifscube', @Createifscube);
  AddEntry('ifscubeworks', @Createifscubeworks);
  AddEntry('InlineSoundSource', @CreateInlineSoundSource);
  AddEntry('Jin20fSegmented', @CreateJin20fSegmented);
  AddEntry('JinBlink', @CreateJinBlink);
  AddEntry('JinBrowLowerer', @CreateJinBrowLowerer);
  AddEntry('JinCheekPuffer', @CreateJinCheekPuffer);
  AddEntry('JinCheekRaiser', @CreateJinCheekRaiser);
  AddEntry('JinChinRaiser', @CreateJinChinRaiser);
  AddEntry('JinConcat11c', @CreateJinConcat11c);
  AddEntry('JinDimpler', @CreateJinDimpler);
  AddEntry('JinEyesClosed', @CreateJinEyesClosed);
  AddEntry('JinInnerBrowRaiser', @CreateJinInnerBrowRaiser);
  AddEntry('JinJawDrop', @CreateJinJawDrop);
  AddEntry('JinLidDroop', @CreateJinLidDroop);
  AddEntry('JinLidTightener', @CreateJinLidTightener);
  AddEntry('JinLipCornerDepressor', @CreateJinLipCornerDepressor);
  AddEntry('JinLipCornerPuller', @CreateJinLipCornerPuller);
  AddEntry('JinLipFunneler', @CreateJinLipFunneler);
  AddEntry('JinLipPressor', @CreateJinLipPressor);
  AddEntry('JinLipPuckerer', @CreateJinLipPuckerer);
  AddEntry('JinLipsPart', @CreateJinLipsPart);
  AddEntry('JinLipStretcher', @CreateJinLipStretcher);
  AddEntry('JinLipSuck', @CreateJinLipSuck);
  AddEntry('JinLipTightener', @CreateJinLipTightener);
  AddEntry('JinLOA1', @CreateJinLOA1);
  AddEntry('JinLOA4', @CreateJinLOA4);
  AddEntry('JinLOA4_1', @CreateJinLOA4_1);
  AddEntry('JinLOA4_3', @CreateJinLOA4_3);
  AddEntry('JinLOA4_4', @CreateJinLOA4_4);
  AddEntry('JinLOA4_5', @CreateJinLOA4_5);
  AddEntry('JinLOA4_6', @CreateJinLOA4_6);
  AddEntry('JinLOA4_scaled1_Final', @CreateJinLOA4_scaled1_Final);
  AddEntry('JinLOA4Animated', @CreateJinLOA4Animated);
  AddEntry('JinLOA4scaled1joe06c', @CreateJinLOA4scaled1joe06c);
  AddEntry('JinLowerLipDepressor', @CreateJinLowerLipDepressor);
  AddEntry('JinMouthStretch', @CreateJinMouthStretch);
  AddEntry('JinNasolabialDeepener', @CreateJinNasolabialDeepener);
  AddEntry('JinNoseWrinkler', @CreateJinNoseWrinkler);
  AddEntry('JinOuterBrowRaiser', @CreateJinOuterBrowRaiser);
  AddEntry('JinScaledV2L1LOA4OnlyMarkers11g', @CreateJinScaledV2L1LOA4OnlyMarkers11g);
  AddEntry('JinScaledV2L1LOA4Sites07f', @CreateJinScaledV2L1LOA4Sites07f);
  AddEntry('JinScaledV2L1LOA4Sites08e', @CreateJinScaledV2L1LOA4Sites08e);
  AddEntry('JinScaledV2L1LOA4Sites10h', @CreateJinScaledV2L1LOA4Sites10h);
  AddEntry('JinSlit', @CreateJinSlit);
  AddEntry('JinSquint', @CreateJinSquint);
  AddEntry('JinUpperLidRaiser', @CreateJinUpperLidRaiser);
  AddEntry('JinUpperLipRaiser', @CreateJinUpperLipRaiser);
  AddEntry('JinWink', @CreateJinWink);
  AddEntry('JoeDemo5JoeSkin5_Final', @CreateJoeDemo5JoeSkin5_Final);
  AddEntry('JoeDemo5JoeSkin5a', @CreateJoeDemo5JoeSkin5a);
  AddEntry('JoeExample', @CreateJoeExample, @RegisterJoeExampleScripts, @DetachJoeExampleScripts);
  AddEntry('JoeHAnimKick1a_Final', @CreateJoeHAnimKick1a_Final);
  AddEntry('JoeKick', @CreateJoeKick);
  AddEntry('JoeKickAnimation', @CreateJoeKickAnimation);
  AddEntry('JoeSkeletonSkinSite', @CreateJoeSkeletonSkinSite);
  AddEntry('JoeSkeletonSkinSiteSaluteWalk', @CreateJoeSkeletonSkinSiteSaluteWalk);
  AddEntry('JoeSkinTexcoordDisplacerKick', @CreateJoeSkinTexcoordDisplacerKick);
  AddEntry('JoeSkinTexcoordDisplacerKickUpdate2', @CreateJoeSkinTexcoordDisplacerKickUpdate2);
  AddEntry('JohnJoint', @CreateJohnJoint);
  AddEntry('JohnJoint2', @CreateJohnJoint2);
  AddEntry('JointCoordinateAxes', @CreateJointCoordinateAxes);
  AddEntry('jumpcut_loadurl', @Createjumpcut_loadurl);
  AddEntry('KoreanCharacter01Jin', @CreateKoreanCharacter01Jin);
  AddEntry('KoreanCharacter02Chul', @CreateKoreanCharacter02Chul);
  AddEntry('KoreanCharacter03Hyun', @CreateKoreanCharacter03Hyun);
  AddEntry('KoreanCharacter04Young', @CreateKoreanCharacter04Young);
  AddEntry('KoreanCharacter05Ju', @CreateKoreanCharacter05Ju);
  AddEntry('KoreanCharacter06Ga', @CreateKoreanCharacter06Ga);
  AddEntry('KoreanCharacter07No', @CreateKoreanCharacter07No);
  AddEntry('KoreanCharacter08Da', @CreateKoreanCharacter08Da);
  AddEntry('KoreanCharacter09Ru', @CreateKoreanCharacter09Ru);
  AddEntry('KoreanCharacter10Mi', @CreateKoreanCharacter10Mi);
  AddEntry('KoreanCharacter11Min', @CreateKoreanCharacter11Min);
  AddEntry('KoreanCharacter12Sun', @CreateKoreanCharacter12Sun);
  AddEntry('KoreanCharacterMotionAnnexB01Jin', @CreateKoreanCharacterMotionAnnexB01Jin);
  AddEntry('KoreanCharacterMotionAnnexC01Jin', @CreateKoreanCharacterMotionAnnexC01Jin);
  AddEntry('LOA1_JumpAnimation', @CreateLOA1_JumpAnimation);
  AddEntry('LOA1_KneelAnimation', @CreateLOA1_KneelAnimation);
  AddEntry('LOA1_RunAnimation', @CreateLOA1_RunAnimation);
  AddEntry('LOA1_StandAnimation', @CreateLOA1_StandAnimation);
  AddEntry('LOA1_StopAnimation', @CreateLOA1_StopAnimation);
  AddEntry('LOA1_SwimmingFlutterKickAnimation', @CreateLOA1_SwimmingFlutterKickAnimation);
  AddEntry('LOA1_WalkAnimation', @CreateLOA1_WalkAnimation);
  AddEntry('MainStage', @CreateMainStage);
  AddEntry('ManyClocks', @CreateManyClocks);
  AddEntry('Marine', @CreateMarine);
  AddEntry('MaskAndSnorkel', @CreateMaskAndSnorkel);
  AddEntry('Menu', @CreateMenu, @RegisterMenuScripts, @DetachMenuScripts);
  AddEntry('MenuJin', @CreateMenuJin, @RegisterMenuJinScripts, @DetachMenuJinScripts);
  AddEntry('mirror2', @Createmirror2, @Registermirror2Scripts, @Detachmirror2Scripts);
  AddEntry('mobius', @Createmobius);
  AddEntry('mobiusCarlson', @CreatemobiusCarlson);
  AddEntry('mobiusDon', @CreatemobiusDon);
  AddEntry('MultiFacialAnimationMenu', @CreateMultiFacialAnimationMenu, @RegisterMultiFacialAnimationMenuScripts, @DetachMultiFacialAnimationMenuScripts);
  AddEntry('MyBounce', @CreateMyBounce, @RegisterMyBounceScripts, @DetachMyBounceScripts);
  AddEntry('myextrusion', @Createmyextrusion, @RegistermyextrusionScripts, @DetachmyextrusionScripts);
  AddEntry('noweb3d', @Createnoweb3d, @Registernoweb3dScripts, @Detachnoweb3dScripts);
  AddEntry('ObliqueStrategies', @CreateObliqueStrategies);
  AddEntry('OrientationInterpolator', @CreateOrientationInterpolator);
  AddEntry('particleballs', @Createparticleballs);
  AddEntry('Pathway', @CreatePathway);
  AddEntry('personal', @Createpersonal);
  AddEntry('pp3', @Createpp3, @Registerpp3Scripts, @Detachpp3Scripts);
  AddEntry('qq3', @Createqq3);
  AddEntry('RotationTests', @CreateRotationTests);
  AddEntry('RouteJin', @CreateRouteJin, @RegisterRouteJinScripts, @DetachRouteJinScripts);
  AddEntry('rubik', @Createrubik);
  AddEntry('rubikFurnace', @CreaterubikFurnace);
  AddEntry('rubikOnFire', @CreaterubikOnFire);
  AddEntry('rubikPly', @CreaterubikPly);
  AddEntry('ScubaTank', @CreateScubaTank);
  AddEntry('SimpleShader', @CreateSimpleShader);
  AddEntry('SingleMenuJin', @CreateSingleMenuJin, @RegisterSingleMenuJinScripts, @DetachSingleMenuJinScripts);
  AddEntry('SmokeTestProgramOutput_MeshLabImport', @CreateSmokeTestProgramOutput_MeshLabImport);
  AddEntry('SpatialAudioCameraAnimation', @CreateSpatialAudioCameraAnimation);
  AddEntry('StandardHumanoid', @CreateStandardHumanoid);
  AddEntry('StringArrayEncodingExamples', @CreateStringArrayEncodingExamples);
  AddEntry('Teapot', @CreateTeapot);
  AddEntry('TextExamples', @CreateTextExamples);
  AddEntry('ThreeDTexture', @CreateThreeDTexture);
  AddEntry('ThreeInARow', @CreateThreeInARow);
  AddEntry('TransformKids', @CreateTransformKids);
  AddEntry('variationalflowers', @Createvariationalflowers, @RegistervariationalflowersScripts, @DetachvariationalflowersScripts);
  AddEntry('YehudiMenuJin', @CreateYehudiMenuJin, @RegisterYehudiMenuJinScripts, @DetachYehudiMenuJinScripts);
end;

procedure TSceneSlideshow.ShowIndex(const Index: Integer);
var
  Count: Integer;
  RootNode: TX3DRootNode;
begin
  Count := Length(FEntries);
  if Count = 0 then Exit;

  FCurrentIndex := ((Index mod Count) + Count) mod Count;
  FElapsed := 0.0;

  if FCurrentScene <> nil then
  begin
    { Unhook script notifications BEFORE the scene (and its Script nodes) die. }
    if Assigned(FCurrentDetach) then FCurrentDetach();
    FCurrentDetach := nil;
    FViewport.Items.Remove(FCurrentScene);
    FreeAndNil(FCurrentScene);
  end;

  RootNode := FEntries[FCurrentIndex].CreateRoot();
  FCurrentScene := TCastleScene.Create(Application);
  FCurrentScene.Load(RootNode, true); // Scene takes ownership of RootNode
  FViewport.Items.Add(FCurrentScene);
  FViewport.Items.MainScene := FCurrentScene;
  { FCurrentScene.AutoAnimation := 'idle'; // which animation to run }
  if Assigned(FEntries[FCurrentIndex].RegisterScripts) then
    FEntries[FCurrentIndex].RegisterScripts(FCurrentScene);
  FCurrentDetach := FEntries[FCurrentIndex].DetachScripts;
  FCurrentScene.ProcessEvents := True;

  { Fallback view if a scene has no Viewpoint and an empty bounding box,
    then let AssignDefaultCamera frame the loaded scene. }
  FViewport.Camera.SetWorldView(
    Vector3(0, 5, 9), Vector3(0, -0.45, -1), Vector3(0, 1, 0));
  if FCurrentScene.BoundingBox.IsEmptyOrZero then
    FViewport.AssignDefaultCamera;

  WritelnLog('Slideshow', Format('[%d/%d] %s | BBox: %s', [
    FCurrentIndex + 1, Count, FEntries[FCurrentIndex].Name,
    FCurrentScene.BoundingBox.ToString]));

  UpdateLabel;
end;

procedure TSceneSlideshow.UpdateLabel;
var
  Remaining: Single;
  Status: String;
begin
  if (FLabel = nil) or (FCurrentIndex < 0) then Exit;
  Remaining := SceneViewDuration - FElapsed;
  if Remaining < 0 then Remaining := 0;
  if FPaused then
    Status := 'PAUSED'
  else
    Status := Format('%.1fs', [Remaining]);
  FLabel.Caption := Format('[%d/%d] %s (%s)  [Space: Pause | Left/Right: Prev/Next]', [
    FCurrentIndex + 1, Length(FEntries), FEntries[FCurrentIndex].Name, Status]);
end;

procedure TSceneSlideshow.Update(const SecondsPassed: Single;
  var HandleInput: Boolean);
begin
  inherited;
  if Length(FEntries) = 0 then Exit;

  if FCurrentIndex < 0 then
  begin
    ShowIndex(0);
    Exit;
  end;

  if not FPaused then
  begin
    FElapsed := FElapsed + SecondsPassed;
    if FElapsed >= SceneViewDuration then
    begin
      ShowIndex(FCurrentIndex + 1);
      Exit;
    end;
  end;

  UpdateLabel;
end;

function TSceneSlideshow.Press(const Event: TInputPressRelease): Boolean;
begin
  Result := inherited;
  if Result then Exit;

  if Event.IsKey(keySpace) then
  begin
    FPaused := not FPaused;
    UpdateLabel;
    Exit(True);
  end;
  if Event.IsKey(keyArrowRight) or Event.IsKey(keyN) then
  begin
    ShowIndex(FCurrentIndex + 1);
    Exit(True);
  end;
  if Event.IsKey(keyArrowLeft) or Event.IsKey(keyP) then
  begin
    ShowIndex(FCurrentIndex - 1);
    Exit(True);
  end;
end;

{ One-time initialization of resources. }
procedure ApplicationInitialize;
begin
  { Adjust container settings for a scalable UI (adjusts to any window size in a smart way). }
  EnableBlockingDownloads := true;
  Application.MainWindow.Container.LoadSettings('castle-data:/CastleSettings.xml');

  { Build the 3D world: Window -> Viewport -> Scene -> prototype nodes. }
  Viewport := TCastleViewport.Create(Application);
  Viewport.FullSize := true;
  Application.MainWindow.Controls.InsertFront(Viewport);

  { Mouse navigation: drag to rotate the view, wheel to zoom.
    Navigation is now simply a child of the viewport. }
  Viewport.InsertFront(TCastleExamineNavigation.Create(Application));

  { Ground for the shadows to fall on: a flat slab whose top face is at y = -0.5,
    exactly where the bottoms of the unit cubes are. }
  Ground := TCastleBox.Create(Application);
  Ground.Size := Vector3(20, 0.2, 20);
  Ground.Translation := Vector3(0, -0.6, 0);
  Ground.Color := Vector4(0.7, 0.7, 0.7, 1);
  { Viewport.Items.Add(Ground); }

  { Directional light shining down and slightly sideways. }
  Light := TCastleDirectionalLight.Create(Application);
  Light.Direction := Vector3(-0.3, -1, -0.5);
  Light.Color := Vector3(1, 1, 1);
  Light.Shadows := UseShadows;
  Viewport.Items.Add(Light);
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

  { Overlay label and 4-second alphabetical slideshow controller.
    Added after setting Container.View so it stays on top across view changes. }
  SceneLabel := TCastleLabel.Create(Application);
  SceneLabel.Anchor(hpLeft, 10);
  SceneLabel.Anchor(vpBottom, 10);
  SceneLabel.Color := White;
  Application.MainWindow.Controls.InsertFront(SceneLabel);

  Slideshow := TSceneSlideshow.Create(Application, Viewport, SceneLabel);
  Application.MainWindow.Controls.InsertFront(Slideshow);
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
