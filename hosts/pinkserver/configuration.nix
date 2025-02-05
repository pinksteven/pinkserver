{
  imports = [

    ./hardware-configuration.nix # have to paste it here manually
    ./variables.nix
  ];

  # Not to be touched
  system.stateVersion = "24.11";
}
