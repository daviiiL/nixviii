{
  imports = [
    ./toggleterm.nix
    ./colorizer.nix
    ./undotree.nix
    ./fidget.nix
  ];
  plugins = {
    #NOTE: transfer multiline declarations to seperate files
    which-key.enable = true;
    markview.enable = true;
    todo-comments.enable = true;
  };
}
