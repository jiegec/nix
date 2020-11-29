{ stdenv, fetchurl, python3 }:

stdenv.mkDerivation {
  pname = "iproute2mac";
  version = "1.3.0";

  src = fetchurl {
    url = "https://github.com/brona/iproute2mac/releases/download/v1.3.0/iproute2mac-1.3.0.tar.gz";
    sha256 = "3fefce6b0f5e166355fdb04934cbdd906211b64e5adb6a385469696dc51233b7";
  };

  nativeBuildInputs = [];
  buildInputs = [ python3 ];

  installPhase = ''
    mkdir -p "$out/bin"
    cp -p src/ip.py "$out/bin/ip"
  '';
}