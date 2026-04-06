#./bin/sh
set -e
export rama=$(git symbolic-ref --short HEAD)
if [ -z "$rama" ]; then
	echo "La rama especificada no existe"
	exit 1
fi
if ! git diff --quiet; then
	echo "Existe/n archivo/s sin stagear"
	exit 1
fi

clear
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add -l
git pull --rebase bitbucket $rama
git push bitbucket $rama

ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git pull --rebase github $rama
git push github $rama
ssh-agent -k
