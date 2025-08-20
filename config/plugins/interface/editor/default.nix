{
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
    #NOTE: transfer multiline declarations to seperate files
    which-key.enable = true;
    markview.enable = true;
    todo-comments.enable = true;
    ts-autotag.enable = true;
    sandwich.enable = true;
    neoscroll.enable = true;
  };
}
