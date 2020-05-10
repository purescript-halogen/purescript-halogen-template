{ name = "halogen-project"
, dependencies = [ "halogen", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
