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
    vscode
    libfprint-2-tod1-goodix
  ];
  powerManagement.enable = true;
  boot.resumeDevice = "/dev/disk/by-uuid/902826df-b30e-4c06-b67a-fd7a2c56fbb7";
  services.logind.settings.Login = {
    HandlePowerKey = "hibernate";
  };
  services.tlp = {
  enable = true;
  settings = {
    CPU_SCALING_GOVERNOR_ON_AC = "performance";
    CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

    CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
    CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

    CPU_MIN_PERF_ON_AC = 0;
    CPU_MAX_PERF_ON_AC = 100;
    CPU_MIN_PERF_ON_BAT = 0;
    CPU_MAX_PERF_ON_BAT = 60;

    # Optional helps save long term battery health
    # START_CHARGE_THRESH_BAT0 = 40; # 40 and below it starts to charge
    STOP_CHARGE_THRESH_BAT0 = 90; # 90 and above it stops charging
  };
};
}
