{ config, ... }:
{
  imports = [ ../../nixos/variables-config.nix ];

  config.var = {
    hostname = "pinkserver";
    username = "admin";
    configDirectory = "/home/" + config.var.username + "/.config/nixos";

    keyboardLayout = "pl";

    location = "Warsaw";
    timezone = "Europe/Warsaw";
    defaultLocale = "en_US.UTF-8";
    extraLocale = "pl_PL.UTF-8";

    git = {
      username = "Steven";
      email = "st.latuszek@gmail.com";
    };

    autoUpgrade = false;
    autoGC = false;
  };
}
