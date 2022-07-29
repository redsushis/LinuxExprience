#! /bin/bash



echo "Iniciando criação de Usuarios"

useradd carlos -c "carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd maria -c "maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd maria -e

useradd --force-badname joao_ -c "joao_" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd joao_ -e

useradd debora -c "debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd debora -e

useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd sebastiana -e

useradd roberto -c "roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd roberto -e

useradd josefina -c "josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd josefina -e

useradd amanda -c "amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd amanda -e

useradd rogerio -c "rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd rogerio -e

echo "Fim"