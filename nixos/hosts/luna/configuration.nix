# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, lib, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./laptop.nix
    ./mathlab.nix
    ./netbird.nix
    ../../modules/core/configuration.nix
    ../../modules/core/apps.nix
    ../../modules/core/lsp.nix
    ../../modules/core/nas.nix
  ];

  networking.hostName = "luna"; # Define your hostname.
  services.resolved.enable = true;
}
