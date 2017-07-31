<?php

$hi = fopen('php://stdin', "r");
$ho = fopen('php://stdout', "w");

while (true) {
	fscanf($hi, "%d", $n);
	if ($n == 42) break;
	fwrite($ho, sprintf("%d\n", $n));
}

fclose($ho);
fclose($hi);
