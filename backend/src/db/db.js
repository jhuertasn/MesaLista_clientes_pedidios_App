// src/db/db.js

const mysql = require('mysql2/promise');

// Crea un "pool" de conexiones, que es más eficiente que crear una nueva conexión cada vez.
const pool = mysql.createPool({
    host: 'localhost',          // O la IP de tu servidor de BD
    user: 'root',               // Tu usuario de MySQL
    password: 'Malo12345',  // Tu contraseña de MySQL
    database: 'mesalista_db' // El nombre de tu base de datos
});

console.log('🔌 Conexión con la base de datos MySQL establecida.');

module.exports = pool;