{ pkgs ? import <nixpkgs> {} }:

let
  avahi-dbus = (import ./release.nix).avahi-dbus;
in pkgs.mkShell {
  buildInputs = with pkgs; [
    zlib
    (haskellPackages.ghcWithPackages (h: [avahi-dbus]))
  ];
}
