{ config, pkgs, ...}:

{
  imports = [
    ./rust.nix
    ./common.nix
  ];
  dev.rust.enable = true;
}
