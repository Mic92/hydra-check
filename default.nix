{ pkgs ? import <nixpkgs> {} }:

with pkgs.python3.pkgs;
buildPythonPackage {
  name = "env";
  src = ./.;
  propagatedBuildInputs = [
    docopt
    requests
    beautifulsoup4
  ];
  checkInputs = [ black jq ];
}
