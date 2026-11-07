{pkgs, ...}: {
  imports = [
    ./plugins
    ./keybinds.nix
    ./log-files.nix
  ];

  clipboard.providers.wl-copy.enable = pkgs.stdenv.hostPlatform.isLinux;

  opts = {
    number = true;
    relativenumber = false;

    clipboard = "unnamedplus";

    tabstop = 2;
    softtabstop = 2;
    showtabline = 2;
    expandtab = true;
    smartindent = true;
    shiftwidth = 2;
    breakindent = true;
    cursorline = true;
    scrolloff = 8;
    mouse = "a";
    foldmethod = "manual";
    foldenable = false;
    linebreak = true;
    spell = false;
    swapfile = false;
    timeoutlen = 300;
    termguicolors = true;
    showmode = false;
    splitbelow = true;
    splitkeep = "screen";
    splitright = true;
    cmdheight = 0;
    fillchars = "eob: ";
  };
}
