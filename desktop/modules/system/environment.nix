{ config, pkgs, ...}:

{
  environment.sessionVariables = {
    SUDO_EDITOR = "zeditor";
    hmdir = "/etc/nixos/home";
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
