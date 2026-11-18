{lib, ...}: {
  colorschemes.catppuccin = {
    enable = lib.mkDefault true;
    settings = {
      disable_underline = true;
      flavour = "mocha";
      integrations = {
        telescope = true;
        treesitter = true;
      };
      custom_highlights.IblScope.fg = "#7d699d";
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
