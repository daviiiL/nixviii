{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "git";}
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "copilot";}
      ];

      experimental = {
        ghost_text = true;
      };
      performance = {
        debounce = 60;
        fetchingTimeout = 200;
        maxViewEntries = 30;
      };

      mapping = {
        __raw =
          /*
          lua
          */
          ''
            cmp.mapping.preset.insert({
              ['<C-n>'] = cmp.mapping.select_next_item(),  -- Select next item (VS Code: Down Arrow/Ctrl+N)
              ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Select previous item (VS Code: Up Arrow/Ctrl+P)
              ['<CR>'] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }), -- Confirm completion (VS Code: Enter)
              ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                else
                  fallback()
                end
              end, { "i", "s" }),
              ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_prev_item()
                else
                  fallback()
                end
              end, { "i", "s" }),
              })
          '';
      };
    };

    #cmp for command line
    cmdline = {
      "/" = {
        mapping = {
          __raw = "cmp.mapping.preset.cmdline()";
        };
        sources = [
          {
            name = "buffer";
          }
        ];
      };
      ":" = {
        mapping = {
          __raw = "cmp.mapping.preset.cmdline()";
        };
        sources = [
          {
            name = "path";
          }
          {
            name = "cmdline";
            option = {
              ignore_cmds = [
                "Man"
                "!"
              ];
            };
          }
        ];
      };
    };
  };
}
