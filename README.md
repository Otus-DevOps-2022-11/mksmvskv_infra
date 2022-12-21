# mksmvskv_infra
mksmvskv Infra repository

# особенности
eval `ssh-agent -s`
ssh-add -L
ssh-add ~/.ssh/appuser

# команда подключения к серверу через баситон в одну строчку
ssh -J appuser@158.160.47.145 appuser@10.128.0.17

# подключние по алиасу:
## server bastion (proxyjump)
host bastion
user appuser
hostname 158.160.47.145
IdentityFile ~/.ssh/appuser

## server someinternalhost
host someinternalhost
user appuser
hostname 10.128.0.17
proxyjump bastion
