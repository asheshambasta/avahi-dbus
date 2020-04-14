let 
  config = { 
    packageOverrides = pkgs: rec { 
      haskellPackages = pkgs.haskellPackages.override { 

        overrides = hpnew: hpold: rec {
          
          avahi-dbus = hpnew.callPackage ./avahi-dbus.nix { zlib = extradeps.foreign.zlib; };
        };
      };
    };
  };
  extradeps = import ./extradeps.nix pkgs;
  pkgs = import <nixpkgs> { inherit config; };
in rec { 
  avahi-dbus = pkgs.haskellPackages.avahi-dbus; 
}
