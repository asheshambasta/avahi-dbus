# compute the extra dependencies.
pkgs:

with pkgs; 

let 
  # zlib is required
  foreign = { zlib = zlib; };
in 
  { foreign = foreign; }
