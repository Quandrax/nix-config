{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      theme = "0x96f";
      background-opacity = 0.8;
      font-size = 11;
    };
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };
}

