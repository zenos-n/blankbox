{
  description = "Blankbox — a native GNOME terminal";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" ];
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          blankbox = pkgs.callPackage ./package.nix { };
        in
        {
          inherit blankbox;
          default = blankbox;
          blackbox-next = blankbox;
        });

      checks = forAllSystems (system: {
        default = self.packages.${system}.blankbox;
      });

      devShells = forAllSystems (system: {
        default = nixpkgs.legacyPackages.${system}.mkShell {
          inputsFrom = [ self.packages.${system}.blankbox ];
        };
      });
    };
}
