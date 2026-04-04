#./bin/sh
export rama=$(git rev-parse --abbrev-ref --short HEAD)
clear
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add -l
git push bitbucket $rama
git pull bitbucket $rama
eval $(ssh-agent -s)
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git push github $rama
git pull github $rama

