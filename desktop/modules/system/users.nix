{ config, pkgs, ...}:

{
  users.users.zetrium = {
    isNormalUser = true;
    description = "Zetrium";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
    
    ];
  };

}
