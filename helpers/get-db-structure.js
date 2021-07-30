const fs = require('fs');
const util = require('util');
const {database} 		= require("../configs/database");
const fs_writeFile 		= util.promisify(fs.writeFile);
const {asyncForEach} 	= require("../helpers/helpers");
const {queryExec,connection} = require("../bootstrap/connectDatabase");

async function writeDataToFile(data){
	if (!fs.existsSync('configs')){
	    await fs.mkdirSync('configs');
	}
	var _fileoutput = 'configs/db_structure.json';
	await fs_writeFile(_fileoutput, data);
	console.log("Write to file successfully!");
	return 1;
}

async function getDbStructure(callback){
	let tableRows  = await queryExec("SHOW TABLES FROM "+database);
	let tableNames = tableRows.map(a => Object.values(a).shift());
	let db_structure = {};
	await asyncForEach(tableNames, async (table) => {
		let columnRows = await queryExec("SHOW COLUMNS FROM "+table);
		let tableNames = columnRows.map(a => [a.Field,a.Type,(a.Null == 'YES' ? 'NULL' : 'NOT-NULL')].join('|'));
		db_structure[table] = tableNames;
	});
	await callback(JSON.stringify(db_structure));
}

module.exports = {
	generateNewDbStructure: async()=>{
		await getDbStructure(writeDataToFile);
	}
}