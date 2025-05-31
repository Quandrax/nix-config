{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Quandrax";
    userEmail = "NotARealEmail@proton.me";
  };
}
