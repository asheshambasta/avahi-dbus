{ pkgs ? import <nixpkgs> {} }:

let
  avahi-dbus = (import ./release.nix).avahi-dbus;
  extradeps = import ./extradeps.nix pkgs;
  foreign = builtins.attrValues extradeps.foreign; 
in pkgs.mkShell {
  buildInputs = with pkgs; foreign ++ [
    (haskellPackages.ghcWithHoogle (h: [avahi-dbus]))
  ];
}
