{ pkgs, lib, ... }:
{
  diagnostic.settings = {
    float.source = true;
  };
  lsp = {
    inlayHints.enable = true;
    keymaps = [
      { key = "gD"; action = lib.nixvim.mkRaw "vim.diagnostic.open_float"; }
      { key = "gd"; lspBufAction = "definition"; }
    ];
    servers = {
      basedpyright.enable = true;
      bashls.enable = true;
      dockerls.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      terraformls.enable = true;
    };
  };
  plugins = {
    comment.enable = true;
    conform-nvim.enable = true;
    lspconfig.enable = true;
    treesitter = {
      enable = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;
      nixvimInjections = true;
      settings = {
        highlight.enable = true;
        incremental_selection.enable = true;
      };
    };
    treesitter-context = {
      enable = true;
      settings.mode = "topline";
    };
  };
}
