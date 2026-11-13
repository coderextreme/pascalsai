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
  X3DNodes,
  BoxPrototype
  {$region 'Castle Initialization Uses'}
  // The content here may be automatically updated by CGE editor.
  , GameViewPSAI
  {$endregion 'Castle Initialization Uses'};

var
  Window: TCastleWindow;
  Viewport: TCastleViewport;
  Scene: TCastleScene;
  Root: TX3DRootNode;
  BoxProto: TBoxProto;

{ One-time initialization of resources. }
procedure ApplicationInitialize;
begin
  { Adjust container settings for a scalable UI (adjusts to any window size in a smart way). }
  Window.Container.LoadSettings('castle-data:/CastleSettings.xml');

  { Build the 3D world: Window -> Viewport -> Scene -> prototype nodes. }
  Viewport := TCastleViewport.Create(Application);
  Viewport.FullSize := true;
  Window.Controls.InsertFront(Viewport);

  Root := TX3DRootNode.Create;
  BoxProto := TBoxProto.Create;
  BoxProto.BuildPrototype(Root);

  Scene := TCastleScene.Create(Application);
  Scene.Load(Root, true); // Scene takes ownership of Root
  Viewport.Items.Add(Scene);

  { Create views (see https://castle-engine.io/views ). }
  {$region 'Castle View Creation'}
  // The content here may be automatically updated by CGE editor.
  ViewPSAI := TViewPSAI.Create(Application);
  {$endregion 'Castle View Creation'}

  Window.Container.View := ViewPSAI;
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
  Window.ParseParameters;
end.
