{
  keymaps = [
    { mode = "n"; key = "<LEADER>e"; action = "<CMD>NvimTreeToggle<CR>"; }
  ];
  plugins.nvim-tree = {
    enable = true;
    hijackNetrw = true;
    updateFocusedFile.enable = true;
  };
}
