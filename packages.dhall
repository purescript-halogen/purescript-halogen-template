let upstream =
      https://raw.githubusercontent.com/working-group-purescript-es/package-sets/main/packages.dhall
        sha256:bed8d3f7fcac6fed46b9b327378b2303a1801706d35ad502156c62e9ddc906e7
in  upstream
    with metadata.version = "v0.15.0"
