# TallerSO

## Ejecución shell menu.sh 

---------------------

Para poder ejecutar la shell para acceder al menu de los servicios ofrecido se requiere seguir los siguientes pasos:

1. Asignar permisos a la shell mediante el comando "chmod +x" seguido del nombre de la shell, tal cual se ve en el siguiente ejemplo:

```
chmod +x menu.sh
```

2. Una vez la shel cuente con los permisos, se puede hacer la ejecución de esta de la siguiente forma:

```
./menu.sh
```

3. Una vez ejecutada la shell, se podra visualizar un menu el cual muestra los servicios disponibles. El menu que se visuliza es:

```
"- --------------------------------- -"
"-  Nombre servidor: [$(hostname)]   -"
"- --------------------------------- -"
"-  Menu de administración           -"
"- --------------------------------- -"
"-  1. Cambiar nombre Servidor       -"
"- --------------------------------- -"
"-  2. Cambiar particion discos      -"
"- --------------------------------- -"
"-  3. Cambiar IP Servidor           -"
"- --------------------------------- -"
"-  4. Cambiar tabla de host         -"
"- --------------------------------- -"
"-  5. Agregar permisos de firewall  -"
"- --------------------------------- -"
"-  6. Editar DNS server             -"
"- --------------------------------- -"
"-  7. Configurar Proxy              -"
"- --------------------------------- -"
"-  E. Exit                          -"
"- --------------------------------- -"

Ingrese una opcion [1-7]
```
4. Al desplegarse el menu se debe ingresar un numero del 1 al 7 de acuerdo a la opción que requiera.

5. Finalmente cuando termine las configuraciones que requiera la ejecución termina al ingresar la letra "E" y se mostrara el siguiente mensaje:

```
Gracias!
```
