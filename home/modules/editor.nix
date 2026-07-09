{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    settings = {
      theme = "custom";
      #theme = "monokai_pro";
      #theme = "adwaita-dark";
      #theme = "ayu_mirage";
      #theme = "base16_transparent";

      keys.normal = {
        space = {
          q = ":q";
          w = ":w";
        };
      };

      editor = {
        true-color = true;
        color-modes = true;
        popup-border = "all";
      };

      editor.file-picker = {
        hidden = false;
      };

      editor.lsp = {
        display-inlay-hints = true;
        display-progress-messages = true;
      };

      editor.statusline = {
        right = [
          "diagnostics"
          "selections"
          "register"
          "version-control"
          "read-only-indicator"
          "file-encoding"
        ];
      };

      editor.gutters = {
        layout = [
          "line-numbers"
          "spacer"
          "diagnostics"
          "spacer"
          "diff"
        ];
      };

      editor.gutters.line-numbers = {
        min-width = 0;
      };
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter = {
          command = "nixfmt";
        };
      }
    ];

    extraPackages = [
      pkgs.nixd
      pkgs.nixfmt
      pkgs.tombi
      pkgs.glsl_analyzer
    ];

    themes.custom = {
      "type" = "#4ee2fc";
      "type.enum.variant" = "#ff5976";

      "constructor" = "#ff5976";

      "constant" = "#d973fc";
      "constant.character" = "#ffd52b";
      "constant.character.escape" = "#fafafa";

      "string" = "#ffd52b";

      "comment" = "#5f5f5f";
      "commend.unused" = "#555555";

      "variable" = "#fafafa";
      "variable.builtin" = "#555555";
      "variable.other.member.private" = "#555555";

      "label" = "#8cf06b";

      "punctuation" = "#939393";

      "keyword" = "#ff5976";
      "keyword.directive" = "#d973fc"; # C preproc stuff

      "operator" = "#ff5976";

      "function" = "#8cf06b";
      "function.method.private" = "#555555";
      "function.macro" = "#d973fc";
      "function.special" = "#fc884e";

      "tag" = "#ff5976";

      "namespace" = "#d973fc";

      "special" = "#fc884e";

      "markup.heading" = "#8cf06b";

      "markup.heading.marker" = "#939393";

      "markup.heading.1" = "#8cf06b";
      "markup.heading.2" = "#8cf06b";
      "markup.heading.3" = "#4ee2fc";
      "markup.heading.4" = "#d973fc";
      "markup.heading.5" = "#FFD52B";
      "markup.heading.6" = "#939393";

      "markup.list" = "#939393";
      "markup.list.unnumbered" = "#939393";
      "markup.list.numbered" = "#939393";
      "markup.list.checked" = "#8cf06b";
      "markup.list.unchecked" = "#ff5976";

      "markup.bold" = "#fafafa";
      "markup.italic" = "#fafafa";
      "markup.strikethrough" = "#fafafa";

      "markup.link.url" = "#8cf06b";
      "markup.link.label" = "#d973fc";
      "markup.link.text" = "#FFD52B";

      "markup.quote" = "#5f5f5f";

      "markup.raw" = "#FFD52B";
      "markup.raw.inline" = "#FFD52B";
      "markup.raw.block" = "#FFD52B";

      "diff.plus" = "#8cf06b";
      "diff.plus.gutter" = "#8cf06b";

      "diff.minus" = "#ff5976";
      "diff.minus.gutter" = "#ff5976";

      "diff.delta" = "#fc884e";
      "diff.delta.moved" = "#fc884e";
      "diff.delta.conflict" = "#ff5976";
      "diff.delta.gutter" = "#939393";

      # Ui

      "ui.background" = {
        bg = "#232323";
      };

      "ui.background.separator" = {
        bg = "#1a1a1a";
      };

      "ui.cursor.primary" = {
        fg = "#1e1e1e";
        bg = "#757474";
        #modifiers = [ "reversed" ];
      };

      "ui.debug.breakpoint" = {
        fg = "#ff5976";
        bg = "#232323";
      };
      "ui.debug.active" = {
        fg = "#FFD52B";
        bg = "#1a1a1a";
      };

      "ui.gutter" = {
        fg = "#555555";
        bg = "#232323";
      };
      "ui.gutter.selected" = {
        fg = "#fafafa";
        bg = "#232323";
      };

      "ui.linenr" = {
        fg = "#555555";
        bg = "#232323";
      };
      "ui.linenr.selected" = {
        fg = "#fafafa";
        bg = "#232323";
      };

      "ui.statusline" = {
        fg = "#fafafa";
        bg = "#1f1f1f";
      };
      "ui.statusline.inactive" = {
        fg = "#555555";
        bg = "#1a1a1a";
      };

      "ui.statusline.normal" = {
        fg = "#fafafa";
        bg = "#232323";
      };
      "ui.statusline.insert" = {
        fg = "#232323";
        bg = "#8cf06b";
      };
      "ui.statusline.select" = {
        fg = "#232323";
        bg = "#d973fc";
      };

      "ui.statusline.separator" = {
        fg = "#939393";
        bg = "#1f1f1f";
      };

      "ui.bufferline" = {
        fg = "#939393";
        bg = "#232323";
      };
      "ui.bufferline.active" = {
        fg = "#fafafa";
        bg = "#1f1f1f";
      };
      "ui.bufferline.background" = {
        bg = "#232323";
      };

      "ui.popup" = {
        fg = "#fafafa";
        bg = "#232323";
      };
      "ui.popup.info" = {
        fg = "#fafafa";
        bg = "#1a1a1a";
      };

      "ui.help" = {
        fg = "#fafafa";
        bg = "#232323";
      };

      "ui.text" = {
        fg = "#fafafa";
        bg = "#232323";
      };
      "ui.text.focus" = {
        fg = "#fafafa";
        bg = "#1a1a1a";
      };

      "ui.text.inactive" = {
        fg = "#555555";
        bg = "#232323";
      };
      "ui.text.info" = {
        fg = "#4ee2fc";
      };
      "ui.text.directory" = {
        fg = "#8cf06b";
      };

      "ui.menu" = {
        fg = "#fafafa";
        bg = "#232323";
      };
      "ui.menu.selected" = {
        fg = "#232323";
        bg = "#fafafa0c";
      };
      "ui.menu.scroll" = {
        fg = "#fafafa12";
        bg = "#232323";
      };

      "ui.selection" = {
        bg = "#5b595c";
      };
      "ui.selection.primary" = {
        bg = "#5b595c";
      };

      "ui.highlight" = {
        bg = "#fafafa0c";
      };
      "ui.highlight.frameline" = {
        bg = "#1f1f1f";
      };

      "ui.cursorline.primary" = {
        bg = "#1f1f1f";
      };
      "ui.cursorline.secondary" = {
        bg = "#1a1a1a";
      };

      "ui.cursorcolumn.primary" = {
        bg = "#1f1f1f";
      };
      "ui.cursorcolumn.secondary" = {
        bg = "#1a1a1a";
      };

      #"ui.virtual.ruler" = {
      #  fg = "#1f1f1f";
      #};
      #"ui.virtual.whitespace" = {
      #  fg = "#555555";
      #};

      #"ui.virtual.indent-guide" = {
      #  fg = "#232323";
      #};

      "ui.virtual.inlay-hint" = {
        fg = "#727072";
      };

      #"ui.virtual.wrap" = {
      #  fg = "#555555";
      #};
      #"ui.virtual.jump-label" = {
      #  fg = "#FFD52B";
      #  bg = "#232323";
      #};

      "warning" = {
        fg = "#fc884e";
      };
      "diagnostic.warning" = {
        underline = {
          color = "#fc884e";
          style = "curl";
        };
        modifiers = [ "dim" ];
      };
      "diagnostic.unnecessary" = {
        underline = {
          color = "#fc884e";
          style = "curl";
        };
        modifiers = [ "dim" ];
      };
      "diagnostic.deprecated" = {
        fg = "#fc884e";
        modifiers = [ "crossed_out" ];
      };

      "error" = {
        fg = "#ff5976";
      };
      "diagnostic.error" = {
        underline = {
          color = "#ff5976";
          style = "curl";
        };
        modifiers = [ "bold" ];
      };

      "info" = {
        fg = "#4ee2fc";
      };
      "diagnostic.info" = {
        underline = {
          color = "#4ee2fc";
          style = "curl";
        };
      };

      "hint" = {
        fg = "#939393";
      };
      "diagnostic.hint" = {
        underline = {
          color = "#939393";
          style = "curl";
        };

      };

      "tabstop" = {
        fg = "#FFD52B";
        bg = "#1a1a1a";
      };
    };

    defaultEditor = true;
  };

  programs.zed-editor = {
    enable = true;
    defaultEditor = false;

    extensions = [
      "monokai-vibrant-amped"
      "material-icon-theme"

      "toml"
      "tombi"

      "zig"

      "nix"

      "slang"
      "glsl"
    ];

    userSettings = {
      helix_mode = true;
      diagnostics.inline.enabled = true;
      inlay_hints.enabled = true;
      disable_ai = true;
      telemetry = {
        diagnostics = false;
        metrics = false;
      };

      theme = {
        mode = "dark";
        light = "Ayu Light";
        dark = "Monokai Vibrant Amped";
      };
      project_panel = {
        dock = "left";
      };

      languages.Nix.language_servers = [
        "nixd"
        "!nil"
      ];

      lsp.nix.settings = {
        # I have no idea if this is correct
        nixpkgs.expr = "import (builtins.getFlake (toString ./.)).inputs.nixpkgs { }";
        formatting.command = [ "nixfmt" ];
      };
    };

    mutableUserKeymaps = false;
    mutableUserSettings = false;
    mutableUserTasks = false;
  };
}
