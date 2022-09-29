{ stdenv, fetchurl, appimageTools }:

appimageTools.wrapType2 {
  pname = "cajviewer";
  version = "210401";

  src = fetchurl {
    url = "https://download.cnki.net/CAJViewer-x86_64-buildubuntu1604-210401.AppImage";
    sha256 = "ab8a9b1db3496513f930b41a3016f15b885815100736019f4d5cd4830080ea8b";
  };
}
