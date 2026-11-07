{
  plugins.web-devicons.enable = true;
  plugins.neo-tree = {
    enable = true;

    settings = {
      log_to_file = false;
      filesystem.filtered_items.hide_gitignored = false;
    };
  };
}
