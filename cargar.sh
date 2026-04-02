clear
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
ssh-add -l
git push -u bitbucket secundaria
eval $(ssh-agent -s)
ssh-add ~/.ssh/proyecto_Git
ssh-add -l
git push -u github secundaria
