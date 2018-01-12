# This file has been generated by node2nix 1.5.1. Do not edit!

{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, nodejs ? pkgs."nodejs-4_x"}:

let
  nodeEnv = import ./node-env.nix {
    inherit (pkgs) stdenv python2 utillinux runCommand writeTextFile;
    inherit nodejs;
  };
in
import ./node-packages-v4.nix {
  inherit (pkgs) fetchurl fetchgit;
  inherit nodeEnv;
}