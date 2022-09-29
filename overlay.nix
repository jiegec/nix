self: super:

{
  riscv64-unknown-elf = self.callPackage ./riscv64-unknown-elf.nix { };
}
