{ config, pkgs, ... }:

{
  programs.rofi = let
    inherit (config.lib.formats.rasi) mkLiteral;
  in {
    enable = true;

    extraConfig = {
      show-icons = true;
      display-drun = " Applications";
      drun-display-format = "{name}";
    };

    theme = {
      "*" = {
        background = mkLiteral "#1E2127FF";
        "background-alt" = mkLiteral "#282B31FF";
        foreground = mkLiteral "#FFFFFFFF";
        selected = mkLiteral "#61AFEFFF";
        active = mkLiteral "#98C379FF";
        urgent = mkLiteral "#E06C75FF";
      };

      window = {
        location = mkLiteral "center";
        anchor = mkLiteral "center";
        fullscreen = false;
        width = mkLiteral "1000px";
        "x-offset" = mkLiteral "0px";
        "y-offset" = mkLiteral "0px";
        enabled = true;
        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        border = mkLiteral "0px solid";
        "border-radius" = mkLiteral "20px";
        "border-color" = mkLiteral "@selected";
        "background-color" = mkLiteral "@background";
        cursor = mkLiteral "default";
      };

      mainbox = {
        enabled = true;
        spacing = mkLiteral "20px";
        margin = mkLiteral "40px";
        padding = mkLiteral "0px";
        border = mkLiteral "0px solid";
        "border-radius" = mkLiteral "0px 0px 0px 0px";
        "border-color" = mkLiteral "@selected";
        "background-color" = mkLiteral "transparent";
        children = map mkLiteral [ "inputbar" "listview" ];
      };

      inputbar = {
        enabled = true;
        spacing = mkLiteral "0px";
        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        border = mkLiteral "0px solid";
        "border-radius" = mkLiteral "100%";
        "border-color" = mkLiteral "@selected";
        "background-color" = mkLiteral "@background-alt";
        "text-color" = mkLiteral "@foreground";
        children = map mkLiteral [ "prompt" "textbox-prompt-colon" "entry" ];
      };

      prompt = {
        enabled = true;
        padding = mkLiteral "15px";
        "border-radius" = mkLiteral "100%";
        "background-color" = mkLiteral "@selected";
        "text-color" = mkLiteral "@background";
      };

      "textbox-prompt-colon" = {
        enabled = true;
        expand = false;
        padding = mkLiteral "15px";
        "background-color" = mkLiteral "inherit";
        "text-color" = mkLiteral "inherit";
      };

      entry = {
        enabled = true;
        padding = mkLiteral "15px 0px";
        "background-color" = mkLiteral "inherit";
        "text-color" = mkLiteral "inherit";
        cursor = mkLiteral "text";
        "placeholder-color" = mkLiteral "inherit";
      };

      listview = {
        enabled = true;
        columns = 6;
        lines = 3;
        cycle = true;
        dynamic = true;
        scrollbar = false;
        layout = mkLiteral "vertical";
        reverse = false;
        "fixed-height" = true;
        "fixed-columns" = true;
        spacing = mkLiteral "20px";
        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        border = mkLiteral "0px solid";
        "border-radius" = mkLiteral "0px";
        "border-color" = mkLiteral "@selected";
        "background-color" = mkLiteral "transparent";
        "text-color" = mkLiteral "@foreground";
        cursor = mkLiteral "default";
      };

      scrollbar = {
        "handle-width" = mkLiteral "5px";
        "handle-color" = mkLiteral "@selected";
        "border-radius" = mkLiteral "0px";
        "background-color" = mkLiteral "@background-alt";
      };

      element = {
        enabled = true;
        spacing = mkLiteral "20px";
        margin = mkLiteral "0px";
        padding = mkLiteral "0px";
        border = mkLiteral "0px solid";
        "border-radius" = mkLiteral "0px";
        "border-color" = mkLiteral "@selected";
        "background-color" = mkLiteral "transparent";
        "text-color" = mkLiteral "@foreground";
        orientation = mkLiteral "vertical";
        cursor = mkLiteral "pointer";
      };

      "element normal.normal" = {
        "background-color" = mkLiteral "transparent";
        "text-color" = mkLiteral "@foreground";
      };

      "element selected.normal" = {
        "background-color" = mkLiteral "transparent";
        "text-color" = mkLiteral "@foreground";
      };

      "element-icon" = {
        padding = mkLiteral "30px";
        "border-radius" = mkLiteral "20px";
        "background-color" = mkLiteral "@background-alt";
        "text-color" = mkLiteral "inherit";
        size = mkLiteral "64px";
        cursor = mkLiteral "inherit";
      };

      "element-text" = {
        padding = mkLiteral "10px";
        "background-color" = mkLiteral "@background";
        "text-color" = mkLiteral "inherit";
        highlight = mkLiteral "inherit";
        cursor = mkLiteral "inherit";
        "vertical-align" = mkLiteral "0.5";
        "horizontal-align" = mkLiteral "0.5";
      };

      "element-text selected" = {
        "border-radius" = mkLiteral "100%";
        "background-color" = mkLiteral "@selected";
        "text-color" = mkLiteral "@background";
      };

      "error-message" = {
        padding = mkLiteral "20px";
        border = mkLiteral "2px solid";
        "border-radius" = mkLiteral "20px";
        "border-color" = mkLiteral "@selected";
        "background-color" = mkLiteral "@background";
        "text-color" = mkLiteral "@foreground";
      };

      textbox = {
        "background-color" = mkLiteral "@background";
        "text-color" = mkLiteral "@foreground";
        "vertical-align" = mkLiteral "0.5";
        "horizontal-align" = mkLiteral "0.0";
        highlight = mkLiteral "none";
      };

      "element alternate.normal" = {
        "background-color" = mkLiteral "transparent";
        "text-color" = mkLiteral "@foreground";
      };
    };

  };
}
