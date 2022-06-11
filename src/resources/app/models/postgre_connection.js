const {Client} = require('pg')

const client = new Client({
    host: "localhost",
    user: "postgres",
    port: 5432,
    password: "Tuananh050901",
    database: "manage_ver1_lms"
})

module.exports = client