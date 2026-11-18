{lib, ...}: {
  plugins = {
    copilot-lua = {
      enable = lib.mkDefault true;
      settings = {
        suggestion.enabled = false;
        panel.enabled = false;
      };
    };
    blink-cmp-copilot.enable = lib.mkDefault true;
  };
}
