{ config, pkgs, lib, ...}:

let
  cfg = config.dev.rust;
in
{
  options.dev.rust = {
    enable = lib.mkEnableOption "Rust develop environment";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      rustup
      cargo-nextest
      cargo-edit
      cargo-watch
      cargo-make
      taplo
    ];
    environment.sessionVariables = {
      RUSTUP_UPDATE_ROOT = "https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup";
      RUSTUP_DIST_SERVER = "https://mirrors.tuna.tsinghua.edu.cn/rustup";
    };
  };
}
