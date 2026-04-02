clear
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add -l
git push bitbucket main
eval $(ssh-agent -s)
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git push github main

