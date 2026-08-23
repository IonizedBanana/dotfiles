{ pkgs, ... }:
{
  services.fprintd = {
    enable = true;
  };
  security.pam.services.sudo.fprintAuth = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    settings = {
      General = {
        # hopefully shows battery percentage
        Experimental = true;
      };
    };
  };
  environment.systemPackages = with pkgs; [
    vscodium
    libfprint-2-tod1-goodix
  ];
}
