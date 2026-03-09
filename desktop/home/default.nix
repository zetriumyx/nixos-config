{ config, pkgs, ... }:

{

  imports = [
    (import ./applications)
  ];
  
  # 注意修改这里的用户名与用户目录
  home.username = "zetrium";
  home.homeDirectory = "/home/zetrium";

  # 将当前配置目录中的文件导入 Nix store，并在 Home 目录下生成指向该 store 文件的符号链接
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;
  # 
  # 将 scripts 目录导入 Nix store，并在 Home 目录下递归生成指向 store 中的文件的符号链接
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # 递归整个文件夹
  #   executable = true;  # 将其中所有文件添加「执行」权限
  # };
  # 
  # 直接以 text 的方式，在 nix 配置文件中硬编码文件内容
  # home.file.".xxx".text = ''
  #     xxx
  # '';
  # 设置鼠标指针大小以及字体 DPI（适用于 4K 显示器）

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # Dotfiles 管理
  home.file = {
    ".zshrc".source = ./dotfiles/zshconfig;
    ".local/share/fcitx5/rime/default.custom.yaml".source = ./dotfiles/fcitx5/ice.yaml;
    ".config/niri/".source = ./dotfiles/niri;
  };

  home.stateVersion = "25.11";
}
