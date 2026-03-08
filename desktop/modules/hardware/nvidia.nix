{ config, pkgs, ... }:
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true; # 兼容 Steam/Wine 等 32 位程序
  };
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    open = true; # RTX 20 系列及以上建议开启
    prime = {
      sync.enable = true; # 开启同步模式，防止撕裂
      amdgpuBusId = "PCI:6:0:0"; # 替换为你自己的核显 Bus ID,如果是 intel 就换为 intelgpuBusId
      nvidiaBusId = "PCI:1:0:0"; # 替换为你自己的独显 Bus ID
    };
  };
}
