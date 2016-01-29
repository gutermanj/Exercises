var decoder = require('./lib/decode.js');
var sayHello = require('./lib/say_hello.js');

var words, result;

words = ['Mouse', 'Tiger', 'Class', 'Summer', 'Miami'];
result = decoder(words);
console.log(result);
sayHello();