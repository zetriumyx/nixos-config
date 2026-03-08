{ config, pkgs, ...}:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # Kernel choice
  boot.kernelPackages = pkgs.linuxPackages_zen;

}
