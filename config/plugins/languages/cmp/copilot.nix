{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        suggestions.enable = false;
        panel.enable = false;
      };
    };
    copilot-cmp.enable = true;
  };

  # extraConfigLua = ''
  #   require("copilot").setup({
  #     suggestion = { enabled = false },
  #     panel = { enabled = false },
  #   })
  # '';
}
