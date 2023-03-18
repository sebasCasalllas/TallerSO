# Parte 2 Taller Docker


## 1. Instalación de Docker

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

# 2. Subir camios a repositorio

Como se realizaron cambios en el archivo "menu.sh" almacenado en el equipo local, se deben subir los cambios al repositorio, manteniendo el repositorio actualizado. Para lo anterior en el presente proyecto se cuenta con dos formas para subir los cambios realizados al repositorio, el primero es mediante la ejecución de una shell donde se automatiza el proceso y la segunda es de forma manual. A continuación se explican las dos formas.

## Ejecutar Shell

Se cuenta con una shell donde se automatiza subir los cambios realizados en un equipo local al repositorio. A continuación se presentan los pasos a seguir para poder hacer uso de la shell:

Para poder ejecutar la shell para acceder al menu de los servicios ofrecido se requiere seguir los siguientes pasos:

1. Asignar permisos a la shell mediante el comando "chmod +x" seguido del nombre de la shell, tal cual se ve en el siguiente ejemplo:

```
chmod +x pushGit.sh
```

2. Una vez la shel cuente con los permisos, se puede hacer la ejecución de esta de la siguiente forma:

```
./menu.sh "comentario" "nombre_rama" "clone"
```
3. Si se ejecuta la shell sin ingresar los parametros como se muestra en el anterior punto se muestra el siguiente mensaje:

4. Una vez ejecutada la shell ingresando debidamente los parametros se mostrara el mensaje mostrado en la figura, en este caso como se van a subir los cambios se debe ingresar el caracter "n" para que no inicie el proceso de clonar el repositorio.

5. 


## Subir cambios de forma manual

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
