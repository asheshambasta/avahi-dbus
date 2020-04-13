{ mkDerivation, base, dbus, stdenv, text, zlib }:
mkDerivation {
  pname = "avahi-dbus";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base dbus text ];
  librarySystemDepends = [ zlib ];
  doHaddock = false;
  description = "DBus bindings for Avahi";
  license = stdenv.lib.licenses.bsd3;
}
