{
  lib,
  inputs,
  pkgs,
  ...
}: {
  config = {
    extraConfigLuaPre =
      # lua
      ''
        local slow_format_filetypes = {}

        -- formatters can't parse half-written code; keep those in :ConformInfo, don't notify
        local parse_error_patterns = { "cannot parse", "failed to parse", "parse error", "syntaxerror" }

        local function notify_format_error(err)
          local msg = err:lower()
          for _, pattern in ipairs(parse_error_patterns) do
            if msg:find(pattern, 1, true) then
              return
            end
          end
          vim.notify("Formatter failed. See :ConformInfo for details", vim.log.levels.ERROR)
        end

        vim.api.nvim_create_user_command("FormatDisable", function(args)
           if args.bang then
            vim.b.disable_autoformat = true
          else
            vim.g.disable_autoformat = true
          end
        end, {
          desc = "Disable autoformat-on-save",
          bang = true,
        })
        vim.api.nvim_create_user_command("FormatEnable", function()
          vim.b.disable_autoformat = false
          vim.g.disable_autoformat = false
        end, {
          desc = "Re-enable autoformat-on-save",
        })
        vim.api.nvim_create_user_command("FormatToggle", function(args)
          if args.bang then
            vim.b.disable_autoformat = not vim.b.disable_autoformat
          else
            vim.g.disable_autoformat = not vim.g.disable_autoformat
          end
        end, {
          desc = "Toggle autoformat-on-save",
          bang = true,
        })
      '';
    plugins.conform-nvim = {
      enable = lib.mkDefault true;
      settings = {
        format_on_save = ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              elseif err then
                notify_format_error(err)
              end
            end

            return { timeout_ms = 200, lsp_fallback = true }, on_format
           end
        '';

        format_after_save = ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if not slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            return { lsp_fallback = true }, function(err)
              if err then
                notify_format_error(err)
              end
            end
          end
        '';
        notify_on_error = false;
        formatters_by_ft = {
          html = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          css = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          scss = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          javascript = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          typescript = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          python = [
            "black"
            "isort"
          ];
          lua = ["stylua"];
          nix = ["alejandra"];
          markdown = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          yaml = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            stop_after_first = true;
          };
          terraform = ["terraform_fmt"];
          bicep = lib.mkIf pkgs.stdenv.hostPlatform.isLinux ["bicep"];
          bash = [
            "shellcheck"
            "shellharden"
            "shfmt"
          ];
          json = ["jq"];
          php = ["pretty-php"];
          qml = ["qmlformat"];
          java = ["google-java-format"];
          "_" = ["trim_whitespace"];
        };

        formatters = {
          black = {
            command = "${lib.getExe pkgs.black}";
          };
          isort = {
            command = "${lib.getExe pkgs.isort}";
          };
          alejandra = {
            command = "${lib.getExe pkgs.alejandra}";
          };
          jq = {
            command = "${lib.getExe pkgs.jq}";
          };
          prettierd = {
            command = "${lib.getExe pkgs.prettierd}";
          };
          stylua = {
            command = "${lib.getExe pkgs.stylua}";
          };
          shellcheck = {
            command = "${lib.getExe pkgs.shellcheck}";
          };
          shfmt = {
            command = "${lib.getExe pkgs.shfmt}";
          };
          shellharden = {
            command = "${lib.getExe pkgs.shellharden}";
          };
          bicep = lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
            command = "${lib.getExe pkgs.bicep}";
          };
          pretty-php = {
            commmand = "${lib.getExe pkgs.pretty-php}";
          };
          qmlformat = {
            command = "${lib.getExe' pkgs.kdePackages.qtdeclarative "qmlformat"}";
            args = ["-n" "--objects-spacing" "--functions-spacing" "$FILENAME"];
          };
          google-java-format = {
            command = "${lib.getExe pkgs.google-java-format}";
          };
        };
      };
    };
  };
}
