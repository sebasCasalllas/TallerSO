# Parte 2 Taller Docker


## 1. Agregar modulo de instalación de Docker en menú de administración para instalación y pruebas unitarias.

Se realiza la implementación de la instalación de docker al menu de administración. Por lo tanto al ejecutar la shell vamos a observar el siguiente menu:

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
"-  8. Instalación Docker            -"
"- --------------------------------- -"
"-  E. Exit                          -"
"- --------------------------------- -"

Ingrese una opcion [1-8]
```

Cuando selecciona la opción 8 para instalar Docker, se presenta el siguiente mensaje:

Se debe ingresar el caracter "y". Luego se vera como se descargar los elementos requeridos para la instalación, adicional de que se muestra el proceso de instalación algo similar a lo de la siguiente imagen:

La shell ejecutada adicional nos muestra la siguiente información:

* Version de docker:


* Permisos de puertos:

* Version de Docker-compose

* Fin de la instalación:

## 2. Subir cambios a repositorio

Como se realizaron cambios en el archivo "menu.sh" almacenado en el equipo local, se deben subir los cambios al repositorio, manteniendo el repositorio actualizado. Para lo anterior en el presente proyecto se cuenta con dos formas para subir los cambios realizados al repositorio, el primero es mediante la ejecución de una shell donde se automatiza el proceso y la segunda es de forma manual. A continuación se explican las dos formas.

### Ejecutar Shell

Se cuenta con una shell donde se automatiza subir los cambios realizados en un equipo local al repositorio. A continuación se presentan los pasos a seguir para poder hacer uso de la shell:

Para poder ejecutar la shell para acceder al menu de los servicios ofrecido se requiere seguir los siguientes pasos:

1. Asignar permisos a la shell mediante el comando "chmod +x" seguido del nombre de la shell, tal cual se ve en el siguiente ejemplo:

```
chmod +x pushGit.sh
```

2. Una vez la shel cuente con los permisos, se puede hacer la ejecución de esta de la siguiente forma:

```
./pushGit.sh "comentario" "nombre_rama" "clone"
```
3. Si se ejecuta la shell sin ingresar los parametros como se muestra en el anterior punto se muestra el siguiente mensaje:

4. Una vez ejecutada la shell ingresando debidamente los parametros se mostrara el mensaje mostrado en la figura, en este caso como se van a subir los cambios se debe ingresar el caracter "N" para que no inicie el proceso de clonar el repositorio.

5. Luego se debe de ir dando enter para que la shell continue con el proceso hace que finalice la subida de los archivos y se termine de ejecutar los comandos. Se podra apreciar algo similar a lo que se observa en la siguiente figura:


### Subir cambios de forma manual

Para subir los cambios al repositorio de forma manual se deben seguir los siguientes pasos:

1. Revisar el estado del repositorio con el comando "status", el cual proporciona si existe alguna actualización en el repositorio y en su equipo local no, tambien indica en que rama del repositorio se encuentra. La forma correta de ingresar el comando es:

```
git status
```

2. Seleccionar la rama adecuada para ralizar los cambios en el repositorio. Debido a que existen diferentes ramas se puede ubicar en la que desee realizar los cambios mediante el siguiente comando:

```
git checkout nombre_de_rama
```
 
3. Una vez seleccionada la rama se procede a actualizar el respositorio, primero indicando cual es el contenido que va a adionar mediante el comando "add", en caso de querer adicionar todo el contenido usar el comando de la siguiente forma:

```
git add .
```

4. Adicionar un comentario, en el cual se haga una muy breve descripción de los cambios que va a realizar en el repositior:

```
git commit -m "Comentario"
```

5. Finalmente se procede a subir los cambios realizados al repositorio:

```
git push
```

## 3. Clonar repositorio

Como se estan realizando los cambios en un equipo local, pero se requiere usar docker en una instancia de AWS es necesario clonar el respositorio dentro de la instancia para asi poder hacer uso de todo el contenido que se esta cargando al repositorio. Para clonar un repositorio siga los siguientes pasos:

1. Lo primero que se debe hacer para clonar el repositorio es indicarle al equipo como se va a presentar al repositorio, es decir indicar quien esta trabajando desde ese equipo para asi tener presente cuales fueron las modificaciones que realizo cada persona que tenga acceso al repositorio. Los comandos para hacer dicha configuración son:

```
git config --global user.email "correo@gmail.com" >>> Comando para indicar el correo de la persona
git config --global user.name "Sebastian Casallas" >>> Nombre con el cual se va a presentar al respositorio
git config --global core.autocrlf false >>> Se usa para evitar conflictos con los finales de linea
```

2. Una vez se tengan las configuraciones globales se procede a clonar el respositorio mediante el comando "git clone" y la url que nos otorga Git hub segun se muestra en la siguiente imagen: 

![Clonar repositorio parte 1](https://user-images.githubusercontent.com/68363695/224461493-520b9eed-fb1c-45ee-a3cb-6feb4fc9bd9e.png)

quedando el siguiente comando:

```
git clone https://github.com/sebasCasalllas/Mi_Perfil_Sebastian_Casallas.git
```

Una vez clonado se procede a realizar la actualización del repositorio.

## 4. Instalar Shell en servidor de AWS

Para poder ejecutar la shell "menu.sh" en la instancia AWS se requiere seguir los siguientes pasos:

1. Asignar permisos a la shell mediante el comando "chmod +x" seguido del nombre de la shell, tal cual se ve en el siguiente ejemplo:

```
chmod +x menu.sh
```

2. Una vez la shel cuente con los permisos, se puede hacer la ejecución de esta de la siguiente forma:

```
./menu.sh
```

## 5. Pruebas (docker –versión y Docker-compose --version)

Una vez isntalado docker procedemos a verificar la version de Docker y Docker-compose que se instalo.

1. Verificar la version de Docker con el comando:

Se mostrara algo similar a lo siguiente indicando la versión de Docker que se encuentra instalada en la instancia.

2. Verificar la version de Docker-compose con el comando:

Se mostrara algo similar a lo siguiente indicando la versión de Docker-compose que se encuentra instalada en la instancia.