{ pkgs, lib, ... }:
let
  acp = pkgs.nodePackages."@zed-industries/claude-code-acp";
in
{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "claude-code-nix";
      acp_providers."claude-code-nix" = {
        command = lib.getExe' acp "claude-agent-acp";
        args = [ ];
        env = {
          NODE_NO_WARNINGS = "1";
          ACP_PATH_TO_CLAUDE_CODE_EXECUTABLE = "claude";
          ACP_PERMISSION_MODE = "bypassPermissions";
        };
      };
    };
  };
}
