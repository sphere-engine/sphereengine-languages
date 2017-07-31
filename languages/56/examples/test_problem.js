process.stdin.resume();
process.stdin.setEncoding('utf8');

var remainder = ''
process.stdin.on('data', function (chunk) {
	var lines = chunk.toString().split('\n');
	lines.unshift(remainder + lines.shift());
	remainder = lines.pop();
	lines.forEach(function(line) {
		if (line === '42') {
			process.exit();
		}
		process.stdout.write(line+'\n');
	});
});
