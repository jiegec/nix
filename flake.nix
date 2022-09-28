{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    packages.x86_64-darwin.riscv64-unknown-elf = nixpkgs.legacyPackages.x86_64-darwin.callPackage ./riscv64-unknown-elf.nix { };
  };
}
