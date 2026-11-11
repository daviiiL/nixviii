{lib, ...}: {
  plugins.telescope = {
    enable = lib.mkDefault true;
  };
}
