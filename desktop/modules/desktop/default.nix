{ config, ...}:

{
  imports = [
    ./niri.nix
  ];
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;
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
