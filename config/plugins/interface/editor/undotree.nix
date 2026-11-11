{lib, ...}: {
  plugins.undotree = {
    enable = lib.mkDefault true;
    settings = {
      autoOpenDiff = true;
      focusOnToggle = true;
    };
  };
}
