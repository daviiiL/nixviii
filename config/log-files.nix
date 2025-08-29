{
  # Disable plugins for .log files
  autoGroups.log_files = {
    clear = true;
  };
  
  autoCmd = [
    {
      event = [ "BufRead" "BufNewFile" ];
      pattern = "*.log";
      group = "log_files";
      callback = {
        __raw = ''
          function()
            -- Disable treesitter highlighting
            vim.treesitter.stop()
            
            -- Disable LSP
            vim.lsp.buf_detach_client(0, vim.lsp.get_active_clients())
            
            -- Disable common plugins that might be heavy for log files
            if vim.fn.exists(':IndentBlanklineDisable') == 2 then
              vim.cmd('IndentBlanklineDisable')
            end
            
            -- Set basic options for log files
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