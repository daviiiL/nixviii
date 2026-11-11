{lib, ...}: {
  plugins.bufferline = {
    enable = lib.mkDefault true;
    settings.options = {
      always_show_bufferline = true;
      show_buffer_close_icons = false;
    };
  };
}
