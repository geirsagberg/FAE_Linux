{
  description = "FAE_Linux - Flake with build and dev shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      
      # Use clang on macOS, gcc on Linux
      stdenv = if pkgs.stdenv.isDarwin then pkgs.clangStdenv else pkgs.stdenv;

      # Required build tools
    in
    {
      packages.default = stdenv.mkDerivation {
        pname = "FAE_Linux";
        version = "0.1";

        src = ./.;

        nativeBuildInputs = with pkgs; [ cmake ] ++ 
          (if stdenv.isDarwin then [ ] else [ gcc ]);


        buildPhase = ''
          cmake .
          make -j8
        '';
        
        installPhase = ''
          mkdir -p $out/bin/
          cp ./out/bin/FAE_Linux $out/bin/FAE_Linux
        '';
      };

      devShells.default = pkgs.mkShell {
        inputsFrom = [ self.packages.${pkgs.system}.default ];
        shellHook = ''
          echo "You're now in the FAE_Linux dev shell."
          echo "To build manually:"
          echo "  cmake . && make"
        '';
      };
    });
}
