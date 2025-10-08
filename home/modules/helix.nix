{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      #theme = "adwaita-dark";
      #theme = "base16_transparent";
      theme = "blyat";
      editor.lsp = {
        display-inlay-hints = true;
      };
    };

    themes = {
      blyat = let
        transparent = "none";
        blue_1 = "#99C1F1";
        blue_2 = "#62A0EA";
        blue_3 = "#3584E4";
        blue_4 = "#1C71D8";
        blue_5 = "#1A5FB4";
        blue_6 = "#1B497E";
        blue_7 = "#193D66";
        brown_1 = "#CDAB8F";
        brown_2 = "#B5835A";
        brown_3 = "#986A44";
        brown_4 = "#865E3C";
        brown_5 = "#63452C";
        chameleon_3 = "#4E9A06";
        dark_1 = "#77767B";
        dark_2 = "#5E5C64";
        dark_3 = "#504E55";
        dark_4 = "#3D3846";
        dark_5 = "#241F31";
        dark_6 = "#000000";
        dark_7 = "#1c1c1c";
        green_1 = "#8FF0A4";
        green_2 = "#57E389";
        green_3 = "#33D17A";
        green_4 = "#2EC27E";
        green_5 = "#26A269";
        green_6 = "#1F7F56";
        green_7 = "#1C6849";
        libadwaita_dark = "#1D1D1D";
        libadwaita_dark_alt = "#303030";
        libadwaita_popup = "#282828";
        light_1 = "#FFFFFF";
        light_2 = "#FCFCFC";
        light_3 = "#F6F5F4";
        light_4 = "#DEDDDA";
        light_5 = "#C0BFBC";
        light_6 = "#B0AFAC";
        light_7 = "#9A9996";
        orange_1 = "#FFBE6F";
        orange_2 = "#FFA348";
        orange_3 = "#FF7800";
        orange_4 = "#E66100";
        orange_5 = "#C64600";
        purple_1 = "#DC8ADD";
        purple_2 = "#C061CB";
        purple_3 = "#9141AC";
        purple_4 = "#813D9C";
        purple_5 = "#613583";
        red_1 = "#F66151";
        red_2 = "#ED333B";
        red_3 = "#E01B24";
        red_4 = "#C01C28";
        red_5 = "#A51D2D";
        teal_1 = "#93DDC2";
        teal_2 = "#5BC8AF";
        teal_3 = "#33B2A4";
        teal_4 = "#26A1A2";
        teal_5 = "#218787";
        violet_2 = "#7D8AC7";
        violet_3 = "#6362C8";
        violet_4 = "#4E57BA";
        yellow_1 = "#F9F06B";
        yellow_2 = "#F8E45C";
        yellow_3 = "#F6D32D";
        yellow_4 = "#F5C211";
        yellow_5 = "#E5A50A";
        yellow_6 = "#D38B09";
        cyan = "#ffbe69";
        cyan_2 = "#49f5d2";
        blue_8 = "#5345ed";
        blue_9 = "#4F9CD6";
        yellow_7 = "#f7ff80";
        white = "47f037";
        split_and_borders = "#4F4F4F";
     in {
        "ui.menu" = transparent;
        "ui.menu.selected" = { modifiers = [ "reversed" ]; };
        "attribute" = orange_4;

        "type" = cyan_2;
        "type.builtin" = cyan_2;

        "constructor" = yellow_2;

        "constant" = cyan;
        "constant.builtin" = { fg = cyan_2; modifiers = ["bold"]; };
        "constant.character" = cyan_2;
        "constant.numeric" = { fg = cyan_2; modifiers = ["bold"]; };
        "constant.character.escape" = cyan_2;
        
        "string" = "#ffff6e";
        "string.regexp" = purple_2;
        "string.special" = blue_2;
        
        "comment" = dark_2;
        
        "variable" = cyan;
        "variable.parameter" = cyan;
        "variable.builtin" = blue_9;
        "variable.other" = cyan;
        "variable.other.member" = cyan;
        
        "label" = purple_2;
        
        "punctuation" = light_4;
        "punctuation.delimiter" = light_4;
        "punctuation.bracket" = light_1;
        "punctuation.special" = "#FED700";
        
        "keyword" = { fg = blue_9; modifiers = ["bold"]; };
        "keyword.control" = { fg = "#e000cf"; modifiers = ["bold"]; };
        "keyword.operator" = purple_2;
        "keyword.directive" = { fg = blue_9; modifiers = ["bold"]; };
        "keyword.function" = blue_9;
        "keyword.storage" = { fg = blue_9; modifiers = ["bold"]; };
        
        "operator" = purple_2;
        
        "function" = { fg = yellow_7; modifiers = ["bold"]; };
        "function.builtin" = { fg = yellow_7; modifiers = ["bold"]; };
        "function.macro" = { fg = yellow_7; modifiers = ["bold"]; };
        "function.special" = { fg = yellow_7; modifiers = ["bold"]; };
        
        "tag" = teal_2;
        
        "namespace" = cyan_2;
        
        "markup" = light_4;
        "markup.heading" = { fg = teal_2; modifiers = ["bold"]; };
        "markup.list" = { fg = orange_2; modifiers = ["bold"]; };
        "markup.bold" = { fg = light_4; modifiers = ["bold"]; };
        "markup.italic" = { fg = light_4; modifiers = ["italic"]; };
        "markup.link" = { fg = blue_3; modifiers = ["underlined"]; };
        "markup.quote" = { fg = light_3; modifiers = ["italic"]; };
        "diff.plus" = teal_3;
        "diff.minus" = red_1;
        "diff.delta" = orange_3;
        "diff.delta.moved" = orange_2;
        
        "ui.background" = { fg = light_4; bg = transparent; };
        "ui.background.separator" = { fg = split_and_borders; bg = transparent; };
        "ui.cursor" = { fg = libadwaita_dark; bg = light_5; };
        "ui.cursor.insert" = { fg = libadwaita_dark; bg = light_5; };
        "ui.cursor.select" = { fg = libadwaita_dark; bg = light_5; };
        "ui.cursor.match" = { fg = libadwaita_dark; bg = blue_2; };
        "ui.cursor.primary" = { fg = libadwaita_dark; bg = light_7; };
        "ui.linenr" = "#fafafa";
        "ui.linenr.selected" = { fg = light_7; bg = transparent; modifiers = [ "bold" ]; };
        "ui.statusline" = { fg = light_4; bg = transparent; };
        "ui.statusline.inactive" = { fg = light_4; bg = transparent; };
        "ui.statusline.insert" = { fg = light_4; bg = transparent; };
        "ui.statusline.select" = { fg = light_4; bg = transparent; };
        "ui.popup" = { bg = libadwaita_popup; };
        "ui.window" = split_and_borders;
        "ui.help" = { bg = libadwaita_dark_alt; };
        "ui.text" = light_4;
        "ui.virtual" = dark_1;
        "ui.virtual.ruler" = { bg = libadwaita_popup; };
        "ui.menu.selected" = { fg = light_4; bg = blue_5; };
        "ui.menu.scroll" = { fg = light_7; bg = dark_3; };
        "ui.selection" = { bg = blue_7; };
        "ui.selection.primary" = { bg = blue_7; };
        "ui.cursorline.primary" = { bg = libadwaita_dark_alt; };
        
        "warning" = yellow_2;
        "error" = red_4;
        "info" = purple_2;
        "hint" = blue_2;
        
        "diagnostic.hint" = { fg = blue_2; modifiers = ["dim"]; };
        "diagnostic.info" = { fg = purple_2; modifiers = ["dim"]; };
        "diagnostic.error" = { fg = red_4; modifiers = ["underlined"]; };
        "diagnostic.warning" = { fg = yellow_2; modifiers = ["underlined"]; };
        "diagnostic.unnecessary" = { modifiers = ["dim"]; };
        "diagnostic.deprecated" = { modifiers = ["crossed_out"]; };
        
        "ui.bufferline" = { fg = dark_2; bg = libadwaita_dark; };
        "ui.bufferline.active" = { fg = light_4; bg = libadwaita_dark_alt; };
      };
    };
  };
}
