{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # archive
    zip p7zip xz unzip zstd gnutar

    # shell
    zsh-autosuggestions
    zsh-syntax-highlighting

    # life QoL
    siyuan ccal typst tinymist rustdesk-flutter

    # network
    localsend clash-verge-rev aria2 socat nmap easytier
    
    # utils
    vicinae ripgrep zoxide fzf eza mtr just file sd tree which
    nix-output-monitor hugo

    # security
    gnupg pinentry-tty

    # system monitor
    btop iotop iftop lm_sensors pciutils usbutils
    sysstat ethtool

    # laptop
    asusctl supergfxctl
  ];
}
