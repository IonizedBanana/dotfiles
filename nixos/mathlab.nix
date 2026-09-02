{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    python314
    python314packages.numpy
    python314packages.sympy
    python314packages.jupyter-core
    jupyter-kernel
  ];
}
