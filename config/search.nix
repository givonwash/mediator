{ lib, ... }:
{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<LEADER>fb" = "buffers";
      "<LEADER>fc" = "commands";
      "<LEADER>fd" = "diagnostics";
      "<LEADER>fe" = "treesitter";
      "<LEADER>ff" = "find_files";
      "<LEADER>fg" = "git_files";
      "<LEADER>fh" = "help_tags";
      "<LEADER>fi" = "lsp_incoming_calls";
      "<LEADER>fk" = "grep_string";
      "<LEADER>fm" = "man_pages";
      "<LEADER>fo" = "lsp_outgoing_calls";
      "<LEADER>fp" = "lsp_implementations";
      "<LEADER>fr" = "live_grep";
      "<LEADER>ft" = "builtin";
      "<LEADER>fs" = "lsp_references";
    };
    settings = {
      defaults = {
        path_display = [ "filename_first" ];
        mappings = {
          i = {
            "<C-j>" = lib.nixvim.mkRaw "require('telescope.actions').move_selection_next";
            "<C-k>" = lib.nixvim.mkRaw "require('telescope.actions').move_selection_previous";
            "<ESC>" = lib.nixvim.mkRaw "require('telescope.actions').close";
          };
        };
      };
    };
  };
}
