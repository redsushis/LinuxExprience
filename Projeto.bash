#!/bin/bash

echo "Inicio de criação de diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Inicio de criação de grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

 carlos -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_ADM
 maria -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_ADM
 joao_ -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_ADM

 debora -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_VEN
 sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_VEN
 roberto -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_VEN

 josefina -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_SEC
 amanda -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_SEC
 rogerio -m -s /bin/bash -p $(openssl passwd -crypt senhaloki) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim"