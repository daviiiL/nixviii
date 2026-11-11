{
  lib,
  pkgs,
  ...
}: {
  plugins.lsp = {
    enable = lib.mkDefault true;
    inlayHints = true;
    servers = {
      lua_ls.enable = true;
      pyright.enable = true;

      ts_ls.enable = true;
      cssls.enable = true;
      html.enable = true;
      intelephense = {
        enable = true;
        package = pkgs.intelephense;
      };

      taplo.enable = true;
      nixd.enable = true;
      qmlls.enable = true;

      jdtls.enable = true;
    };
  };
}
