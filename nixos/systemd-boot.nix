{
  hardware.enableAllFirmware = true; # We're taking hardware firmware, suck it isn't FOSS but oh well

  # Setup systemd-boot
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 3;
    };
    tmp.cleanOnBoot = true;
    # Default kernel is LTS so it's fine
  };
}
