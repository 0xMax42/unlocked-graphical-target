# Changelog

All notable changes to this project will be documented in this file.

## [unreleased]

### 📚 Documentation

- Add project overview and usage to README - ([0a746b0](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/0a746b02222e2e701c8f158b411bf662b9395bf4))

### ⚙️ Miscellaneous Tasks

- *(workflows)* Sync releases between gitea and github - ([c5bd7c7](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/c5bd7c71d56767d3b1801cd94ae87e9f715cddbc))

## [0.1.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/compare/v0.1.0-pre.4..v0.1.0) - 2026-01-18

### 🚀 Features

- *(system)* Add target gated on unlocked graphical session after resume - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([60b0a9f](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/60b0a9f42e3010790e0788c25cb044afcb3fe2a6))

### 🐛 Bug Fixes

- *(systemd)* Move unlock wait to dedicated oneshot service - (from [v0.1.0-pre.4](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.4)) - ([0393388](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/03933883ed901d2e572f2903a3601ab39a632bf5))
- *(system-sleep)* Run unlock wait in background after resume - (from [v0.1.0-pre.3](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.3)) - ([6bcde52](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/6bcde521fc35065b1ad5ed35cc9408b4d41ebd5a))
- *(system-sleep)* Add logging and harden unlock gate handling - (from [v0.1.0-pre.2](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.2)) - ([77f3df5](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/77f3df5166bedff3f96f7b760f571129ddabf85c))
- *(system-sleep)* Add delay before waiting for unlock after resume - (from [v0.1.0-pre.1](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.1)) - ([d38187a](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/d38187a33125a7ea316c0d7bc4b6c17cf61b337e))
- *(makefile)* Install systemd units under prefix-aware paths - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([29a370a](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/29a370a1ad596e1ce787487046c4774f2c590c86))

### 🎨 Styling

- *(makefile)* Remove obsolete comment about systemd unit locations - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([aff8cfb](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/aff8cfbef639c64e62336385d4d2232d5c5d75f7))

### ⚙️ Miscellaneous Tasks

- Prepare release v0.1.0 - ([8d7dc47](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/8d7dc47e69c54c4a0a7e19c254622113778af4a6))
- *(debian)* Reload systemd daemon and disable auto start in packaging - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([ccee110](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/ccee110f79c373c615980e384b6912a2066f48ae))
- *(git)* Ignore dist build artifacts - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([e4c830a](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/e4c830acc35eaae6d7c36ddb0e56c47444171ec5))
- *(ci)* Add gitea workflows for release and deb packaging - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([e351ec1](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/e351ec15894ce1901a4fa7143845d3d9f2cc1978))
- *(debian)* Add packaging metadata for debian build - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([8583210](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/8583210476a90256e5accea8a3516f568fc54b9f))
- *(makefile)* Add install and uninstall targets - (from [v0.1.0-pre.0](https://git.0xmax42.io/maxp/unlocked-graphical-target/releases/tag/v0.1.0-pre.0)) - ([e08960c](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/e08960ca7ed0625370598932c84d23c3749386be))

## [0.1.0-pre.4](https://git.0xmax42.io/maxp/unlocked-graphical-target/compare/v0.1.0-pre.3..v0.1.0-pre.4) (pre-release) - 2026-01-13

### 🐛 Bug Fixes

- *(systemd)* Move unlock wait to dedicated oneshot service - ([0393388](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/03933883ed901d2e572f2903a3601ab39a632bf5))

## [0.1.0-pre.3](https://git.0xmax42.io/maxp/unlocked-graphical-target/compare/v0.1.0-pre.2..v0.1.0-pre.3) (pre-release) - 2026-01-13

### 🐛 Bug Fixes

- *(system-sleep)* Run unlock wait in background after resume - ([6bcde52](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/6bcde521fc35065b1ad5ed35cc9408b4d41ebd5a))

## [0.1.0-pre.2](https://git.0xmax42.io/maxp/unlocked-graphical-target/compare/v0.1.0-pre.1..v0.1.0-pre.2) (pre-release) - 2026-01-13

### 🐛 Bug Fixes

- *(system-sleep)* Add logging and harden unlock gate handling - ([77f3df5](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/77f3df5166bedff3f96f7b760f571129ddabf85c))

## [0.1.0-pre.1](https://git.0xmax42.io/maxp/unlocked-graphical-target/compare/v0.1.0-pre.0..v0.1.0-pre.1) (pre-release) - 2026-01-13

### 🐛 Bug Fixes

- *(system-sleep)* Add delay before waiting for unlock after resume - ([d38187a](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/d38187a33125a7ea316c0d7bc4b6c17cf61b337e))

## [0.1.0-pre.0] (pre-release) - 2026-01-13

### 🚀 Features

- *(system)* Add target gated on unlocked graphical session after resume - ([60b0a9f](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/60b0a9f42e3010790e0788c25cb044afcb3fe2a6))

### 🐛 Bug Fixes

- *(makefile)* Install systemd units under prefix-aware paths - ([29a370a](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/29a370a1ad596e1ce787487046c4774f2c590c86))

### 🎨 Styling

- *(makefile)* Remove obsolete comment about systemd unit locations - ([aff8cfb](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/aff8cfbef639c64e62336385d4d2232d5c5d75f7))

### ⚙️ Miscellaneous Tasks

- *(debian)* Reload systemd daemon and disable auto start in packaging - ([ccee110](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/ccee110f79c373c615980e384b6912a2066f48ae))
- *(git)* Ignore dist build artifacts - ([e4c830a](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/e4c830acc35eaae6d7c36ddb0e56c47444171ec5))
- *(ci)* Add gitea workflows for release and deb packaging - ([e351ec1](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/e351ec15894ce1901a4fa7143845d3d9f2cc1978))
- *(debian)* Add packaging metadata for debian build - ([8583210](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/8583210476a90256e5accea8a3516f568fc54b9f))
- *(makefile)* Add install and uninstall targets - ([e08960c](https://git.0xmax42.io/maxp/unlocked-graphical-target/commit/e08960ca7ed0625370598932c84d23c3749386be))


