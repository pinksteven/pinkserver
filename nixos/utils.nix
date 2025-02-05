{ config, pkgs, ... }:
{
  networking.hostName = config.var.hostname;
  console.keyMap = config.var.keyboardLayout;

  programs.dconf.enable = true;
  services = {
    dbus.enable = true;
    # This is a server and i need some kind of access
    openssh = {
      enable = true;
      allowSFTP = true;
      settings = {
        PermitRootLogin = "prohibit-password";
      };
    };
  };

  # Faster rebuilding
  documentation = {
    enable = true;
    doc.enable = false;
    man.enable = true;
    dev.enable = false;
    info.enable = false;
    nixos.enable = false;
  };

  programs.git = {
    enable = true;
    config.user = {
      email = config.var.git.email;
      name = config.var.git.username;
    };
  };

  environment.systemPackages = with pkgs; [
    fd
    gcc
    git-ignore
    wget
    curl
    zip
    unzip
    bat
    ripgrep
  ];
}
