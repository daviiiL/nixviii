{config, ...}: {
  plugins.treesitter = {
    enable = true;
    highlight = {
      enable = true;
      disable = ["log"];
    };
    grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
      bash
      bicep
      css
      hcl
      html
      java
      javascript
      json
      lua
      markdown
      markdown_inline
      nix
      php
      python
      qmljs
      query
      regex
      scss
      terraform
      toml
      tsx
      typescript
      vim
      vimdoc
      yaml
    ];
  };
}
