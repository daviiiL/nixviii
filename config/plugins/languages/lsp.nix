{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      lua_ls.enable = true;
      pyright.enable = true;
      ts_ls.enable = true;
      taplo.enable = true;
      nixd.enable = true;
    };
  };
}
