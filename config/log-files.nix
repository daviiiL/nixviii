{
  autoGroups.log_files = {
    clear = true;
  };

  autoCmd = [
    {
      event = ["BufRead" "BufNewFile"];
      pattern = "*.log";
      group = "log_files";
      callback = {
        __raw = ''
          function()
            vim.treesitter.stop()

            for _, client in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
              vim.lsp.buf_detach_client(0, client.id)
            end

            if vim.fn.exists(':IndentBlanklineDisable') == 2 then
              vim.cmd('IndentBlanklineDisable')
            end

            vim.bo.syntax = 'off'
            vim.bo.filetype = 'text'
            vim.wo.wrap = false
            vim.wo.number = true
            vim.wo.relativenumber = false
          end
        '';
      };
    }
  ];
}
