let
  uSwitchPkgs = import ../code/uswitch/nixpkgs/all-packages.nix {};
  unstablePkgs = import ../code/nixpkgs/default.nix {};
in {
  allowUnfree = true;
  allowBroken = true;
  packageOverrides = pkgs_: with pkgs_; {
    hugofirth = with pkgs; buildEnv {
      name = "hugofirth";
      paths = [
        gimp
        tig
        htop
        jq
        keepassx2
        filezilla

        scudcloud

        gnumake380
        tree
        scrot
        rfkill
        libreoffice
        bazaar
        gnome3.gnome-screenshot
        pavucontrol
        unstablePkgs.awscli
        imv
        uSwitchPkgs.vaulted
        uSwitchPkgs.stscreds

        jdk8
        leiningen
        skype
      ];
    };
  };
}
