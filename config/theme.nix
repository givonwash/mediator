{ lib, ... }:
{
  keymaps = [
    { mode = "n"; key = "gb"; action = "<CMD>BufferLineCycleNext<CR>"; }
    { mode = "n"; key = "gB"; action = "<CMD>BufferLineCyclePrev<CR>"; }
    { mode = "n"; key = "g."; action = lib.nixvim.mkRaw "function() Snacks.bufdelete() end"; }
    { mode = "n"; key = "g>"; action = lib.nixvim.mkRaw "function() Snacks.bufdelete.other() end"; }
    { mode = "n"; key = "<LEADER>td"; action = "<CMD>Trouble diagnostics<CR>"; }
    { mode = "n"; key = "<LEADER>tl"; action = "<CMD>Trouble loclist<CR>"; }
    { mode = "n"; key = "<LEADER>tq"; action = "<CMD>Trouble quickfix<CR>"; }
  ];
  plugins = {
    bufferline = {
      enable = true;
      settings = {
        options = {
          hover.enable = true;
          separator_style = "slope";
          offsets = [
            {
              filetype = "NvimTree";
              text = "File Explorer";
              highlight = "Directory";
              separator = true;
            }
          ];
        };
      };
    };
    helpview.enable = true;
    lualine.enable = true;
    noice.enable = true;
    snacks = {
      enable = true;
      settings = {
        animate.easing = "outExpo";
        bigfile.enabled = true;
        dashboard = {
          enabled = true;
          sections =  [
            { section = "header"; }
            { section = "recent_files"; }
            { section = "projects"; }
          ];
        };
        indent.enabled = true;
        input.enabled = true;
        scroll.enabled = true;
        statuscolumn.enabled = true;
        quickfile.enabled = true;
      };
    };
    render-markdown.enable = true;
    trouble.enable = true;
    web-devicons.enable = true;
  };
  colorschemes.catppuccin.enable = true;
}
