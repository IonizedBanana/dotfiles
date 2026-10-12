{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wlvncc
    labwc
    xprop
    xrdb
  ];
  virtualisation.docker.enable = true;
  # programs.ssh.forwardX11 = true;
  # services.xserver.enable = true;
  # services.xserver.excludePackages = with pkgs; [
  #   xterm
  # ];
}
