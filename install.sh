#/bin/bash
mv ./home/namish $USER
find ./ -type f -name "*.nix" -exec sed -i "s/namish/$USER/g" {} \;
sudo nixos-rebuild switch --flake .#frostbyte
