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

  asphere,
  ifscubeworks,
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
