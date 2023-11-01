def range(num1, num2)
    return [] if num1 > num2 
    return [] if num1 == num2

    range(num1, num2 - 1) + [num2 - 1]
end


def exp(base, pow)
    return 1 if pow == 0 #good
    return 0 if base == 0 #good

    base * exp(base, pow - 1)
end





#hi