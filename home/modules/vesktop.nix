{ config, pkgs, ... }:

{
  programs.vesktop = {
    enable = true;

    settings = {
      discordBranch = "stable";
      arRPC = false;
      minimizeToTray = false;
    };
    #{
    #"discordBranch": "stable",
    #"minimizeToTray": false,
    #"arRPC": false,
    #"splashColor": "rgb(243, 243, 244)",
    #"splashBackground": "rgb(44, 45, 50)"
    #}

    vencord.settings = {
      autoUpdate = true;
      autoUpdateNotification = true;
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
