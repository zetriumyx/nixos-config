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
      flakedit = "hx /home/zetrium/nixos-config/desktop/flake.nix";
      homedit = "hx /home/zetrium/nixos-config/desktop/home/default.nix";
      sysup = "sudo nixos-rebuild switch --upgrade";
      spkgs = "nix search nixpkgs";
    };
  };
}
