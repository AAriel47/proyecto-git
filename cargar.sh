#./bin/sh
clear
export rama=$(git symbolic-ref --short HEAD)
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add -l
git push bitbucket $rama
git pull
eval $(ssh-agent -s)
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git push github $rama
git pull

