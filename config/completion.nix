{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      cmdline.enabled = true;
      completion = {
        documentation = {
          auto_show = true;
          auto_show_delay_ms = 500;
        };
        list.selection.preselect = false;
      };
      keymap = {
        preset = "enter";
        "<TAB>" = [ "select_next" "fallback" ];
        "<S-TAB>" = [ "select_prev" "fallback" ];
        "<C-j>" = [ "snippet_forward" "fallback" ];
        "<C-k>" = [ "snippet_backward" "fallback" ];
      };
    };
  };
}
