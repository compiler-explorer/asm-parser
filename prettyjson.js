
const fs = require('fs');
const path = require('path');

const args = process.argv.slice(2);

const filename = args[0];

const data = fs.readFileSync(filename);
const input = JSON.parse(data);

const output = JSON.stringify(input, null, 2);
fs.writeFileSync(filename, output);
