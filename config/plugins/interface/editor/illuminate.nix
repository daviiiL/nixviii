{
  plugins.illuminate = {
    enable = true;
    settings = {
      modes_allowlist = [
        "n"
        "i"
      ];
      providers = [
        "lsp"
        "treesitter"
        "regex"
      ];
    };
  };
}
