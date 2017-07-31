local read, write = io.read, io.write
local num, nl = '*n', '\n'
while true do
	local a = read(num)
	if a == 42 then return end
	write(a, nl)
end
