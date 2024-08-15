{
  # See https://github.com/mhwombat/nix-for-numbskulls/blob/main/flakes.md
  # for a brief overview of what each section in a flake should or can contain.

  description = "a very simple and friendly flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells = rec {
          default = pkgs.mkShell {
            packages = [ pkgs.nodejs_20 pkgs.typescript pkgs.nodePackages.typescript-language-server ];
          };
        };
      }
    );
}
