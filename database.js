const Pool = require('pg').Pool;

const pool = new Pool({
    user: "postgres",
    password: "parool123",
    database: "wadev_hw_4",
    host: "localhost",
    port: "5432"
});
module.exports = pool;