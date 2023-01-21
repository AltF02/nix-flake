{
  pkgs,
  config,
  inputs,
  ...
}: {
  imports = [
    ../shell/nix.nix
    ./files
    ./git.nix
    ./gpg.nix
    ./gtk.nix
    ./flatpak.nix
    ./packages.nix
    ./xdg.nix
    ./yubikey.nix
  ];

  programs = {
    firefox = {
      enable = true;
      profiles.matt = {
        settings = {
          "browser.toolbars.bookmarks.visibility" = "always";
          "dom.security.https_only_mode" = true;
        };
      };
    };
  };
}
