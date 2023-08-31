{
  description = "A Nix-flake-based Nim development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      overlays = import ./overlays { };
    in
    {
      devShells."${system}".default =
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [
              overlays.additions
              overlays.modifications
            ];
          };
        in
        pkgs.mkShell {
          packages = with pkgs; [
            nim
            fish
          ];
          shellHook = ''
            echo "nim `${pkgs.nim}/bin/nim --version`"
            exec fish
          '';
        };
    };
}
