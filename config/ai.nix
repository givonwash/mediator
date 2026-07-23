{ pkgs, lib, ... }:
let
  # Free, self-contained (wrapper hardcodes absolute node). Replaces `npx -y -g`.
  acp = pkgs.nodePackages."@zed-industries/claude-code-acp";
in
{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "claude-code-nix";

      # Define a NEW provider key instead of overriding the built-in "claude-code".
      # avante deep-merges nested tables, and Lua list-merge would keep the default
      # `npx -y -g @zed-industries/claude-code-acp` args even if we set args = [].
      # A fresh key has no defaults to merge against, so this stays clean.
      acp_providers."claude-code-nix" = {
        command = lib.getExe' acp "claude-agent-acp";
        args = [ ];
        env = {
          NODE_NO_WARNINGS = "1";
          # System `claude` holds the enterprise OAuth login. Resolved via
          # Neovim's PATH, which avante forwards to the spawned child.
          ACP_PATH_TO_CLAUDE_CODE_EXECUTABLE = "claude";
          ACP_PERMISSION_MODE = "bypassPermissions";
        };
      };
    };
  };
}
