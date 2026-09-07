# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ../../modules/core/configuration.nix
    ../../modules/core/apps.nix
    ../../modules/core/lsp.nix
    ../../modules/core/nas.nix

  ];
  
  networking.hostName = "terra"; # Define your hostname.
  networking.nameservers = [
    "192.168.1.133"
  ];
}
