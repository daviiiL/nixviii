{
  imports = [
    ./plugins
    ./keybinds.nix
    ./log-files.nix
  ];

  # GENERAL SETTINGS

  # clipboard support
  clipboard.providers.wl-copy.enable = true;

  opts = {
    # line number
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
    #min line number above and below the cur line
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
  };
}
