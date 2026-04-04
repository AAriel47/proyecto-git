#!/bin/sh
clear
export rama=$(git symbolic-ref --short HEAD)
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git pull --rebase bitbucket $rama
git push bitbucket $rama
git pull --rebase github $rama
git push github $rama
ssh-agent -k
