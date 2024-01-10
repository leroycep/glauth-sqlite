{ pkgs
, buildGoApplication ? pkgs.buildGoApplication
}:

buildGoApplication {
  pname = "glauth-sqlite";
  version = "2.3.0";
  pwd = ./.;
  src = ./.;
  modules = ./gomod2nix.toml;

  buildFlags = "-buildmode=plugin";

  subPackages = [ "sqlite.go" ];

  doCheck = false;
}
