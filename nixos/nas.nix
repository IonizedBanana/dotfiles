{ ... }:
{
  fileSystems."/nas" = {
    device = "truenas.home:/mnt/main/files";
    fsType = "nfs4";
    options = [ "x-systemd.automount" "noauto" "x-systemd.idle-timeout=60" ];
  };
}
