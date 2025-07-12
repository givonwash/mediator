{ lib, ... }:
{
  plugins ={
    gitsigns ={
      enable = true;
      settings.on_attach = lib.nixvim.mkRaw ''
        function()
            vim.keymap.set('n', '<LEADER>gb', require('gitsigns').blame_line, { buffer = true })
            vim.keymap.set('n', '<LEADER>gj', require('gitsigns').next_hunk, { buffer = true })
            vim.keymap.set('n', '<LEADER>gk', require('gitsigns').prev_hunk, { buffer = true })
            vim.keymap.set('n', '<LEADER>gp', require('gitsigns').preview_hunk, { buffer = true })
            vim.keymap.set('n', '<LEADER>gr', require('gitsigns').reset_hunk, { buffer = true })
        end
      '';
    };
    nvim-autopairs.enable = true;
    nvim-surround.enable = true;
    which-key.enable = true;
  };
}
