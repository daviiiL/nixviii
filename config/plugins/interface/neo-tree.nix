{lib, ...}: {
  plugins.web-devicons.enable = lib.mkDefault true;
  plugins.neo-tree = {
    enable = lib.mkDefault true;

    settings = {
      log_to_file = false;
      filesystem.filtered_items.hide_gitignored = false;
    };
  };
}
