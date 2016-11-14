let
  uSwitchPkgs = import ../code/uswitch/nixpkgs/all-packages.nix {};
in {
  allowUnfree = true;
  allowBroken = true;
  packageOverrides = pkgs_: with pkgs_; {
    hugofirth = with pkgs; buildEnv {
      name = "hugofirth";
      paths = [
        openjdk
        gimp
        bluez5
        tig
        htop
        jq
        keepassx2
        filezilla

        go
        gnumake380
        tree
        scrot
        rfkill
        libreoffice
        bazaar
        gnome3.gnome-screenshot
        pavucontrol
        imv
      ];
    };
  };
}
