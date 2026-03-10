{ config, pkgs, lib, ...}:

{
  programs.dms-shell.enable = true;
  programs.niri.enable = true;
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];
}
