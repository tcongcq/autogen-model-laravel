const fs = require('fs');
const util = require('util');
const unslug = require('unslug');
const pluralize = require('pluralize')
const Handlebars   = require('handlebars');
const {database}   = require("./configs/database");
const {queryExec}  = require("./bootstrap/connectDatabase");
const fs_writeFile = util.promisify(fs.writeFile);
const {generateNewDbStructure} = require("./helpers/get-db-structure");
const modelTempate = require("./configs/model_template");
const ignoreFields = ['id','created_at','updated_at'];

const save_to_file = async (_fileoutput, _data)=>{
	if (!fs.existsSync('generate-data'))
	    await fs.mkdirSync('generate-data');
	let fileoutput = ['generate-data',_fileoutput].join('/');
	await fs_writeFile(fileoutput, _data);
	console.log(['Model "',_fileoutput,'" generate successfully!'].join(''));
}

(async()=>{
	await generateNewDbStructure();
	console.log('generateNewDbStructure finish!');

	const source = modelTempate.template;
	const template = Handlebars.compile(source);

	let db_structure = require('./configs/db_structure');
	for(let tableName in db_structure) {
		let rules 		= [];
		let fillAbles 	= [];
		let tableUnslug = pluralize.singular(unslug(tableName).split(' ').join(''));
		let columnList  = db_structure[tableName];
		columnList.forEach((col, colIdx)=>{
			let params = col.split("|");
			if (!ignoreFields.includes(params[0])){
				fillAbles.push({fillAble: params[0]});
				rules.push({rule: params[0], valid: (params[2] == 'NULL' ? '' : 'required')});
			}
		});
		const contents = template({
			modelName: tableUnslug,
			fillAbles: fillAbles,
			rules: rules
		});
		save_to_file([tableUnslug, 'php'].join('.'), contents);
	};
	// console.log('Generate data finish!');
})();