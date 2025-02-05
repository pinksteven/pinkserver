{
  imports = [
    ../../nixos/docker.nix
    ../../nixos/fonts.nix
    ../../nixos/locale.nix
    ../../nixos/networkmanager.nix
    ../../nixos/nix.nix
    ../../nixos/sudo.nix
    ../../nixos/systemd-boot.nix
    ../../nixos/users.nix
    ../../nixos/utils.nix

    ./hardware-configuration.nix # have to paste it here manually
    ./variables.nix
  ];

  # Not to be touched
  system.stateVersion = "24.11";
}
