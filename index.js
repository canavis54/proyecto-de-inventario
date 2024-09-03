const express = require('express');
const bodyParser = require('body-parser');
const bcrypt = require('bcryptjs');
const mysql = require('mysql2');
const session = require('express-session');
const db = require('./db')
const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static('public'));


// Configura la sesión
app.use(session({
    secret: 'your-secret-key',
    resave: false,
    saveUninitialized: true
}));

// Añadir un nuevo elemento de los carretes 
app.post('/api/items', (req, res) => {
    const item = req.body;
    const sql = 'INSERT INTO items SET ?';
    db.query(sql, item, (err, result) => {
        if (err) throw err;
        res.status(201).json({ id: result.insertId });
    });
});

// Actualizar un elemento de los carretes 
app.put('/api/items/:id', (req, res) => {
    const id = req.params.id;
    const item = req.body;
    const sql = 'UPDATE items SET ? WHERE id = ?';
    db.query(sql, [item, id], (err, result) => {
        if (err) throw err;
        res.json({ affectedRows: result.affectedRows });
    });
});

// Actualizar la cantidad de un ítem
app.put('/api/items/:id/cantidad', (req, res) => {
    const id = req.params.id;
    const { cantidad } = req.body;
    const sql = 'UPDATE items SET cantidad = ? WHERE id = ?';
    db.query(sql, [cantidad, id], (err, result) => {
        if (err) throw err;
        res.json({ affectedRows: result.affectedRows });
    });
});

// Eliminar un ítem
app.delete('/api/items/:id', (req, res) => {
    const id = req.params.id;
    const sql = 'DELETE FROM items WHERE id = ?';
    db.query(sql, id, (err, result) => {
        if (err) throw err;
        res.json({ affectedRows: result.affectedRows });
    });
});

// Ruta para obtener todos los usuarios
app.get('/api/users', (req, res) => {
    const sql = 'SELECT * FROM users';
    db.query(sql, (error, results) => {
        if (error) return res.status(500).json({ error: error.message });
        res.json(results);
    });
});

// Ruta para agregar un nuevo usuario
app.post('/api/users', async (req, res) => {
    const { username, email, password, role } = req.body;
    const hashedPassword = await bcrypt.hash(password, 8);

    const sql = 'INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)';
    db.query(sql, [username, email, hashedPassword, role], (error, results) => {
        if (error) return res.status(500).json({ error: error.message });
        res.status(201).json({ id: results.insertId });
    });
});

// Ruta para editar un usuario existente
app.put('/api/users/:id', async (req, res) => {
    const { id } = req.params;
    const { username, email, password, role } = req.body;

    let query = 'UPDATE users SET username = ?, email = ?, role = ?';
    const values = [username, email, role];

    if (password) {
        const hashedPassword = await bcrypt.hash(password, 8);
        query += ', password = ?';
        values.push(hashedPassword);
    }

    query += ' WHERE id = ?';
    values.push(id);

    db.query(query, values, (error, results) => {
        if (error) return res.status(500).json({ error: error.message });
        res.status(200).json({ message: 'Usuario actualizado correctamente' });
    });
});

// Ruta para eliminar un usuario
app.delete('/api/users/:id', (req, res) => {
    const { id } = req.params;

    // Asegúrate de que el usuario no pueda eliminarse a sí mismo
    if (req.session.user && req.session.user.id == id) {
        return res.status(200).json({ error: 'Usuario no puede eliminar su propia cuenta' });
    }

    const sql = 'DELETE FROM users WHERE id = ?';
    db.query(sql, [id], (error) => {
        if (error) return res.status(500).json({ error: error.message });
        res.status(200).json({ message: 'Usuario eliminado correctamente' });
    });
});

// Ruta para iniciar sesión
app.post('/login', async (req, res) => {
    const { username, password } = req.body;

    const query = 'SELECT * FROM users WHERE username = ?';
    db.query(query, [username], async (err, results) => {
        if (err) {
            console.error(err);
            return res.status(500).send('Error en el servidor');
        }

        if (results.length === 0) {
            return res.status(400).send('<script>alert("Usuario o contraseña incorrectos"); window.location.href="/";</script>');
        }

        const user = results[0];
        const isMatch = await bcrypt.compare(password, user.password);

        if (!isMatch) {
            return res.status(400).send('<script>alert("Usuario o contraseña incorrectos"); window.location.href="/";</script>');
        }

        req.session.user = user;
        if (user.role === 'admin') {
            res.redirect('/admin.html');
        } else {
            res.redirect('/welcome.html');
        }
    });
});


// Ruta para el registro de usuarios.
app.post('/register', async (req, res) => {
    try {
        const { username, email, password, role } = req.body;
        const hashedPassword = await bcrypt.hash(password, 8);

        const query = 'INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)';
        db.query(query, [username, email, hashedPassword, role], (err, result) => {
            if (err) {
                console.error(err);
                return res.status(500).send('Error en el servidor');
            }
            res.send('<script>alert("Usuario registrado correctamente"); window.location.href="/";</script>');
        });
    } catch (error) {
        console.error(error);
        res.status(500).send('Error en el servidor');
    }
});


// Obtener todos los elemento de los carretes 
app.get('/api/items', (req, res) => {
    const sql = 'SELECT * FROM items';
    db.query(sql, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});
app.listen(3000, () => {
    console.log('Server is running on port 3000');
});