{ pkgs ? import <lumi> }:

let
  ghc = pkgs.lumi.haskellPackages.ghcWithHoogle (p:
    with p; [
      HUnit
      asn1-encoding
      asn1-types
      base
      base64-bytestring
      bytestring
      crypton
      crypton-x509
      data-default
      http-types
      hxt
      hxt-charproperties
      hxt-unicode
      invertible
      invertible-hxt
      lens
      memory
      mtl
      network-uri
      process
      semigroups
      silently
      template-haskell
      time
      utf8-string
      zlib
    ]);

in pkgs.mkShell {
  buildInputs = with pkgs; [ cabal-install ghc libxml2 pkg-config ];
}
