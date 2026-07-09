{ pkgs, inputs, ... }:

{
  imports = [
    inputs.mango.hmModules.mango
  ];

  wayland.windowManager.mango = {
    enable = true;
    systemd.enable = true;

    # I will migrate one day
    #settings =
    autostart_sh = ''
      true
    '';
    extraConfig = ''
      exec-once=awww-daemon

      borderpx=2
      focuscolor=0x00ff99ee
      maximizescreencolor=0xf9f9f9cc

      border_radius=8
      enable_hotarea=0
      new_is_master=0
      scroller_focus_center=1
      edge_scroller_pointer_focus=0

      bind=SUPER,q,spawn,ghostty
      bind=SUPER,r,spawn,rofi -show drun
      bind=SUPER,c,killclient

      bind=SUPER,Left,focusdir,left
      bind=SUPER,Right,focusdir,right
      bind=SUPER,Up,focusdir,up
      bind=SUPER,Down,focusdir,down

      bind=SUPER+SHIFT,Left,exchange_client,left
      bind=SUPER+SHIFT,Right,exchange_client,right
      bind=SUPER+SHIFT,Up,exchange_client,up
      bind=SUPER+SHIFT,Down,exchange_client,down

      bind=SUPER,f,togglemaximizescreen
      bind=SUPER,o,toggleoverview
      bind=SUPER,v,togglefloating
      bind=SUPER,d,centerwin

      bind=SUPER,1,view,1
      bind=SUPER,2,view,2
      bind=SUPER,3,view,3
      bind=SUPER,4,view,4

      bind=SUPER+SHIFT,1,tagtoleft
      bind=SUPER+SHIFT,2,tagtoright
      bind=SUPER+SHIFT,3,tag,3
      bind=SUPER+SHIFT,4,tag,4

      bind=SUPER+SHIFT,r,reload_config
      bind=SUPER+SHIFT,l,switch_layout

      bind=SUPER+SHIFT,s,spawn_shell,grim -g "$(slurp)" - | wl-copy && notify-send "Screenshot" "Press Ctrl+v to paste"

      xkb_rules_layout=de
    '';
  };

  services.awww.enable = true;

  programs.obs-studio.enable = true;
  programs.satty.enable = true;

  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    brightnessctl
    pwvucontrol
    mpv
  ];
}
