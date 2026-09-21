{ pkgs, lib, ... }:
{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "codex-nix";
      acp_providers."codex-nix" = {
        command = lib.getExe pkgs.codex-acp;
        # codex-acp 0.9.2's built-in default model is long gone from OpenAI's
        # catalog for ChatGPT-subscription accounts; pin one this account has.
        args = [
          "-c"
          "model=\"gpt-5.6-sol\""
        ];
        env = {
          HOME = lib.nixvim.mkRaw "os.getenv('HOME')";
          OPENAI_API_KEY = lib.nixvim.mkRaw "os.getenv('OPENAI_API_KEY')";
        };
      };
    };
  };
}
