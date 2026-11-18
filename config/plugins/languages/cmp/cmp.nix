{lib, ...}: {
  plugins = {
    blink-cmp-git.enable = lib.mkDefault true;
    blink-cmp-spell.enable = lib.mkDefault true;
    blink-cmp = {
      enable = lib.mkDefault true;
      settings = {
        keymap = {
          preset = "enter";
          "<Tab>" = [
            "select_next"
            "snippet_forward"
            "fallback"
          ];
          "<S-Tab>" = [
            "select_prev"
            "snippet_backward"
            "fallback"
          ];
        };

        sources = {
          default = [
            "git"
            "lsp"
            "path"
            "buffer"
            "copilot"
            "spell"
          ];
          providers = {
            copilot = {
              name = "copilot";
              module = "blink-cmp-copilot";
              async = true;
              score_offset = 100;
            };
            git = {
              name = "git";
              module = "blink-cmp-git";
              score_offset = 100;
              enabled.__raw = ''
                function()
                  return vim.tbl_contains({ "gitcommit", "octo", "markdown" }, vim.bo.filetype)
                end
              '';
            };
            spell = {
              name = "Spell";
              module = "blink-cmp-spell";
              score_offset = -5;
            };
          };
        };

        completion.ghost_text.enabled = true;

        cmdline.completion.menu.auto_show = true;
      };
    };
  };
}
