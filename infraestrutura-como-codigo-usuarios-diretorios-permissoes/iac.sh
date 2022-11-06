#!/bin/bash

echo "Checando a existência de diretórios..."

FILE=/publico
if [ -d "$FILE" ]; then
    echo "O diretório $FILE existe"
else
	echo "O diretório $FILE não existe"
fi

FILE=/adm
if [ -d "$FILE" ]; then
    echo "O diretório $FILE existe"
else
	echo "O diretório $FILE não existe"
fi

FILE=/ven
if [ -d "$FILE" ]; then
    echo "O diretório $FILE existe"
else
	echo "O diretório $FILE não existe"
fi

FILE=/sec
if [ -d "$FILE" ]; then
    echo "O diretório $FILE existe"
else
	echo "O diretório $FILE não existe"
fi


echo "Criando diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "The End..."




