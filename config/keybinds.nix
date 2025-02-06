{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = ["n"];
      key = "<C-n>";
      action = "<cmd>Neotree toggle<cr>";
      options = {desc = "Open/Close Neotree";};
    }
  ];
}
