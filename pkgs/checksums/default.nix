{ lib, buildNimPackage, fetchFromGitHub }:

buildNimPackage rec {
  pname = "checksums";
  version = "025bcca3915a1b9f19878cea12ad68f9884648fc";

  src = fetchFromGitHub {
    owner = "nim-lang";
    repo = "checksums";
    rev = version;
    hash = "sha256-RB2IXs2xcfYHhV9d7l1mtHW51mtsrqrYRapSoTikvHw=";
  };

  meta = with lib; {
    description = "Hash algorithms in Nim.";
    homepage = "https://github.com/nim-lang/checksums";
    license = licenses.mit;
    maintainers = [ maintainers.marsam ];
  };
}
