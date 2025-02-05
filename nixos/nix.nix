{ config, ... }:
{
  # I ain't Stallman
  nixpkgs.config.allowsUnfree = true;

  nix.settings = {
    auto_optimise_store = true;
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  programs.nh = {
    enable = true;

    clean.enable = config.var.autoGC;
    clean.extraArgs = "--keep 5 --keep-since 7d";
    flake = config.var.configDirectory;
  };

  system.autoUpgrade = {
    enable = config.var.autoUpgrade;
    dates = "04:00";
    flake = "${config.var.configDirectory}";
    flags = [
      "--update-input"
      "nixpkgs"
      "--commit-lock-file"
    ];
    allowReboot = false;
  };
}
