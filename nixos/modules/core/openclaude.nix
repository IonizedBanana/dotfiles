{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    openclaude
  ];
}
