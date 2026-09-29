{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    x11docker
    docker
    docker-compose
  ];
}
