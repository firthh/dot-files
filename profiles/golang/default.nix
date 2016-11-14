let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;

in stdenv.mkDerivation rec {
  name = "golang-env";
  buildInputs = [
    pkgs.go
  ];

  shellHook = ''
    export GOPATH="$HOME/gopath"
    export PATH="$GOPATH/bin:$PATH"
  '';

}

