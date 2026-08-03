{
  plugins.smart-splits = {
    enable = true;
    settings = {
      default_amount = 3;
      multiplexer_integration = false;
    };
  };

  # smart-splits dropped its built-in resize mode in 2.0, so roll our own.
  extraConfigLua = ''
    -- Sticky resize submode: h/j/k/l resize repeatedly, any other key exits.
    local function resize_mode()
      local ss = require("smart-splits")
      local resize = {
        h = ss.resize_left,
        j = ss.resize_down,
        k = ss.resize_up,
        l = ss.resize_right,
      }

      while true do
        vim.api.nvim_echo({ { "-- RESIZE -- h/j/k/l to resize, any other key to exit", "ModeMsg" } }, false, {})
        local ok, char = pcall(vim.fn.getcharstr)
        vim.api.nvim_echo({}, false, {})

        if not ok or not resize[char] then
          return
        end

        resize[char]()
        vim.cmd.redraw()
      end
    end

    vim.api.nvim_create_user_command("ResizeMode", resize_mode, { desc = "Enter sticky window resize mode" })
  '';
}
