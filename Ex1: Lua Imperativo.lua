function fibonacci(n)
    if n <= 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        local a, b = 0, 1
        for i = 2, n do
            local temp = b
            b = a + b
            a = temp
        end
        return b
    end
end


for i = 1, 25 do
    print(fibonacci(i))
end
