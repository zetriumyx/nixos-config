{ config, ... }:

{
  imports = [
    ./nvidia.nix
    ./audio.nix
  ];
  services.printing.enable = true;
}
