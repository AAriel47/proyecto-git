#./bin/sh
clear
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add -l
git push bitbucket cuatro
git pull
eval $(ssh-agent -s)
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git push github cuatro
git pull

