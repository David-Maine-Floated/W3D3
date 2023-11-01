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


def exp2(base, pow)
    return 1 if pow == 0 #good
    return 0 if base == 0 #good

    if pow.even? 
      return exp2(base, pow / 2) ** 2
    elsif pow.odd?
        return base * (exp2(base, (pow - 1) / 2) ** 2)
    end         
end    

class Array

    def deep_dup  
        new_arr = []
    self.each do |el|
        if el.is_a?(Array)
            new_arr << el.deep_dup      
        else 
            new_arr << el
        end
    end
    new_arr
    end    
end


