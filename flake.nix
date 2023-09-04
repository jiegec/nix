{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: rec {
    packages.x86_64-linux.cajviewer = nixpkgs.legacyPackages.x86_64-linux.callPackage ./cajviewer.nix { };

    packages.x86_64-linux.crosstool-ng = nixpkgs.legacyPackages.x86_64-linux.callPackage ./crosstool-ng.nix { };

    packages.x86_64-darwin.riscv64-unknown-elf = nixpkgs.legacyPackages.x86_64-darwin.callPackage ./riscv64-unknown-elf.nix { };

    hydraJobs.crosstool-ng.x86_64-linux = packages.x86_64-linux.crosstool-ng;
  };
}
