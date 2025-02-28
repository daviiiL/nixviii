{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      disable_underline = true;
      flavour = "mocha";
      integrations = {
        # cmp = true;
        # gitsigns = true;
        # mini = {
        #   enabled = true;
        #   indentscope_color = "";
        # };
        # notify = false;
        # nvimtree = true;
        telescope = true;
        treesitter = true;
      };
      styles = {
        booleans = [
          "bold"
          "italic"
        ];
        conditionals = [
          "bold"
        ];
      };
      term_colors = true;
      transparent_background = true;
    };
  };
}
