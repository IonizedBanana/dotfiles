{ pkgs, ... }:
{
  fileSystems."/nas" = {
    device = "truenas.home:/mnt/main/files";
    fsType = "nfs4";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.idle-timeout=60"
      "soft"
      "_netdev"
    ];
  };
  boot.supportedFilesystems = [
    "nfs"
  ];

  environment.systemPackages = with pkgs; [
    nfs-utils
  ];
}
