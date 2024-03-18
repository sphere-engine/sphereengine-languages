function main()
    intNum = 0
    
    intNum = parse(Int, readline())
    while intNum != 42
        println(intNum)
        intNum = parse(Int, readline())
    end
end

main()
