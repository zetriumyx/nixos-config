{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "git+https://mirrors.tuna.tsinghua.edu.cn/git/nixpkgs.git?ref=nixos-unstable&shallow=1";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hardware-config = {
      url = "path:/home/zetrium/nixos-config/desktop/hardware-configuration.nix";
      flake = false;
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, hardware-config, ... }: {
    nixosConfigurations = {
      # 这里的 my-nixos 替换成你的主机名称
      skylight = nixpkgs.lib.nixosSystem {
        modules = [
          (import hardware-config)
          (import ./modules/system)
          (import ./modules/localization)
          (import ./modules/desktop)
          (import ./modules/localization)
          (import ./modules/shell)
          (import ./modules/dev)
          (import ./modules/hardware)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.zetrium = import ./home;
            home-manager.extraSpecialArgs = inputs;
          }
        ];
      };
    };
  };
}
