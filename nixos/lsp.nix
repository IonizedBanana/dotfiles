{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rust-analyzer
    rustfmt
    stylua
    nixd
    nixfmt
    jdt-language-server
    # libclang
    ccls
  ];
}
