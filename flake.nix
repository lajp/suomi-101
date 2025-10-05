{
  description = "A Typst project that builds all lessons/*.typ using Typix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      typix,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        inherit (pkgs.lib) attrsets strings;

        typixLib = typix.lib.${system};
        src = typixLib.cleanTypstSource ./.;

        commonArgs = {
          fontPaths = [ ];
          virtualPaths = [
            {
              dest = "lessons/images";
              src = ./images;
            }
          ];

          typstOptsString = "--format pdf --input store-path=\"$out\"";
        };

        unstable_typstPackages = [
          {
            name = "touying";
            version = "0.6.1";
            hash = "sha256-bTDc32MU4GPbUbW5p4cRSxsl9ODR6qXinvQGeHu2psU=";
          }
        ];

        # Get all .typ files from lessons/
        lessonFiles = builtins.filter (name: strings.hasSuffix ".typ" name) (
          builtins.attrNames (builtins.readDir ./lessons)
        );

        # Convert "lesson1.typ" → "lesson1"
        lessonNames = map (name: strings.removeSuffix ".typ" name) lessonFiles;

        # Map each name → derivation
        lessonPackages = attrsets.listToAttrs (
          map (name: {
            name = name;
            value = typixLib.buildTypstProject (
              commonArgs
              // {
                inherit src unstable_typstPackages;
                typstSource = "lessons/${name}.typ";
              }
            );
          }) lessonNames
        );

        # Create watch scripts for each lesson file
        watchApps = attrsets.listToAttrs (
          map (name: {
            name = "watch-${name}";
            value = flake-utils.lib.mkApp {
              drv = typixLib.watchTypstProject (
                commonArgs
                // {
                  typstSource = "lessons/${name}.typ";
                }
              );
            };
          }) lessonNames
        );

        # Default to watching the first lesson file if available
        defaultWatchDrv =
          if lessonFiles != [ ] then
            typixLib.watchTypstProject (
              commonArgs
              // {
                typstSource = "lessons/${builtins.head lessonFiles}";
              }
            )
          else
            pkgs.writeShellScriptBin "no-lessons" ''
              echo "No .typ files found in lessons/"
            '';
      in
      {
        packages = lessonPackages;

        apps = {
          watch = flake-utils.lib.mkApp { drv = defaultWatchDrv; };
          default = flake-utils.lib.mkApp { drv = defaultWatchDrv; };
        }
        // watchApps;

        devShells.default = typixLib.devShell {
          inherit (commonArgs) fontPaths virtualPaths;
          packages = [ defaultWatchDrv ];
        };
      }
    );
}
