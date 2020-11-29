{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  pname = "patchmacho";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "jiegec";
    repo = "patchmacho";
    rev = "f7253f1a360b4f99a1c741ab3d4295906b366575";
    sha256 = "1zr16qfqnq3fjmih29kglhi6zdgd184b6s9ybq949y076x5rbwr1";
  };

  nativeBuildInputs = [];
  buildInputs = [];
}