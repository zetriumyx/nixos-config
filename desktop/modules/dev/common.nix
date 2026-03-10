{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vscode
    zed-editor
    jetbrains.rust-rover
    libgcc
  ];
}
