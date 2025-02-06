{
  imports = [
    #LSP
    ./lsp.nix

    #Formatter and stuff
    ./conform.nix
    ./treesitter.nix
    ./cmp
  ];

  #other neat plugins
  plugins = {
    nvim-autopairs.enable = true;
  };
}
