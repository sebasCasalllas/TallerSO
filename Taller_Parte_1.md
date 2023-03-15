# Parte 1 Taller Docker

## 1. Configuración de herramientas de desarrollo

Para el desarollo del presente taller lo primero fue seleccionar las herramientas a implementar. En este caso son: 
* Visual Strudio Code: Este software es una herramienta que facilita el desarrollo de codigo, debido a que proporciona mensajes de error cuando hay elementos en el codigo que cuasen que el codigo no compile. Adicional visual code nos presenta la integración de Git Bash para manejar directamente los archivos que contengan el respositorio a trabajar.

* MobaXterm: Este software nos permite crear una conexion con un equipo remoto. Lo que permite acceder a una instancia en este caso una instancia de AWS 

## 2. Crear cuenta en Github

Como en el presente taller se va a realizar el uso de repositorio, se opto por Git. Para lo anterior se requiere contar con una cuenta en Github, a continuación se presentan los pasos para crear una cuenta.

1. Ingresar a la pagina oficila de Github, el siguiente es el enlace:

```
https://github.com/
```

2. Una vez ingresado, se presenta la siguiente interfaz

3. Dar clic en la opción de "Sign up"

4. Ingresar el correo con el cual se quiere vincular la cuenta, y dar clic en "Continue"

5. Ingresar una contraseña, y dar clic en "Continue"

6. Seleccionar un username, y dar clic en "Continue"

7. Seleccionar el boton de "Create account"

8. Para la validación del correo que se ingreso, Github envia un token al correo, el cual solicita a la hora de ingresar a la cuenta por primera vez.

9. Una vez creada la cuenta se nos presenta la siguiente interfaz.

## 3. Crear cuenta en Dockerhub

Ademas del repositorio de Git que vamos a utilizar para el control de versiones de nuestro projecto, se va implementar un repositorio de imagenes facilitando el despliegue de aplicaciones dentro de un contenedor, se opto por Dockerhub. Para lo anterior se requiere contar con una cuenta en Dockerhub, a continuación se presentan los pasos para crear una cuenta.

1. Ingresar a la pagina oficila de Dockerhub, el siguiente es el enlace:

```
https://hub.docker.com/
```

2. Una vez ingresado, se presenta la siguiente interfaz y debemos dar clic en el boton "Register"

3. Se nos presenta la siguiente interfaz, donde debemos llenar los campos del formulario con el correo que vamos a vincular a la cuenta que vamos a crear, adicional asignar un username y contraseña para poder acceder a la cuenta en otro momento.

4. Ingresar los datos solicitados, debemos dar clic en el boton "Sign Up"

5. Se mostrara la siguiente ventana, solicitando el username de la cuenta. Ingresamos la información y damos clic en "Continue"

5. Ahora nos solicita la contraeña que seleccionamos para la cuenta, la ingresado y procedemos dando clic en "Continue".

6. Una vez se ingresa Dockerhub nos presenta los planes que nos ofrece, cada plan lo muestra con sus caracteristicas y precios. En el presente vamos a seleccionar la cuenta gratuita.

7. Cuando se selecciona el plan gratuito la ventana que se nos presenta nos indica que se envio un correo para realizar la validación de la cuenta.

8. Para la validación debemos ingresar al correo que se proporciono, buscar un mensaje similar al siguiente:

9. Cuando se tenga el correo se debe dar clic en el boton "Verify email address"

10. Una vez creada la cuenta se nos presenta la siguiente interfaz.

## 4. Crear repositorio

En el taller se debe hacer uso de dos repositorios que son:

1. Github: En donde se va a realizar el versionamiento del proyecto.
2. Dockerhub: En donde se va a realizar el control de las imagenes que se vayan a implementar.

Por lo tanto a continuación se presentara una descripción de los pasos a seguir para crear un repositorio en cada una.

### Repositorio en Github

1. Ingresar a la cuenta de GitHub

2. Seleccionar el boton de "Create Repository"

3. Se nos presenta la siguiente interfaz

Donde se solicita la siguiente información:

* Repository name: El nombre que deseamos darle al repositorio.
* Description: Este parametro es opcional, donde se deja una breve descripción del uso que se le va a dar al repositorio
* Privacidad del repositorio donde se selecciona "Public" para definir que cualquier personal puede acceder al repositorio o "Private" para indicar que al repositorio solo puede acceder usted y las personas que tengas a las que les de autorización.
* Se sugiere marcar la casilla "Add a README file", para que al crear el repositorio cuente con un archivo README donde puede poner una descripción del proyecto, lo que contiene o en caso de contar con shell mostrar un manual de como ejecutarlas y que función tienen.

4. Seleccionar "Create repository"

5. Una vez creado el repositorio, se nos muestra la siguiente ventana.

### Repositorio en Dockerhub

1. Ingresar a la cuenta de Dockerhub

2. Ingresamos a la ventana de "Repositories"

3. Seleccionamos el boton "Create repository"

3. Se nos presenta la siguiente interfaz

Donde se solicita la siguiente información:

* Name: El nombre que deseamos darle al repositorio.
* Description: Donde se deja una breve descripción del uso que se le va a dar al repositorio
* Privacidad del repositorio donde se selecciona "Public" para definir que cualquier personal puede acceder al repositorio o "Private" para indicar que al repositorio solo puede acceder usted y las personas que tengas a las que les de autorización. (En caso de Dockerhub solo nos permite crear 1 repositorio privado)


4. Seleccionar "Create"

5. Una vez creado el repositorio, se nos muestra la siguiente ventana.

## 5. Configuración de llaves SSH

