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
      jsonls.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      terraformls.enable = true;
      yamlls.enable = true;
    };
  };
  plugins = {
    comment.enable = true;
    conform-nvim = {
      enable = true;
      luaConfig.content = ''
        do
          local setup_conform = function()
            opts = require('neoconf').get('conform', {})
            require('conform').setup(opts)
          end

          vim.api.nvim_create_autocmd({'BufWritePre'}, {
            once = true,
            callback = setup_conform
          })
        end
      '';
    };
    lspconfig.enable = true;
    schemastore = {
      enable = true;
      json.enable = true;
      yaml.enable = true;
    };
    treesitter = {
      enable = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;
      nixvimInjections = true;
      settings = {
        highlight.enable = true;
        incremental_selection.enable = true;
      };
    };
    treesitter-context.enable = true;
  };
}
