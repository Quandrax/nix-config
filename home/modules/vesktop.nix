{ ... }:

{
  programs.vesktop = {
    enable = true;

    settings = {
      discordBranch = "stable";
      arRPC = false;
      minimizeToTray = false;
      tray = false;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = false;
      enableSplashScreen = false;
      splashTheming = false;
      autoStartMinimized = false;
      openLinksWithElectron = false;
      staticTitle = true;
      enableMenu = false;
    };

    vencord.settings = {
      autoUpdate = true;
      autoUpdateNotification = true;
      winCtrlQ = false;
      winNativeTitleBar = false;
      transparent = false;
      useQuickCss = true;
      plugins = {
        AnonymiseFileNames.enabled = true;
        CrashHandler = true;
        FakeNitro.enabled = true;
        MessageLogger.enabled = true;
        NoF1.enabled = true;
        NoTypingAnimation.enabled = true;
        PreviewMessage.enabled = true;
        ShowHiddenChannels.enabled = true;
        WebKeybinds = false;
      };
    };

  };
}
