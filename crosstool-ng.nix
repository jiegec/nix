{ lib
, stdenv
, fetchurl
, which
, flex
, bison
, texinfo
, unzip
, help2man
, libtool
, ncurses
}:

stdenv.mkDerivation rec {
  pname = "crosstool-ng";
  version = "1.25.0";

  src = fetchurl {
    url = "http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-${version}.tar.xz";
    sha256 = "sha256-aBYvNCJDzUGJ7XwfTjuxMCyqPyy7+DMYeb0B/gbGDNM=";
  };

  nativeBuildInputs = [
    which
    flex
    bison
    texinfo
    unzip
    help2man
    libtool
    ncurses
  ];

  buildInputs = [
  ];

  propagatedBuildInputs = [
  ];

  meta = with lib; {
    description = "A versatile (cross-)toolchain generator.";
    maintainers = with maintainers; [ jiegec ];
    platforms = platforms.unix;
  };
}

