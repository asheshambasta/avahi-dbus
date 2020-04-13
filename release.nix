let 
  config = { 
    packageOverrides = pkgs: rec { 
      haskellPackages = pkgs.haskellPackages.override { 

        overrides = hpnew: hpold: rec {
          
          avahi-dbus = hpnew.callPackage ./avahi-dbus.nix { zlib = pkgs.zlib; };
        };
      };
    };
  };
  pkgs = import <nixpkgs> { inherit config; };
in rec { 
  avahi-dbus = pkgs.haskellPackages.avahi-dbus; 
}
