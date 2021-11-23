{ pkgs ? import <nixpkgs> {} }:
let 
    test = import (builtins.fetchGit {
         # Descriptive name to make the store path easier to identify                
         name = "my-old-revision";                                                 
         url = "https://github.com/NixOS/nixpkgs/";                       
         ref = "refs/tags/17.03";                     
         rev = "40e02267b9893677b3e69933a4f178a46e03c98e";
    }) {};                                                                           
    jdk7 = test.openjdk7;
in 
pkgs.mkShell {
  buildInputs = [
    pkgs.ant
    jdk7

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
