self: super:

{
  patchmacho = self.callPackage ./patchmacho.nix {};
  riscv64-unknown-elf = self.callPackage ./riscv64-unknown-elf.nix {};
  iproute2mac = self.callPackage ./iproute2mac.nix {};
}
