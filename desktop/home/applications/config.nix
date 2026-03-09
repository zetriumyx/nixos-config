{ config, ... }:

{
  programs.firefox = {
    enable = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "Zetrium Zurain";
      user.email = "zetrium@outlook.com";
      init.defaultBranch = "main";
    };
  };

  programs.alacritty = {
    enable = true;
    # 自定义配置
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
      };
      window = {
        opacity = 0.90;
      };
    };
  };

}
