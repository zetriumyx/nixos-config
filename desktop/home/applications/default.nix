{ config, pkgs, ... }:

{
  imports = [
    ./apps.nix
    ./config.nix
  ];  
}
