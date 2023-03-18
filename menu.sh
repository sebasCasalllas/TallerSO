#!/bin/bash
clear

# Eliminar Variables
unset folder

# set variables
user=$(whoami)
# set an infinite loop

while :
do
    clear
    # display menu
  
    echo "- --------------------------------- -"
    echo "-  Nombre servidor: [$(hostname)]   -"
	echo "- --------------------------------- -"
	echo "-  Menu de administración           -"
	echo "- --------------------------------- -"
	echo "-  1. Cambiar nombre Servidor       -"
	echo "- --------------------------------- -"
    echo "-  2. Cambiar particion discos      -"
	echo "- --------------------------------- -"
    echo "-  3. Cambiar IP Servidor           -"
	echo "- --------------------------------- -"
    echo "-  4. Cambiar tabla de host         -"
	echo "- --------------------------------- -"
    echo "-  5. Agregar permisos de firewall  -"
	echo "- --------------------------------- -"
    echo "-  6. Editar DNS server             -"
	echo "- --------------------------------- -"
    echo "-  7. Configurar Proxy              -"
	echo "- --------------------------------- -"
    echo "-  8. Instalar Docker               -"
	echo "- --------------------------------- -"
    echo "-  E. Exit                          -"
    echo "- --------------------------------- -"

	# get input from the user 
	read -p "Ingrese una opcion [1-8] " opcion
	
	# get input from the user 
    
    case $opcion in
        1)
            read -p "Desea cambiar el hostname del servidor (y/n)" reponseVar
            if [[ $reponseVar =~ ^[Yy]$ ]]
                then
                    read -p "Por favor ingrese nombre deseado: " var1
                    sudo hostnamectl set-hostname $var1
            elif [[ ! $reponseVar =~ ^[Nn]$ ]]
                then
                    echo "Opción invalida"
            fi
            echo -e "\n---- Fin del Script -----------------------------------------------"
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        2)
            read -p "Desea cambiar la particion de discos (y/n)" reponseVar
            if [[ $reponseVar =~ ^[Yy]$ ]]
                then
                    echo "Información de los discos del sistema"
                    sudo fdisk -l
                    read -p "Por favor ingrese el nombre del disco: " diskName
                    sudo fdisk $diskName
            elif [[ ! $reponseVar =~ ^[Nn]$ ]]
                then
                    echo "Opción invalida"
            fi
            echo -e "\n---- Fin del Script -----------------------------------------------"
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        3)
            read -p "Desea cambiar el IP del servidor (y/n)" reponseVar
            if [[ $reponseVar =~ ^[Yy]$ ]]
                then
                    read -p "Por favor ingrese IP deseado: " ipVar
                    sudo ifconfig eth0 $ipVar netmask 255.255.240.0
                    echo ">> Nombre Server Actual: [$(hostname)] "
            elif [[ ! $reponseVar =~ ^[Nn]$ ]]
                then
                    echo "Opción invalida"
            fi
            echo -e "\n---- Fin del Script -----------------------------------------------"
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        4)
            read -p "Desea cambiar tabla de Hosts (y/n)" reponseVar
            if [[ $reponseVar =~ ^[Yy]$ ]]
                then
                    read -p "Por favor ingrese IP: " ipVar
                    read -p "Por favor ingrese Host: " hostVar
                    sudo echo "$ipVar $hostVar" | sudo tee -a  /etc/hosts
            elif [[ ! $reponseVar =~ ^[Nn]$ ]]
                then
                    echo "Opción invalida"
            fi
            echo -e "\n---- Fin del Script -----------------------------------------------"
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        5)
            read -p "Desea agregar permisos de firewall (y/n)" reponseVar
            if [[ $reponseVar =~ ^[Yy]$ ]]
                then
                    read -p "Por favor ingrese el puerto: " puertoVar
                    sudo ufw allow ${puertoVar}/tpc
                    sudo ufw allow ${puertoVar}/udp
            elif [[ ! $reponseVar =~ ^[Nn]$ ]]
                then
                    echo "Opción invalida"
            fi
            echo -e "\n---- Fin del Script -----------------------------------------------"
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        6)
            read -p "Desea cambiar la configuracion del DNS (y/n)" reponseVar
            if [[ $reponseVar =~ ^[Yy]$ ]]
                then
                    read -p "Por favor ingrese IP: " ipVar
                    read -p "Por favor ingrese Host: " hostVar
                    sudo echo "$hostVar $ipVar" | sudo tee -a  /etc/resolv.conf
            elif [[ ! $reponseVar =~ ^[Nn]$ ]]
                then
                    echo "Opción invalida"
            fi
            echo -e "\n---- Fin del Script -----------------------------------------------"
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        7)
            read -p "Desea configurar proxy (y/n)" reponseVar
        ;;
        8) 
           # Ejecucion
            echo "-----------------------------------------------------------------------------"
            echo "Inicia instalacion docker CE                                                 "
            echo "-----------------------------------------------------------------------------"
            read -p ">> Paso 1: Desea Instalar Docker (y/n)? " answer

            if [[ $answer =~ ^[Yy]$ ]]
                then
                    cd ~/

                    echo "-----------------------------------------------------------------------------"
                    echo "Instalación Prerequisitios"
                    echo "-----------------------------------------------------------------------------"
                    sudo apt-get update -y
                    sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
                    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - -y
                    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
                    sudo apt update -y
                    apt-cache policy docker-ce -y
                    sudo apt install docker-ce -y

                    echo "-----------------------------------------------------------------------------"
                    echo "Verificar Version"
                    echo "-----------------------------------------------------------------------------"
                    docker --version
                    
                    echo "-----------------------------------------------------------------------------"
                    echo "Crear usuario de Docker"
                    echo "-----------------------------------------------------------------------------"
                    sudo adduser docker

                    
                    echo "-----------------------------------------------------------------------------"
                    echo "Agregar permisos usuario ubunutu al grupo Docker"
                    echo "-----------------------------------------------------------------------------"
                    user=$(whoami)
                    sudo usermod -G docker $user
                    grep $user /etc/group

                    echo "-----------------------------------------------------------------------------"
                    echo "folder docker"
                    echo "-----------------------------------------------------------------------------"
                    folder=/Images
                    sudo mkdir -p $folder/$user
                    sudo mkdir -p $folder/$user/Data
                    sudo chown -R $user:$user $folder/$user
                    sudo chown -R $user:$user $folder/$user/Data
                    ls -ltr $folder/

                    read -p "Press [Enter] key to continue..." readEnterKey

                    echo "-----------------------------------------------------------------------------"
                    echo "Inicia instalacion Docker Compose                                            "
                    echo "-----------------------------------------------------------------------------"

                    sudo mkdir -p /usr/local/bin
                    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

                    sudo chmod +x /usr/local/bin/docker-compose

                    echo "-----------------------------------------------------------------------------"
                    echo "Verificar docker-compose"
                    echo "-----------------------------------------------------------------------------"
                    sudo docker-compose --version

                    read -p "Press [Enter] key to continue..." readEnterKey

                    echo "-----------------------------------------------------------------------------"
                    echo "Iniciar docker con el sistema"
                    echo "-----------------------------------------------------------------------------"
                    sudo systemctl enable docker
                    sudo systemctl start docker

                    echo "-----------------------------------------------------------------------------"
                    echo "Fin instalacion Docker                                                       "
                    echo "-----------------------------------------------------------------------------"

                    read -p "Press [Enter] key to continue..." readEnterKey
            fi
            echo "-----------------------------------------------------------------------------"
            echo "Sin Ajustes!!"
            echo "-----------------------------------------------------------------------------"
                
            echo ---------- Fin del Script ----------------------------
            read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        E)
            echo "Gracias!"
            exit 0
        ;;
        *)
            read -p "Opcion invalida" readEnterKey
        ;;
    esac
done