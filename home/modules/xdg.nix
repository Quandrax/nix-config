{ ... }:

{
  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
      #remove if update stateVersion
      setSessionVariables = true;

      desktop = null;
      templates = null;
      publicShare = null;
    };

    enable = true;
  };
}
