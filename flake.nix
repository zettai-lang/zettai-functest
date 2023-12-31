{
  description = "zettai-functest";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
      inherit (pkgs) mkShell python3Packages;
      inherit (python3Packages) cram;
    in
    {
      devShells.default = mkShell { packages = [ cram ]; };
    });
}
