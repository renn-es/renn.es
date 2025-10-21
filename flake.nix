{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "renn-es";
          version = "0.0.1";
          src = ./.;
          builder = ./builder.sh;
          buildInputs = with pkgs; [
            cmark
            grass-sass
            gnumake
          ];
        };
        apps.dev = {
          type = "app";
          program = let
            script = pkgs.writeShellApplication {
              name = "dev";
              runtimeInputs = with pkgs; [
                python3
              ];
              text = ''
                nix run nixpkgs#python3 -- -m http.server -d result/ &
                # shellcheck disable=SC2064
                trap "kill $!" EXIT

                while true; do
                  nix build || true
                  inotifywait -r -e modify .
                done
              '';
            };
          in
            "${script}/bin/dev";
        };
      }
    );
}
