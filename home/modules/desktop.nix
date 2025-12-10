{ ... }:

{
  wayland.windowManager.mango = {
    enable = true;
    systemd.enable = true;

    settings = ''
        exec-once=waybar & swww-daemon

        border_radius=8
        enable_hotarea=0
        new_is_master=0
        scroller_focus_center=1

        bind=SUPER,q,spawn,ghostty
        bind=SUPER,r,spawn,rofi -show drun
        bind=SUPER,c,killclient

        bind=SUPER+SHIFT,Left,focusdir,left
        bind=SUPER+SHIFT,Right,focusdir,right
        bind=SUPER+SHIFT,Up,focusdir,up
        bind=SUPER+SHIFT,Down,focusdir,down

        bind=SUPER,Left,exchange_client,left
        bind=SUPER,Right,exchange_client,right
        bind=SUPER,Up,exchange_client,up
        bind=SUPER,Down,exchange_client,down

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
        bind=SUPER+SHIFT,s,switch_layout

        xkb_rules_layout=de
      '';
  };

  services.swww.enable = true;
}
