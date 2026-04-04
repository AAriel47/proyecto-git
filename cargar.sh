#!/bin/sh
clear
export rama=$(git rev-parse --abbrev-ref --short HEAD)
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git push bitbucket $rama
git pull bitbucket $rama
git push github $rama
git pull github $rama
ssh-agent -k
