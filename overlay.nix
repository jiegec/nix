self: super:

let
  callPackage = super.lib.callPackageWith super;
in

{
  riscv64-unknown-elf = callPackage ./riscv64-unknown-elf.nix {};
  iproute2mac = callPackage ./iproute2mac.nix {};
}
