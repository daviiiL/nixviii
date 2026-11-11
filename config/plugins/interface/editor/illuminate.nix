{lib, ...}: {
  plugins.illuminate = {
    enable = lib.mkDefault true;
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
