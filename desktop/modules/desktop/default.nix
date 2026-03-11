{ config, ...}:

{
  imports = [
    ./niri.nix
  ];
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
  };
  programs.xwayland = {
    enable = true;
  };
}
