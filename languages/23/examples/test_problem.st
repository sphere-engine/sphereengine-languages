|c number|
[
	number:=0.
	[ (c := stdin next) asciiValue ~= 10 ]
	whileTrue:
	[number := (number * 10) + (c asciiValue) - 48.].
	number ~= 42
]
whileTrue:
[Transcript show: number printString; cr.]
!
