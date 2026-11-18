{lib, ...}: {
  plugins.indent-blankline = {
    enable = lib.mkDefault true;
    settings.scope.include.node_type.nix = [
      "attrset_expression"
      "list_expression"
    ];
  };
}
