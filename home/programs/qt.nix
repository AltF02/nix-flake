{
  pkgs,
  config,
  ...
}: {
  home.packages = [pkgs.adwaita-qt];

  qt = {
    enable = true;
    platformTheme = "gnome";
  };
}
