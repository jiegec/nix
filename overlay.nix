self: super:

{
  patchmacho = self.callPackage ./patchmacho.nix {};
  riscv64-unknown-elf = self.callPackage ./riscv64-unknown-elf.nix {};
  iproute2mac = self.callPackage ./iproute2mac.nix {};
  powerline-status = self.callPackage ./powerline-status.nix {
    buildPythonPackage = self.python38Packages.buildPythonPackage;
    fetchPypi = self.python38Packages.fetchPypi;
  };

  default-env = super.buildEnv {
    name = "default-env";
    paths = [
      (self.python38.withPackages (
        ps: [
          self.powerline-status
        ]
      ))
    ];
  };
}
