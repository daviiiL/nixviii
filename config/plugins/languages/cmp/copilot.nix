{lib, ...}: {
  plugins = {
    copilot-lua = {
      enable = lib.mkDefault true;
      settings = {
        suggestions.enable = false;
        panel.enable = false;
      };
    };
    copilot-cmp.enable = lib.mkDefault true;
  };
}
