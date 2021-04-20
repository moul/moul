# can't run with --pure because we requires system's ssl certs
let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/470e4a9bbc98b171a7e733dfc9e62531f7b9ceca.tar.gz") {};
  ruby = pkgs.ruby_3_0;
  bundler = pkgs.bundler.override { inherit ruby; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    coreutils
    curl
    git
    go
    ruby
    bundler
  ];
  shellHook = ''
    set -e
    mkdir -p .local-data/gems
    export GEM_HOME=$PWD/.local-data/gems
    export GEM_PATH=$GEM_HOME
    #curl -Lks 'https://git.io/rg-ssl' | ruby
    gem install githubchart
  '';
}
