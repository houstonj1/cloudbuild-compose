const { Client } = require('pg');
const client = new Client({
    host: 'localhost',
    user: 'james',
    password: 'james',
    database: 'james'
});

client.connect();

client.query('SELECT * from james', (err, res) => {
    console.log(res.rows[0]);
    client.end();
});
