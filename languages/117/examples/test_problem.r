f <- file("stdin")
open(f)

while(length(n <- as.integer(readLines(f,n=1))) > 0) {
	if (n == 42) {
		break;
	}
	write(n, stdout())
}
