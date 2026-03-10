{ config, pkgs, ...}:

{
  environment.sessionVariables = {
    SUDO_EDITOR = "zeditor";
    hmdir = "/etc/nixos/home";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    GDK_BACKEND = "wayland";
  };
  
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    helix
    zsh
    fish
  ];

}
