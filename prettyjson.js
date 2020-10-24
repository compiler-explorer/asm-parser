const fs = require('fs');

const args = process.argv.slice(2);

const filename = args[0];

const data = fs.readFileSync(filename);
const input = JSON.parse(data);

const output = JSON.stringify(input, null, 2);
fs.writeFileSync(filename, output);

console.log("Number of lines: " + input.asm.length);
console.log("Number of labels: " + Object.keys(input.labelDefinitions).length);
