# NixOS configuration

## Purpose

* To backup my personal configuration of nixos running on a personal computer.

* To sync my nixos configurations amoung devices(if there are)

## Structure

```text
.
├── desktop
│   ├── flake.lock
│   ├── flake.nix
│   ├── hardware-configuration.nix
│   ├── home
│   │   ├── applications
│   │   │   ├── apps.nix
│   │   │   ├── config.nix
│   │   │   └── default.nix
│   │   ├── default.nix
│   │   └── dotfiles
│   │       ├── fcitx5
│   │       │   └── ice.yaml
│   │       ├── niri
│   │       │   ├── config.kdl
│   │       │   └── dms
│   │       │       ├── alttab.kdl
│   │       │       ├── binds.kdl
│   │       │       ├── colors.kdl
│   │       │       ├── cursor.kdl
│   │       │       ├── layout.kdl
│   │       │       ├── outputs.kdl
│   │       │       ├── profiles
│   │       │       │   └── profile_1772955688477_juslzk.kdl
│   │       │       ├── windowrules.kdl
│   │       │       └── wpblur.kdl
│   │       └── zshconfig
│   └── modules
│       ├── desktop
│       │   ├── default.nix
│       │   └── niri.nix
│       ├── dev
│       │   ├── common.nix
│       │   ├── default.nix
│       │   └── rust.nix
│       ├── hardware
│       │   ├── audio.nix
│       │   ├── default.nix
│       │   └── nvidia.nix
│       ├── localization
│       │   ├── default.nix
│       │   ├── fonts.nix
│       │   └── rime-ice.nix
│       ├── shell
│       │   ├── default.nix
│       │   └── zsh.nix
│       └── system
│           ├── boot.nix
│           ├── default.nix
│           ├── environment.nix
│           ├── network.nix
│           ├── nixos.nix
│           ├── security.nix
│           └── users.nix
├── LICENSE
└── README.md
```
