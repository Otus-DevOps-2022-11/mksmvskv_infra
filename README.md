### mksmvskv_infra
mksmvskv Infra repository

### особенности
eval `ssh-agent -s`
ssh-add -L
ssh-add ~/.ssh/appuser

### команда подключения к серверу через баситон в одну строчку
ssh -J appuser@158.160.47.145 appuser@10.128.0.17

### подключние по алиасу:
### server bastion (proxyjump)
host bastion
user appuser
hostname 84.201.156.246
IdentityFile ~/.ssh/appuser

### server someinternalhost
host someinternalhost
user appuser
hostname 10.128.0.17
proxyjump bastio

### ip адреса серверов
bastion_IP = 84.201.156.246
someinternalhost_IP = 10.128.0.21

### ip адрес и порт приложения!

testapp_IP = 158.160.45.10
testapp_port = 9292
