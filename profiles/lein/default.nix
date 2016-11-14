let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
  jdk = pkgs.jdk8;
in stdenv.mkDerivation rec {
  name = "lein-env";
  version = "1.0";
  buildInputs = [
    jdk
    (pkgs.leiningen.override {
      jdk = jdk;
    })
  ];

  src = ./.;
}
