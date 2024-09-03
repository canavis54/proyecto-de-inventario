
# PROYECTO APP WEB DE BÚSQUEDA DE COMPONENTES

El proyecto se basa en la creación de una aplicación web que permite la búsqueda y gestión de componentes electrónicos.

Para la crasion debes tener instalado los software node.js, Mysql o xammp  tambien puedes ocupar mongoDB,visual studio o cuarquier otro para crar una nueva base de datos.

## Contenido

pajinas html

archivos css para el diseño de las paginas.

archivos javascript para las funciones de la pagina 

### 1. Funcionalidades
- Inicio de sesión y registro: La aplicación incluye un sistema de autenticación de usuarios con un registro y login. 

- Gestión de inventario: La aplicación cuenta con una página principal donde se muestra la base de datos del inventario de componentes electrónicos. Esta página permite a los usuarios realizar operaciones CRUD (crear, leer, actualizar y eliminar) sobre los elementos del inventario, incluyendo la edición de la cantidad disponible de cada componente.

- Gestión de usuarios: Además de la gestión del inventario, la aplicación incluye una página para administrar los usuarios registrados. Los administradores pueden buscar, agregar, editar y eliminar usuarios, asegurándose de que los permisos se aplican correctamente, como la restricción de eliminar su propia cuenta.

### 2. Estructura del Proyecto
- index.html: página dedicada a el inicio de sesió y al registro
- users.html: Página dedicada a la gestión de usuarios registrados.
- admin.html y welcome.html:Página de administración donde se gestiona el inventario.
- JS/users.js: Contiene la lógica para la gestión de usuarios, incluyendo agregar, editar y eliminar.
- JS/register.js: contine la logica para las funciones del inicio de sesión y el registro.
- JS/welcome y admin.js: Contiene la lógica para la gestión de usuarios, incluyendo agregar, editar y eliminar.
- JS/db.js:Módulo que conecta y maneja la base de datos MySQL.
- index.js: contine todo las dependecias ya configurdas
- CSS/;Contiene los estilos de la aplicación.

### 3. Creación de Archivo package.json

El archivo `package.json` es esencial para la gestión de dependencias en Node.js. Este archivo fue generado automáticamente utilizando el comando `npm init -y`.

Comando utilizado:

npm init -y

Este comando crea un archivo `package.json` con la configuración básica necesaria para el proyecto.

### 4. Dependencias del Proyecto
Para instalar las dependencias necesarias para este proyecto, ejecuta el siguiente comando:

npm install 

Comando que se ocupo para instalar dependencias:
 
  npm install express mysql body-parser nodemon bcrypt  express-session.

- express: Framework de Node.js para la creación de servidores web.
- mysql:Módulo para interactuar con bases de datos MySQL desde Node.js.
- body-parser: Middleware para parsear las solicitudes HTTP entrantes.
- Nodemon: Nodemon automatiza los reinicios del servidor cada vez que se detectan cambios en el código
- bcrypt: proporciona un hash de contraseñas seguro, protegiendo las contraseñas de los usuarios convirtiéndolas en códigos hash irreversibles.
- express-session:es un middleware para Express que se utiliza para gestionar sesiones en aplicaciones web.

### 5. Ejecución del Proyecto
Para ejecutar el servidor Node.js y poner en marcha la aplicación, utiliza el siguiente comando:

node index.js o npm run serve

El servidor estará disponible en `http://localhost:3000` (puedes cambiar el puerto según tu configuración).

### rutas de conexion de archivo index.js

Rutas del login y el registro :

- app.post('/login', async (req, res)) ruta para optener a los usario para iniciar sesion.
- app.post('/register', async (req, res)) ruta para obtener a los usuarios registrados.

Rutas de los componentes:

- - 'app.get('/api/items', (req, res))' conexion para mostar la base de datos de los componentes.
- app.post('/api/items', (req, res)) ruta para agregar nuevo.
- app.put('/api/items/:id', (req, res)) ruta para editar la fila.
- app.delete('/api/items/:id', (req, res)) ruta para eliminar .
-app.put('/api/items/:id/cantidad', (req, res)) ruta para editar solo la cantida.

Rutas de los usuarios registrados:

- app.get('/api/users', (req, res)) ruta para ontener a los usuarios.
- app.post('/api/users', async (req, res)) ruta para agargar nuevo usuario.
- app.put('/api/users/:id', async (req, res)) ruta para editar a los usuarios.
- app.delete('/api/users/:id', (req, res)) ruta para elimir usuario.


# Nota 

En caso de que no se entienda el codigo esta comentado para facilitar su comprension.

GRACIAS POR SU ATENCION 