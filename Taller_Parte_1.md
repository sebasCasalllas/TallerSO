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

![Cuenta git parte 1](https://user-images.githubusercontent.com/68363695/225371389-d37453b8-8e97-477a-911f-4f34eeb2a526.png)

3. Dar clic en la opción de "Sign up"

![Cuenta git parte 2](https://user-images.githubusercontent.com/68363695/225371393-068171e1-2e70-44c7-acb0-d8a5e3477f93.png)

4. Ingresar el correo con el cual se quiere vincular la cuenta, y dar clic en "Continue"

![Cuenta git parte 3](https://user-images.githubusercontent.com/68363695/225371395-972c9519-e841-4ec5-9dad-6883172996f3.png)

5. Ingresar una contraseña, y dar clic en "Continue"

![Cuenta git parte 4](https://user-images.githubusercontent.com/68363695/225371397-06629548-11da-45c2-a235-2fd30a0519c5.png)

6. Seleccionar un username, y dar clic en "Continue"

![Cuenta git parte 5](https://user-images.githubusercontent.com/68363695/225371399-32f8d561-e3cc-4398-b98a-8d2ad5acd5e1.png)

7. Seleccionar el boton de "Create account"

8. Para la validación del correo que se ingreso, Github envia un token al correo, el cual solicita a la hora de ingresar a la cuenta por primera vez.

![Cuenta git parte 7](https://user-images.githubusercontent.com/68363695/225371404-4d302b35-c24e-4418-bba4-ed958efccd56.png)

![Cuenta git parte 6](https://user-images.githubusercontent.com/68363695/225371401-01b739cc-59e8-4eaa-8810-c91196afc74d.png)

9. Una vez creada la cuenta se nos presenta la siguiente interfaz.

![Cuenta git parte 8](https://user-images.githubusercontent.com/68363695/225371406-c321ff07-2116-4db9-9d11-f548d0b4cc2b.png)

## 3. Crear cuenta en Dockerhub

Ademas del repositorio de Git que vamos a utilizar para el control de versiones de nuestro projecto, se va implementar un repositorio de imagenes facilitando el despliegue de aplicaciones dentro de un contenedor, se opto por Dockerhub. Para lo anterior se requiere contar con una cuenta en Dockerhub, a continuación se presentan los pasos para crear una cuenta.

1. Ingresar a la pagina oficila de Dockerhub, el siguiente es el enlace:

```
https://hub.docker.com/
```

2. Una vez ingresado, se presenta la siguiente interfaz y debemos dar clic en el boton "Register"

![Cuenta docker parte 1](https://user-images.githubusercontent.com/68363695/225371368-7c44a87a-0a26-4f06-9a3a-fee519963102.png)

3. Se nos presenta la siguiente interfaz, donde debemos llenar los campos del formulario con el correo que vamos a vincular a la cuenta que vamos a crear, adicional asignar un username y contraseña para poder acceder a la cuenta en otro momento.

![Cuenta docker parte 2](https://user-images.githubusercontent.com/68363695/225371371-da46aefa-185b-403a-8640-5e5b0ac36683.png)

4. Ingresar los datos solicitados, debemos dar clic en el boton "Sign Up"

5. Se mostrara la siguiente ventana, solicitando el username de la cuenta. Ingresamos la información y damos clic en "Continue"

![Cuenta docker parte 3](https://user-images.githubusercontent.com/68363695/225371372-29ab60f2-64c5-435a-8c7e-2e19903f466d.png)

5. Ahora nos solicita la contraeña que seleccionamos para la cuenta, la ingresado y procedemos dando clic en "Continue".

![Cuenta docker parte 4](https://user-images.githubusercontent.com/68363695/225371374-70b36404-361e-40af-982a-ef830570a89e.png)

6. Una vez se ingresa Dockerhub nos presenta los planes que nos ofrece, cada plan lo muestra con sus caracteristicas y precios. En el presente vamos a seleccionar la cuenta gratuita.

![Cuenta docker parte 5](https://user-images.githubusercontent.com/68363695/225371376-107355d2-b9b7-483e-bcc7-39ddce285823.png)

7. Cuando se selecciona el plan gratuito la ventana que se nos presenta nos indica que se envio un correo para realizar la validación de la cuenta.

![Cuenta docker parte 6](https://user-images.githubusercontent.com/68363695/225371380-14c17b73-95c8-4de6-9090-beb7dd202800.png)

8. Para la validación debemos ingresar al correo que se proporciono, buscar un mensaje similar al siguiente:

![Cuenta docker parte 7](https://user-images.githubusercontent.com/68363695/225371382-12170a08-d7b8-4378-bcde-db2d4d362c12.png)

9. Cuando se tenga el correo se debe dar clic en el boton "Verify email address"

10. Una vez creada la cuenta se nos presenta la siguiente interfaz.

![Cuenta docker parte 8](https://user-images.githubusercontent.com/68363695/225371386-75377d71-354b-4dbe-bd20-1de04ad3831d.png)

## 4. Crear repositorio

En el taller se debe hacer uso de dos repositorios que son:

1. Github: En donde se va a realizar el versionamiento del proyecto.
2. Dockerhub: En donde se va a realizar el control de las imagenes que se vayan a implementar.

Por lo tanto a continuación se presentara una descripción de los pasos a seguir para crear un repositorio en cada una.

### Repositorio en Github

1. Ingresar a la cuenta de GitHub

![Repositorio Git parte 1](https://user-images.githubusercontent.com/68363695/225371350-5ed574bc-d3eb-42f7-8e08-60c923dde8c9.png)

2. Seleccionar el boton de "Create Repository"

![Repositorio Git parte 4](https://user-images.githubusercontent.com/68363695/225371363-1da307da-66ba-4f15-97ab-e0406952d4fd.png)

3. Se nos presenta la siguiente interfaz

![Repositorio Git parte 2](https://user-images.githubusercontent.com/68363695/225371357-ca210b58-603d-4cb0-888d-1a8339c94c3f.png)

Donde se solicita la siguiente información:

* Repository name: El nombre que deseamos darle al repositorio.
* Description: Este parametro es opcional, donde se deja una breve descripción del uso que se le va a dar al repositorio
* Privacidad del repositorio donde se selecciona "Public" para definir que cualquier personal puede acceder al repositorio o "Private" para indicar que al repositorio solo puede acceder usted y las personas que tengas a las que les de autorización.
* Se sugiere marcar la casilla "Add a README file", para que al crear el repositorio cuente con un archivo README donde puede poner una descripción del proyecto, lo que contiene o en caso de contar con shell mostrar un manual de como ejecutarlas y que función tienen.

4. Seleccionar "Create repository"

5. Una vez creado el repositorio, se nos muestra la siguiente ventana.

![Repositorio Git parte 3](https://user-images.githubusercontent.com/68363695/225371360-c74d9a1e-0c39-4f3d-9a10-f6da0886c76e.png)

### Repositorio en Dockerhub

1. Ingresar a la cuenta de Dockerhub

![Repositorio Docker parte 1](https://user-images.githubusercontent.com/68363695/225371408-85422a81-9ec1-4782-a6dc-48853c6b9bc7.png)

2. Ingresamos a la ventana de "Repositories"

![Repositorio Docker parte 4](https://user-images.githubusercontent.com/68363695/225371422-73a69a3b-793a-4dff-8b5c-6595e1d1f8eb.png)

3. Seleccionamos el boton "Create repository"

![Repositorio Docker parte 5](https://user-images.githubusercontent.com/68363695/225373723-9de517d4-9d0b-4793-b4e8-4cee2110d96f.png)


3. Se nos presenta la siguiente interfaz

![Repositorio Docker parte 2](https://user-images.githubusercontent.com/68363695/225371413-64efd048-6710-4e3e-995b-b47ba4ce2861.png)

Donde se solicita la siguiente información:

* Name: El nombre que deseamos darle al repositorio.
* Description: Donde se deja una breve descripción del uso que se le va a dar al repositorio
* Privacidad del repositorio donde se selecciona "Public" para definir que cualquier personal puede acceder al repositorio o "Private" para indicar que al repositorio solo puede acceder usted y las personas que tengas a las que les de autorización. (En caso de Dockerhub solo nos permite crear 1 repositorio privado)


4. Seleccionar "Create"

5. Una vez creado el repositorio, se nos muestra la siguiente ventana.

![Repositorio Docker parte 3](https://user-images.githubusercontent.com/68363695/225371417-14cb5fe3-db3d-47df-98f7-d402c465e6bd.png)

## 5. Configuración de llaves SSH

En caso de no poder acceder a la cuenta git mediante la proporcion de las credenciales o para facilitar y automatizar el proceso de actualización del repositiorio se debe realizar la configuración de un para de llaves.

1. Crear el par de llaves desde la instacia donde se va a clonar el repositorio. Mediante el siguiente comando

```
ssh-keygen
```

Luego dar enter 3 veces para que el par de llaves no queden con contraseña.

2. Usar el comando "cat" seguido de la ruta donde se almaceno la llave publica para acceder a su contenido, esto debido a que la cadena de caracteres que se muestre es la llave publica que vamos a configurar en el repositorio.

3. Ingresar a la configuración de la cuenta de git hub, y dar clic en la opción "SSH and GPG keys" para luego dar clic en "new SSH key".

4. Proporcionar el nombre que dese otorgarle a la llave y pegar el contenido del la llave publica.

5. Por ultimo dar clic en "Add SSH key"

![LLave ](https://user-images.githubusercontent.com/68363695/224461491-bed33165-d59e-40e7-81c5-c3ad6296f356.png)


