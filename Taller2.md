#Taller parte 2

En la segunda parte del taller lo primero que podemos observar es el despligue del menu con los diferentes servicios que ofrece la shell.


A continuación se describe cada uno de estos servicios

## Cambiar nombre de servidor

Se debe ingresar la opción 1, enseguida se muestra un mensaje en consola que nos pregunta si queremos realizar el cambio, en este caso se debe dar "y" para indicar que si. Luego se mostrara un mensaje en consola que nos pide ingresa el nuevo nombre que le vamos a dar al servidor.


Lo que hay detras de este punto es el siguiente codigo:

```
sudo hostnamectl set-hostname Nuevo_nombre_servidor
```

Del cual sudo es para dar permisos al comando que le sigue, "hostnamectl" es el comando que nos permite acceder a la configuración del servidor y con el comando "set-hostname" es con el cual cambiamos el actual nombre de nuestro servidor.

## Cambiar partición de discos

Se debe ingresar la opción 2, lo primero que observamos es un mensaje que nos pregunta si queremos realizar el cambio. Seguido nos muesntra los discos del sistema y finalmente nos muestra un mensaje por consola preguntanos el nombre del disco al cual le queremos realizar la partición

El codigo para ejecutar este cambio es el siguiente:

* El comando "fdisk -l" nos proporciona la información de los discos del equipo

```
sudo fdisk -l
```

* El comando "fdisk" seguido del nombre del disco, nos permite acceder a un menu para realizar la partición del disco

```
 sudo fdisk Nombre_disco
```

## Cambiar IP servidor

Ingresar la opción 3, seguido indicar que si queremos realizar el cambio del IP. Luego se mostrara un mensaje por consola preguntando por la IP que queremos que tenga nuestro equipo.

Mediente el comando "ifconfig" podemos realizar cambios de la ip del servidor, como ejemplo se presenta la siguiente sentencia:

```
sudo ifconfig eth0 $ipVar netmask 255.255.240.0
```

Para poder realizar adecuadamente el cambio del IP debemos proporcionar luego del comando "ifconfig" el nombre de la interfaz de la tarjeta de red, seguido por la dirección IP nueva, luego colocar la palabra "netmask" seguido de la mascara con la que se quiere configurar el equipo.

## Cambiar tabla de Host

Ingresar la opción 4, seguido indicar que si queremos realizar el cambio de la tabla de Hosts. Luego se mostrara un mensaje por consola preguntando por la IP que se quiere asignar al host y seguido aparece otro mensaje en consola preguntando por el host.


Para este punto lo que se requiere es modificar un archivo existente dentro del equipo, donde se encuetra la tabla de hosts del equipo. Para facilitar el cambio se solicitan los datos para formar una cadena de texto la cual es ingresada al archivo. Esto se realiza mediante el siguiente comando

```
sudo echo "$ipVar $hostVar" | sudo tee -a  /etc/hosts
```

En donde "echo" es utilizado para almacenar temporalmente el texto que se encuentra dentro de las comilla, este texto para el caso son dos variables que contienen la información suministrada por consola. Finalmente mediante el comando "tee -a" se inserta el texto en la parte inferior del archivo, esto con el objetivo de no sobre escribir lineas de texto existentes en el archivo.

# Agregar permisos de Firewall

Ingresar la opción 5, seguido indicar que si queremos adicionar los permisos de firewall. Luego se mostrara un mensaje por consola preguntando por el puerto al cual se le quieren poner los permisos.


Para esta configuración se utiliza la siguiente sentencia:

```
udo ufw allow puerto/tipo_conexion
```

Donde "ufw" es una aplicación de Linux que permite establecer reglas de firewall, y el comando "allow" es para abrir el puerto deseado.

# Editar DNS

Ingresar la opción 6, seguido indicar que si queremos editar el DNS. Luego se mostrara un mensaje por consola preguntando por la IP que se quiere asignar al host y seguido aparece otro mensaje en consola preguntando por el host.

Al igual que con la tabla de Hosts existe un archivo en el sistema que contiene los DNS del equipo, lo que se requiere es editar el archivo para agregar el ip y el host requeridos. Para este se implementa la siguiente sentencia:

```
sudo echo "$hostVar $ipVar" | sudo tee -a  /etc/resolv.conf
```

Que tiene el mismo objetivo que la sentencia implementada en el punto 4, pero cambiando la ruta del archivo a editar.
