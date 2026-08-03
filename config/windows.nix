{
  plugins.smart-splits = {
    enable = true;
    settings = {
      default_amount = 3;
      multiplexer_integration = false;
    };
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<LEADER>W";
      group = "resize window";
    }
  ];
}
