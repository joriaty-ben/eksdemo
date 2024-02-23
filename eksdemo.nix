{ stdenv
, lib
, fetchzip
}:
stdenv.mkDerivation rec {
  pname = "eksdemo";
  version = "0.12.0";

  src = fetchzip {
    url = "https://github.com/awslabs/eksdemo/releases/download/v${version}/eksdemo_Linux_x86_64.tar.gz";
    sha256 = "sha256-gU3yqe0uAt+EgA9Ck6OEz8RelE4mx5awETOny+zYZN4=";
    stripRoot = false;
  };

  buildPhase = "";
  
  installPhase = ''
    mkdir -p $out/bin
    mv * $out/bin/
  '';
}

