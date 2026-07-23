{
  keymaps = [
    { mode = "n"; key = "<LEADER>e"; action = "<CMD>NvimTreeToggle<CR>"; }
  ];
  plugins = {
    nvim-tree = {
      enable = true;
      settings = {
        hijack_netrw = true;
        update_focused_file.enable = true;
      };
    };
    project-nvim = {
      enable = true;
      enableTelescope = true;
    };
  };
}
