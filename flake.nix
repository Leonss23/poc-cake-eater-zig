{
    description= "Frontend challenges using Vite";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs";
      };

    outputs = {nixpkgs, ...}:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            ncurses
          ];
        };

      };
  }
