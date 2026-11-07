{
  imports = [
    ./lsp.nix

    ./conform.nix
    ./treesitter.nix
    ./cmp
  ];

  plugins = {
    nvim-autopairs.enable = true;
  };
}
