{
  keymaps = [
    { mode = "n"; key = "gb"; action = "<CMD>BufferLineCycleNext<CR>"; }
    { mode = "n"; key = "gB"; action = "<CMD>BufferLineCyclePrev<CR>"; }
    { mode = "n"; key = "<LEADER>td"; action = "<CMD>Trouble diagnostics<CR>"; }
    { mode = "n"; key = "<LEADER>tl"; action = "<CMD>Trouble loclist<CR>"; }
    { mode = "n"; key = "<LEADER>tq"; action = "<CMD>Trouble quickfix<CR>"; }
  ];
  plugins = {
    bufferline = {
      enable = true;
      settings.options.hover.enable = true;
    };
    helpview.enable = true;
    lualine.enable = true;
    render-markdown.enable = true;
    trouble.enable = true;
    web-devicons.enable = true;
  };
  colorschemes.catppuccin.enable = true;
}
