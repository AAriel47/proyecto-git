#!/bin/sh
clear
export rama=$(git symbolic-ref --short HEAD)
if [ -z "$rama" ]; then
	echo "Error: No estás en una rama válida (posible HEAD desasociado)."
	exit 1
fi
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git pull --rebase bitbucket $rama && git push bitbucket $rama
git pull --rebase github $rama && git push github $rama
ssh-agent -k
