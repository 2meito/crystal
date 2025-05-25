#/bin/bash
mv ./home/namish $USER
sed -i "s/namish/$USER/" ./*.nix
sudo nixos-rebuild switch --flake .#frostbyte
