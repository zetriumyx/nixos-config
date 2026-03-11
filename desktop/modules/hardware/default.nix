{ config, ... }:

{
  imports = [
    ./nvidia.nix
    ./audio.nix
  ];
  services.printing.enable = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        Experimental = true;
        FastConnectable = true;
      };
      Policy = {
        AutoEnable = true;
      };
    };
  };

}
