{
  imports = [
    ./toggleterm.nix
    ./colorizer.nix
  ];
  plugins = {
    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };
    which-key.enable = true;
    markview.enable = true;
    fidget = {
      enable = true;
      settings = {
        notification = {
          window.winblend = 0;
        };
      };
    };
    ts-autotag.enable = true;
    sandwich.enable = true;
  };
}
