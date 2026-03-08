# NixOS configuration
## Purpose
* To backup my personal configuration of nixos running on a personal computer.
* To sync my nixos configurations amoung devices(if there are)
## Structure
'''bash
.
├── desktop
│   ├── configuration.nix
│   ├── flake.lock
│   ├── flake.nix
│   ├── hardware-configuration.nix
│   ├── home
│   │   ├── default.nix
│   │   ├── dev
│   │   │   └── rust.nix
│   │   └── dotfiles
│   │       ├── fcitx5
│   │       │   └── ice.yaml
│   │       ├── niri
│   │       │   ├── config.kdl
│   │       │   ├── config.kdl.backup1772953503
│   │       │   ├── config.kdl.backup1772953504
│   │       │   ├── config.kdl.backup1772953511
│   │       │   ├── config.kdl.backup1772953512
│   │       │   ├── config.kdl.backup1772953513
│   │       │   ├── config.kdl.backup.2026-03-08_14-49-21
│   │       │   └── dms
│   │       │       ├── alttab.kdl
│   │       │       ├── binds.kdl
│   │       │       ├── colors.kdl
│   │       │       ├── cursor.kdl
│   │       │       ├── layout.kdl
│   │       │       ├── outputs.kdl -> /home/zetrium/.config/niri/dms/profiles/profile_1772955688477_juslzk.kdl
│   │       │       ├── profiles
│   │       │       │   └── profile_1772955688477_juslzk.kdl
│   │       │       ├── windowrules.kdl
│   │       │       └── wpblur.kdl
│   │       └── zshconfig
│   └── modules
│       ├── desktop
│       │   └── niri.nix
│       ├── drivers
│       │   └── nvidia.nix
│       ├── fonts.nix
│       ├── im
│       │   └── rime-ice.nix
│       └── zsh.nix
├── LICENSE
└── README.md
'''