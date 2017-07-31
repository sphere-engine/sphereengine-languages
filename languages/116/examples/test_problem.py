from sys import stdin

for line in stdin:
	n = int(line)
	if n == 42:
		break
	print(n)

