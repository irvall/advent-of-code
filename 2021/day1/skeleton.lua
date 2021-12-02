function one(input)
    prev, count = nil, 0
    for line in io.lines(input) do
        v = tonumber(line)
        if prev ~= nil and v > prev then
            count = count + 1
        end
        prev = v
    end
    return count
end

function two(input)
    ms, count, prev1, prev2, prevSum = 0, 0, 0, 0, nil
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
