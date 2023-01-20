{
  pkgs,
  config,
  lib,
  inputs,
  ...
}: {
  services = {
    udev.packages = with pkgs; [yubikey-personalization];
    pcscd.enable = true;
  };

  programs.ssh.startAgent = false;

  hardware.gpgSmartcards.enable = true;

  environment.shellInit = ''
    gpg-connect-agent /bye
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  '';
}
