{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustup
    stylua
    nixd
    nixfmt
    jdt-language-server
  ];
}
