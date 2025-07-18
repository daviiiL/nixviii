{pkgs, ...}: {
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      lua_ls.enable = true;
      pyright.enable = true;

      #web dev
      ts_ls.enable = true;
      cssls.enable = true;
      html.enable = true;
      intelephense = {
        enable = true;
        package = pkgs.intelephense;
      };

      #other needed
      taplo.enable = true;
      nixd.enable = true;
      qmlls.enable = true;
    };
  };
}
