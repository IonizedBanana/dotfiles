{ pkgs, ... }:
{
  enviornment.systemPackages = with pkgs; [
    openclaude
  ];
}
