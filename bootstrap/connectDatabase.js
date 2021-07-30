const util 	= require('util');
const mysql = require('mysql');
const dbConfig = require('../configs/database');

// Create a connection to the database
const connection = mysql.createConnection({
	host: dbConfig.host,
	user: dbConfig.user,
	password: dbConfig.password,
	database: dbConfig.database
});
connection.connect((err) => {
	if (err) throw err;
	console.log("Connection to database is ready to use!");
});
const queryExec = util.promisify(connection.query).bind(connection);

module.exports = {connection, queryExec}
