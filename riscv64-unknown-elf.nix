{ stdenv, fetchurl, patchmacho, xz }:

stdenv.mkDerivation {
  pname = "riscv64-unknown-elf";
  version = "8.3.0-2020.04.0";

  src = fetchurl {
    url = "https://static.dev.sifive.com/dev-tools/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-apple-darwin.tar.gz";
    sha256 = "f7b5d1ff92b1fe0db90295ba02e8f684c5d8fc3c26d01cef6b376668053fc038";
  };

  nativeBuildInputs = [ patchmacho ];
  buildInputs = [ xz.dev ];

  installPhase = ''
    mkdir "$out"
    cp -rp . "$out"
    patchmacho $out/bin/riscv64-unknown-elf-gdb /usr/local/opt/xz/lib/liblzma.5.dylib ${xz.out}/lib/liblzma.5.dylib
  '';
}