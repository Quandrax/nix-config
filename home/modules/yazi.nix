{ ... }:

{
  programs.yazi = {
    settings = {
      mgr = {
        show_hidden = true;
        sort_by = "alphabetical";
        sort_sensitive = true;
        sort_dir_first = true;
        linemode = "size";
      };
    };
    enable = true;
    enableFishIntegration = true;
  };

  #remove if update stateVersion
  programs.yazi.shellWrapperName = "y";
}
