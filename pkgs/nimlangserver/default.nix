{ lib
, nimPackages
, fetchGithub
, srcOnly
, nim
}:
nimPackages.buildNimPackage rec {
  pname = "nimlangserver";
  version = "0.2.0";
  gitRev = "85c1b32fc1fb28552cc45f5cf8ca005ae345e1e9";
  nimBinOnly = true;

  src = fetchGithub {
    owner = "nim-lang";
    repo = "langserver";
    rev = gitRev;
    sha256 = "sha256-nZ2iGFjczpt9+4uE/3y6SGyjMoQgSsF+dGJ/8XIjs/0=";
  };

  buildInputs = with nimPackages; [
    asynctools
    
  ]
}
