{ config, pkgs, ...}:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster";
    };
    interactiveShellInit = "
        source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
        source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
      ";
    shellAliases = {
      flakedit = "sudo hx /etc/nixos/flake.nix";
      homedit = "sudo hx /etc/nixos/home/default.nix";
      sysup = "sudo nixos-rebuild switch --upgrade";
      sysconfig = "sudo hx /etc/nixos/configuration.nix";
      spkgs = "nix search nixpkgs";
    };
  };
}
