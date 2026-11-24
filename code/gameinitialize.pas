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

  { abox,}
AllenBox,
AllenDutton,
{
allflowers,
app,
arc1,
arc2,
arc3,
arc4,
ArchHalf,
ArchPrototype,
arcold,
ArtDecoExamples,
ArtDecoPrototypes,
asmallbox,
}
asphere,
{
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
cgeflowers,
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
}
HAnimGimbalJointController22,
{
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
}
ifscubeworks,
{
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
}
JinLOA4Animated,
{
JinLOA4,
JinLOA4_scaled1_Final,
JinLOA4scaled1joe06c,
JinLowerLipDepressor,
JinMouthStretch,
JinNasolabialDeepener,
JinNoseWrinkler,
JinOuterBrowRaiser,
}
JinScaledV2L1LOA4OnlyMarkers11g,
{
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
noweb3d,
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
}
StandardHumanoid,
{
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
}

  BoxPrototype,
  {$region 'Castle Initialization Uses'}
  // The content here may be automatically updated by CGE editor.
  GameViewPSAI
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

function addScene(Application: TCastleApplication; Viewport: TCastleViewport; Root: TX3DRootNode): TX3DRootNode;
  
var
  Scene: TCastleScene;
begin
  Scene := TCastleScene.Create(Application);
  Scene.Load(Root, true); // Scene takes ownership of Root
  Viewport.Items.Add(Scene);
  Scene.AutoAnimation := 'idle';

  WritelnLog('AddScene', 'Scene bounding box: ' + Scene.BoundingBox.ToString);
  Result := Root;
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

  { AddScene(Application,Viewport,Createabox); }
  AddScene(Application,Viewport,CreateAllenBox);
  AddScene(Application,Viewport,CreateAllenDutton);
  {
  AddScene(Application,Viewport,Createallflowers);
  AddScene(Application,Viewport,Createapp);
  AddScene(Application,Viewport,Createarc1);
  AddScene(Application,Viewport,Createarc2);
  AddScene(Application,Viewport,Createarc3);
  AddScene(Application,Viewport,Createarc4);
  AddScene(Application,Viewport,CreateArchHalf);
  AddScene(Application,Viewport,CreateArchPrototype);
  AddScene(Application,Viewport,Createarcold);
  AddScene(Application,Viewport,Createarc);
  AddScene(Application,Viewport,CreateArtDecoExamples);
  AddScene(Application,Viewport,CreateArtDecoPrototypes);
  AddScene(Application,Viewport,Createasmallbox);
  AddScene(Application,Viewport,Createasphere);
  AddScene(Application,Viewport,Createasteroids);
  AddScene(Application,Viewport,CreateBackToCoordinate);
  AddScene(Application,Viewport,Createballcge);
  AddScene(Application,Viewport,Createball);
  AddScene(Application,Viewport,Createballx3dom);
  AddScene(Application,Viewport,Createballx_ite);
  AddScene(Application,Viewport,CreateblenderSkeleton);
  AddScene(Application,Viewport,Createbobblespheres);
  AddScene(Application,Viewport,CreateBoxEm2);
  AddScene(Application,Viewport,CreateBoxEm);
  AddScene(Application,Viewport,Createboxprototype);
  AddScene(Application,Viewport,Createbrowser);
  AddScene(Application,Viewport,Createbubble);
  AddScene(Application,Viewport,CreateBubbles);
  AddScene(Application,Viewport,Createbub);
  AddScene(Application,Viewport,Createbubs2);
  AddScene(Application,Viewport,Createbubs3);
  AddScene(Application,Viewport,Createbubs);
  AddScene(Application,Viewport,Createbumpyfreewrljsonverse);
  AddScene(Application,Viewport,Createbumpyfreewrl);
  AddScene(Application,Viewport,Createbumpyfreewrlsliders);
  AddScene(Application,Viewport,Createbumpyx_ite);
  AddScene(Application,Viewport,Createbumpyx_itesliders);
  AddScene(Application,Viewport,CreateBushes);
  AddScene(Application,Viewport,CreateCADPartChildNoTransformation);
  AddScene(Application,Viewport,CreateCaliforniaCampuses);
  AddScene(Application,Viewport,CreateCameraPrototypes);
  AddScene(Application,Viewport,CreateCameraShape);
  AddScene(Application,Viewport,CreateCane);
  AddScene(Application,Viewport,CreateCanonicalFacialAnimationComparisonScripts);
  AddScene(Application,Viewport,CreateCatByMuru);
  AddScene(Application,Viewport,Createcgeflowers);
  AddScene(Application,Viewport,Createcgeparticleflowers);
  AddScene(Application,Viewport,CreateCleanedMultiFacialAnimationMenu);
  AddScene(Application,Viewport,CreateCleanedWink);
  AddScene(Application,Viewport,CreateCleanedYouClocks);
  AddScene(Application,Viewport,CreateCleatClamp_MeshLabLauncherTidy);
  AddScene(Application,Viewport,CreateCleatClamp.MeshLab);
  AddScene(Application,Viewport,CreateCleatClamp_MeshLab);
  AddScene(Application,Viewport,CreateCleatClamp);
  AddScene(Application,Viewport,CreateConnectors);
  AddScene(Application,Viewport,CreateCoordinateAxes);
  AddScene(Application,Viewport,CreateDesignPatternsApparelMedicalSkinLayers);
  AddScene(Application,Viewport,CreateDonHumanoidNoSegSite);
  AddScene(Application,Viewport,CreateDonHumanoid);
  AddScene(Application,Viewport,CreateExtrusionHeart);
  AddScene(Application,Viewport,CreateFacialAnimationComparisonScripts);
  AddScene(Application,Viewport,CreateFilters);
  AddScene(Application,Viewport,Createflipp);
  AddScene(Application,Viewport,Createflower3);
  AddScene(Application,Viewport,Createflower);
  AddScene(Application,Viewport,Createflowerprotofreewrl);
  AddScene(Application,Viewport,Createflowerproto);
  AddScene(Application,Viewport,Createflowers2);
  AddScene(Application,Viewport,Createflowers4);
  AddScene(Application,Viewport,Createflowers7);
  AddScene(Application,Viewport,Createflowers);
  AddScene(Application,Viewport,Createforcenode);
  AddScene(Application,Viewport,Createforce);
  AddScene(Application,Viewport,Createforce_tidy);
  AddScene(Application,Viewport,Createfors2);
  AddScene(Application,Viewport,Createfors);
  AddScene(Application,Viewport,Createfreewrlflowers);
  AddScene(Application,Viewport,Createfwparticleflowers);
  AddScene(Application,Viewport,Creategameinitialize);
  AddScene(Application,Viewport,Creategameviewpsai);
  AddScene(Application,Viewport,Creategears);
  AddScene(Application,Viewport,Creategeobubbles);
  AddScene(Application,Viewport,Creategeo);
  AddScene(Application,Viewport,Createglflowers);
  AddScene(Application,Viewport,CreategridBack);
  AddScene(Application,Viewport,CreateGridXZ_20x20Fixed);
  AddScene(Application,Viewport,CreateHalloweenPumpkinLanternKnight);
  AddScene(Application,Viewport,CreateHAnimBehaviorPrototypes);
  AddScene(Application,Viewport,CreateHAnimGimbalJointController22);
  AddScene(Application,Viewport,CreateHAnimModelFootLeft);
  AddScene(Application,Viewport,CreateHAnimModelFootRight);
  AddScene(Application,Viewport,CreateHAnimModelHandLeft);
  AddScene(Application,Viewport,CreateHAnimModelHandRight);
  AddScene(Application,Viewport,CreateHAnimPoseExample);
  AddScene(Application,Viewport,CreateHAnimPoseExternProtoDeclare);
  AddScene(Application,Viewport,CreateHAnimPosePrototype);
  AddScene(Application,Viewport,CreateHelloWorldCommented);
  AddScene(Application,Viewport,CreateHelloWorldMinimal);
  AddScene(Application,Viewport,CreateHelloWorldNoXmlNoDoctype);
  AddScene(Application,Viewport,CreateHelloWorld);
  AddScene(Application,Viewport,CreateHumanoid0);
  AddScene(Application,Viewport,CreateHumanoid1NoSegSite);
  AddScene(Application,Viewport,CreateHumanoid1);
  AddScene(Application,Viewport,CreateHumanoid2NoSegSite);
  AddScene(Application,Viewport,CreateHumanoid2);
  AddScene(Application,Viewport,CreateHumanoid3NoSegSite);
  AddScene(Application,Viewport,CreateHumanoid3);
  AddScene(Application,Viewport,CreateHumanoid4_1);
  AddScene(Application,Viewport,CreateHumanoid4NoSegSite);
  AddScene(Application,Viewport,CreateHumanoid4);
  AddScene(Application,Viewport,CreateIcosahedronSubdivisionLevel5);
  AddScene(Application,Viewport,Createifscube);
  AddScene(Application,Viewport,Createifscubeworks);
  AddScene(Application,Viewport,CreateIFS);
  AddScene(Application,Viewport,CreateindexedfacesetPixeltexture_entire);
  AddScene(Application,Viewport,CreateindexedfacesetPixeltexture_part);
  AddScene(Application,Viewport,CreateindexedfacesetPixeltexture_plus);
  AddScene(Application,Viewport,CreateindexedfacesetPixeltexture_whole);
  AddScene(Application,Viewport,CreateInlineSoundSource);
  AddScene(Application,Viewport,CreateJin20fSegmented);
  AddScene(Application,Viewport,CreateJinBlink);
  AddScene(Application,Viewport,CreateJinBrowLowerer);
  AddScene(Application,Viewport,CreateJinCheekPuffer);
  AddScene(Application,Viewport,CreateJinCheekRaiser);
  AddScene(Application,Viewport,CreateJinChinRaiser);
  AddScene(Application,Viewport,CreateJinConcat11c);
  AddScene(Application,Viewport,CreateJinDimpler);
  AddScene(Application,Viewport,CreateJinEyesClosed);
  AddScene(Application,Viewport,CreateJinInnerBrowRaiser);
  AddScene(Application,Viewport,CreateJinJawDrop);
  AddScene(Application,Viewport,CreateJinLidDroop);
  AddScene(Application,Viewport,CreateJinLidTightener);
  AddScene(Application,Viewport,CreateJinLipCornerDepressor);
  AddScene(Application,Viewport,CreateJinLipCornerPuller);
  AddScene(Application,Viewport,CreateJinLipFunneler);
  AddScene(Application,Viewport,CreateJinLipPressor);
  AddScene(Application,Viewport,CreateJinLipPuckerer);
  AddScene(Application,Viewport,CreateJinLipsPart);
  AddScene(Application,Viewport,CreateJinLipStretcher);
  AddScene(Application,Viewport,CreateJinLipSuck);
  AddScene(Application,Viewport,CreateJinLipTightener);
  AddScene(Application,Viewport,CreateJinLOA1);
  AddScene(Application,Viewport,CreateJinLOA1RigidBody);
  AddScene(Application,Viewport,CreateJinLOA4_1);
  AddScene(Application,Viewport,CreateJinLOA4_3);
  AddScene(Application,Viewport,CreateJinLOA4_4);
  AddScene(Application,Viewport,CreateJinLOA4_5);
  AddScene(Application,Viewport,CreateJinLOA4_6);
  AddScene(Application,Viewport,CreateJinLOA4Animated);
  AddScene(Application,Viewport,CreateJinLOA4);
  AddScene(Application,Viewport,CreateJinLOA4_scaled1_Final);
  AddScene(Application,Viewport,CreateJinLOA4scaled1joe06c);
  AddScene(Application,Viewport,CreateJinLowerLipDepressor);
  AddScene(Application,Viewport,CreateJinMouthStretch);
  AddScene(Application,Viewport,CreateJinNasolabialDeepener);
  AddScene(Application,Viewport,CreateJinNoseWrinkler);
  AddScene(Application,Viewport,CreateJinOuterBrowRaiser);
  AddScene(Application,Viewport,CreateJinScaledV2L1LOA4OnlyMarkers11g);
  AddScene(Application,Viewport,CreateJinScaledV2L1LOA4Sites07f);
  AddScene(Application,Viewport,CreateJinScaledV2L1LOA4Sites08e);
  AddScene(Application,Viewport,CreateJinScaledV2L1LOA4Sites10h);
  AddScene(Application,Viewport,CreateJinSlit);
  AddScene(Application,Viewport,CreateJinSquint);
  AddScene(Application,Viewport,CreateJinUpperLidRaiser);
  AddScene(Application,Viewport,CreateJinUpperLipRaiser);
  AddScene(Application,Viewport,CreateJinWink);
  AddScene(Application,Viewport,CreateJoeDemo5JoeSkin5a);
  AddScene(Application,Viewport,CreateJoeDemo5JoeSkin5_Final);
  AddScene(Application,Viewport,CreateJoeExample);
  AddScene(Application,Viewport,CreateJoeHAnimKick1a_Final);
  AddScene(Application,Viewport,CreateJoeKickAnimation);
  AddScene(Application,Viewport,CreateJoeKick);
  AddScene(Application,Viewport,CreateJoeSkeletonSkinSite);
  AddScene(Application,Viewport,CreateJoeSkeletonSkinSiteSaluteWalk);
  AddScene(Application,Viewport,CreateJoeSkinTexcoordDisplacerKick);
  AddScene(Application,Viewport,CreateJoeSkinTexcoordDisplacerKickUpdate2);
  AddScene(Application,Viewport,CreateJohnJoint20);
  AddScene(Application,Viewport,CreateJohnJoint2);
  AddScene(Application,Viewport,CreateJohnJoint);
  AddScene(Application,Viewport,CreateJointCoordinateAxes);
  AddScene(Application,Viewport,Createjumpcut_loadurl);
  AddScene(Application,Viewport,CreateKoreanCharacter01Jin);
  AddScene(Application,Viewport,CreateKoreanCharacter02Chul);
  AddScene(Application,Viewport,CreateKoreanCharacter03Hyun);
  AddScene(Application,Viewport,CreateKoreanCharacter04Young);
  AddScene(Application,Viewport,CreateKoreanCharacter05Ju);
  AddScene(Application,Viewport,CreateKoreanCharacter06Ga);
  AddScene(Application,Viewport,CreateKoreanCharacter07No);
  AddScene(Application,Viewport,CreateKoreanCharacter08Da);
  AddScene(Application,Viewport,CreateKoreanCharacter09Ru);
  AddScene(Application,Viewport,CreateKoreanCharacter10Mi);
  AddScene(Application,Viewport,CreateKoreanCharacter11Min);
  AddScene(Application,Viewport,CreateKoreanCharacter12Sun);
  AddScene(Application,Viewport,CreateKoreanCharacterMotionAnnexB01Jin);
  AddScene(Application,Viewport,CreateKoreanCharacterMotionAnnexC01Jin);
  AddScene(Application,Viewport,CreateKoreanCharacterMotionAnnexD01Jin);
  AddScene(Application,Viewport,CreateLayerSet);
  AddScene(Application,Viewport,CreateLeif5Final);
  AddScene(Application,Viewport,CreateLeif8Final);
  AddScene(Application,Viewport,CreateLily5Final);
  AddScene(Application,Viewport,CreateLily8Final);
  AddScene(Application,Viewport,CreateLOA1_JumpAnimation);
  AddScene(Application,Viewport,CreateLOA1_KneelAnimation);
  AddScene(Application,Viewport,CreateLOA1_RunAnimation);
  AddScene(Application,Viewport,CreateLOA1_StandAnimation);
  AddScene(Application,Viewport,CreateLOA1_StopAnimation);
  AddScene(Application,Viewport,CreateLOA1_SwimmingFlutterKickAnimation);
  AddScene(Application,Viewport,CreateLOA1_WalkAnimation);
  AddScene(Application,Viewport,CreateMainStage);
  AddScene(Application,Viewport,CreateManyClocks);
  AddScene(Application,Viewport,CreateMarine);
  AddScene(Application,Viewport,CreateMaskAndSnorkel);
  AddScene(Application,Viewport,CreateMenuJin);
  AddScene(Application,Viewport,CreateMenu);
  AddScene(Application,Viewport,Createmirror2);
  AddScene(Application,Viewport,Createmirror);
  AddScene(Application,Viewport,CreatemobiusCarlson);
  AddScene(Application,Viewport,CreatemobiusDon);
  AddScene(Application,Viewport,Createmobius);
  AddScene(Application,Viewport,CreateMultiFacialAnimationMenu);
  AddScene(Application,Viewport,CreateMultiTextureDesignPattern);
  AddScene(Application,Viewport,CreateMyBounce);
  AddScene(Application,Viewport,Createmyextrusion);
  AddScene(Application,Viewport,CreateNew2TemplateNoBoxes);
  AddScene(Application,Viewport,CreateNew2Template);
  AddScene(Application,Viewport,Createnoweb3d);
  AddScene(Application,Viewport,CreateObliqueStrategies);
  AddScene(Application,Viewport,CreateOrientationInterpolator);
  AddScene(Application,Viewport,Createparticleballs);
  AddScene(Application,Viewport,Createparticleflowers);
  AddScene(Application,Viewport,CreatePathway);
  AddScene(Application,Viewport,Createpersonal);
  AddScene(Application,Viewport,Createplainflowers);
  AddScene(Application,Viewport,CreatePoseCollection);
  AddScene(Application,Viewport,Createpp3);
  AddScene(Application,Viewport,Createqq3);
  AddScene(Application,Viewport,Creatergb_alpha);
  AddScene(Application,Viewport,CreateRotationTests);
  AddScene(Application,Viewport,CreateRouteJin);
  AddScene(Application,Viewport,CreaterubikFurnace);
  AddScene(Application,Viewport,CreaterubikOnFire);
  AddScene(Application,Viewport,Createrubik);
  AddScene(Application,Viewport,CreaterubikPly);
  AddScene(Application,Viewport,CreateScubaTank);
  AddScene(Application,Viewport,CreateSheenCloth);
  AddScene(Application,Viewport,CreateSimpleShader);
  AddScene(Application,Viewport,CreateSingleMenuJin);
  AddScene(Application,Viewport,CreateSize2tExample_revision2);
  AddScene(Application,Viewport,Createsliders);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutputCanonical);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutput_CommandLine);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutput_CommandLineUnzipped);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutput_JavaExport);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutput_MeshLabImport);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutput);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutput_ReloadedDOM);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutputTidy_CommandLine);
  AddScene(Application,Viewport,CreateSmokeTestProgramOutputTidy);
  AddScene(Application,Viewport,CreateSpatialAudioCameraAnimation);
  AddScene(Application,Viewport,Createsphereflowers);
  AddScene(Application,Viewport,CreateSplitChannels);
  AddScene(Application,Viewport,CreateSquawLOD023);
  AddScene(Application,Viewport,CreateStandardHumanoidNoSegSite);
  AddScene(Application,Viewport,CreateStandardHumanoid);
  AddScene(Application,Viewport,CreateStringArrayEncodingExamples);
  AddScene(Application,Viewport,CreateTeapot);
  AddScene(Application,Viewport,Createtemp.exiInputTransformed);
  AddScene(Application,Viewport,Createtext3shapes);
  AddScene(Application,Viewport,CreateTextExamples);
  AddScene(Application,Viewport,CreateThreeDTexture);
  AddScene(Application,Viewport,CreateThreeInARow);
  AddScene(Application,Viewport,CreateTongue);
  AddScene(Application,Viewport,CreateTransformKids);
  AddScene(Application,Viewport,CreateTrebuchet);
  AddScene(Application,Viewport,CreateTufani5Final);
  AddScene(Application,Viewport,CreateTufani8Final);
  AddScene(Application,Viewport,CreateTufaniAnimated);
  AddScene(Application,Viewport,Createvariationalflowers2);
  AddScene(Application,Viewport,Createvariationalflowers);
  AddScene(Application,Viewport,CreateViewFrustumExample);
  AddScene(Application,Viewport,CreateViewFrustumPrototype);
  AddScene(Application,Viewport,Createx3dconnector);
  AddScene(Application,Viewport,Createx3dconnectorProto);
  AddScene(Application,Viewport,Createx3domflowers);
  AddScene(Application,Viewport,CreateYehudiMenuJin);


  }
  AddScene(Application,Viewport,CreateIfscubeworks);
  AddScene(Application,Viewport,CreateAsphere);
  AddScene(Application,Viewport,CreateJinScaledV2L1LOA4OnlyMarkers11g);
  AddScene(Application,Viewport,CreateJinLOA4Animated);
  AddScene(Application,Viewport,CreateStandardHumanoid);
  AddScene(Application,Viewport,CreateHAnimGimbalJointController22);

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
  { Viewport.Items.Add(Ground); }

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
