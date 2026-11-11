{lib, ...}: {
  plugins.fidget = {
    enable = lib.mkDefault true;
    settings = {
      notification = {
        window.winblend = 0;
      };
    };
  };
}
