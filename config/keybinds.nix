{
  globals.mapleader = " ";

  keymaps = [
    #plugins that keymaps defined in their files
    #cmp

    #neo-tree
    {
      mode = ["n"];
      key = "<C-n>";
      action = "<cmd>Neotree toggle<cr>";
      options = {desc = "Open/Close Neotree";};
    }

    #undotree
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        silent = true;
        desc = "Undotree";
      };
    }

    #telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "Telescope: file finder";
      };
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "Telescope: live grep";
      };
    }
  ];
}
