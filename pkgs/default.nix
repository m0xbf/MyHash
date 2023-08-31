{ pkgs, ... }:
{
  # example = pkgs.callPackage ./example { };
  # nimlangserver = pkgs.callPackage ./nimlangserver { };
  checksums = pkgs.callPackage ./checksums { };
}
