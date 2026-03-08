{ config, ... }:

{
  imports = [
    ./nixos.nix
    ./users.nix
    ./environment.nix
    ./security.nix
    ./network.nix
    ./boot.nix
  ];
}
