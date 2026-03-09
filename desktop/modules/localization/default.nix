{ config, pkgs, ... }:

{
  imports = [
    ./rime-ice.nix
    ./fonts.nix
  ];
  time.timeZone = "Asia/Shanghai";
  i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.extraLocales = [ "en_US.UTF-8/UTF-8" ];
}
