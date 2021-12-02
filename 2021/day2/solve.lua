function one(input)
    x, y = 0, 0
    for line in io.lines(input) do
        dir, step = string.match(line, "(%w+) (%d+)")
        if dir == "up" then step = -step end
        if dir == "forward" then
            x = x + step
        else
            y = y + step
        end
    end
    return x*y
end

function two(input)
    x, y, aim = 0, 0, 0
    for line in io.lines(input) do
        dir, step = string.match(line, "(%w+) (%d+)")
        if dir == "up" then aim = aim - step end
        if dir == "down" then aim = aim + step end
        if dir == "forward" then
            x = x + step
            y = y + step * aim
        else
        end
    end
    return x*y
end

print(two("input.txt"))

