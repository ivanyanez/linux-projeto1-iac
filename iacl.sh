#!/bin/bash

echo "Criando diretório"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

"precisei tirar o -p ssl crypt porque não funciona este comando"

echo "Criando Grupos de Usuarios"


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash  -G GRP_ADM
useradd maria -m -s /bin/bash  -G GRP_ADM
useradd joao -m -s /bin/bash   -G GRP_ADM

useradd debora -m -s /bin/bash  -G GRP_VEN
useradd sebastiana -m -s /bin/bash  -G GRP_VEN
useradd roberta -m -s /bin/bash   -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash  -G GRP_SEC
useradd roberto -m -s /bin/bash -G GRP_SEC

echo "Especificando Permisssões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "FIM ...."

