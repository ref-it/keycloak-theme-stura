final: prev:
let
  pkgs = final;
in
{
  # this key should be the same as the simpleFlake name attribute.
  keycloak-theme-stura = {
    keycloak-theme-stura = import ./pkgs/keycloak-theme-stura.nix {
      inherit pkgs;
    };
  };
}
