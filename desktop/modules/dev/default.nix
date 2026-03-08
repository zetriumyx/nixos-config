{ config, pkgs, ...}:

{
  imports = [
    ./rust.nix
  ];
  dev.rust.enable = true;
}
