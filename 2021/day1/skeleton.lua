function one(input)
    prev = nil
    sum = 0
    for line in io.lines(input) do
        v = tonumber(line)
        if prev ~= nil and v > prev then
            sum = sum + 1
        end
        prev = v
    end
    return sum
end

function two(input)
    prev1, prev2, prevSum = nil, nil, nil
    ms, count = 0, 0
    for line in io.lines(input) do
        v = tonumber(line)
        ms = ms + 1
        if ms >= 3 then
            currentSum = v + prev1 + prev2
            if prevSum ~= nil and currentSum > prevSum then
                count = count + 1
            end
            prevSum = currentSum
        end
        prev1, prev2 = v, prev1
    end
    return count
end

print(two('input'))
