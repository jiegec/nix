{ lib, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "powerline-status";
  version = "2.7";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1dpc49ai2ff5qgyz1wx1n0ndnw7g6avndc96hay348zbbfj7szlc";
  };

  doCheck = false;
}