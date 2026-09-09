{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rust-analyzer
    rustfmt
    stylua
    nixd
    nixfmt
    jdt-language-server
    clang-tools
    bash-language-server
    typescript-language-server
  ];
}
