{ stdenv, fetchurl, xz }:

stdenv.mkDerivation {
  pname = "riscv64-unknown-elf";
  version = "10.2.0-2020.12.8";

  src = fetchurl {
    url = "https://static.dev.sifive.com/dev-tools/freedom-tools/v2020.12/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-apple-darwin.tar.gz";
    sha256 = "d0fc75a76cb2873576bc49f0014011de4dac24cd63ce4c67c985aa37167cf730";
  };

  nativeBuildInputs = [ ];
  buildInputs = [ xz.dev ];

  installPhase = ''
    mkdir -p "$out/toolchain"
    cp -rp . "$out/toolchain"

    mkdir -p "$out/bin"
    cd "$out/toolchain/bin"
    for binary in *; do
        ln -s "$out/toolchain/bin/$binary" "$out/bin/$binary"
    done

    install_name_tool -change /usr/local/opt/xz/lib/liblzma.5.dylib ${xz.out}/lib/liblzma.5.dylib $out/toolchain/bin/riscv64-unknown-elf-gdb 
  '';
}
