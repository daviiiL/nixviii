{lib, ...}: {
  imports = [
    ./toggleterm.nix
    ./colorizer.nix
    ./undotree.nix
    ./fidget.nix
    ./illuminate.nix
    ./smear-cursor.nix
    ./indent-blankline.nix
    ./bufferline.nix
  ];
  plugins = {
    which-key.enable = lib.mkDefault true;
    markview.enable = lib.mkDefault true;
    todo-comments.enable = lib.mkDefault true;
    ts-autotag.enable = lib.mkDefault true;
    sandwich.enable = lib.mkDefault true;
    neoscroll.enable = lib.mkDefault true;
  };
}
