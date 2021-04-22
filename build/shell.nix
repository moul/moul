# can't run with --pure because we requires system's ssl certs
let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/470e4a9bbc98b171a7e733dfc9e62531f7b9ceca.tar.gz") {};
  ruby = pkgs.ruby_2_7;
  bundler = pkgs.bundler.override { inherit ruby; };
  nokogiri = pkgs.rubyPackages.nokogiri.override { inherit ruby; };
  libxml = pkgs.rubyPackages.libxml-ruby.override { inherit ruby; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    coreutils
    curl
    git
    go
    ruby
    bundler

    # nokogiri
    libxml2
    libxml
    libiconv
    libxslt
    zlib
    pkg-config
    nokogiri
  ];
  shellHook = ''
    set -e
    mkdir -p .local-data/gems
    export GEM_HOME=$PWD/.local-data/gems
    export GEM_PATH=$GEM_HOME
    export PATH=$GEM_HOME/bin:$PATH
    export XSLT_LIB=${pkgs.lib.makeLibraryPath [ pkgs.libxslt ]}
    export XML2_LIB=${pkgs.lib.makeLibraryPath [ pkgs.libxml2 ]}
    # curl -Lks 'https://git.io/rg-ssl' | ruby
    bundle config build.nokogiri --use-system-libraries --with-xslt-lib=$XSLT_LIB --with-xml2-lib=$XML2_LIB
    #bundle install
  '';
}
