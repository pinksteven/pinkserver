{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      nerd-fonts.fira-mono
    ];

    fontconfig = {
      defaultFonts = {
        monospace = [
          "FiraMono Nerd Font Mono"
        ];
        sansSerif = [
          "FiraMono Nerd Font Mono"
        ];
        serif = [
          "FiraMono Nerd Font Mono"
        ];
      };
    };
  };

}
