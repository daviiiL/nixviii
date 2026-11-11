{lib, ...}: {
  plugins.toggleterm = {
    enable = lib.mkDefault true;
    settings = {
      size = 20;
    };
  };
}
