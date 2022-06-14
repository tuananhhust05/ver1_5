const {Client} = require('pg')

const client = new Client({
    host: "localhost",
    user: "lms_user",
    port: 5432,
    password: "123456aA@",
    database: "manage_ver1_lms"
})

module.exports = client