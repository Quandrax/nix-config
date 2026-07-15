{ config, ... }:

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

  programs.direnv.config.whitelist.prefix = [ "${config.xdg.userDirs.projects}" ];
}
