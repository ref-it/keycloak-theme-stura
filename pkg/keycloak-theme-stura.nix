{ pkgs, ... }:
pkgs.stdenv.mkDerivation {
  pname = "keycloak-theme-stura";
  version = "0.0.0";
  src = pkgs.lib.cleanSource ../.;

  installPhase = ''
    mkdir -p $out
    cp -r login $out/
  '';
}
