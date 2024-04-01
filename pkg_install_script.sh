#!/bin/bash

mapfile -t packages < packages.txt

group=$(( (${#packages[@]} + 4) / 5 ))

for ((i=0; i<$group; i++)); do
    batch=("${packages[@]:i*5:5}")
    yay -S --noconfirm "${batch[@]}"
done
