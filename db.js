//conexion a la base de datos 
const mysql = require('mysql2');

const db = mysql.createConnection({

    host: 'localhost',
    user: 'root',
    password: '',
    database: 'inventario_de_carretes'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Conectado a la base de datos ');
});

module.exports = db;




