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

def fibonacci(n)
    return [0] if n == 1
    return [0, 1] if n == 2

    prev_arr = fibonacci(n - 1)
    prev_arr << prev_arr[-1] + prev_arr[-2]
end



def bsearch(array, target)

    # if array.length == 0 
    #     puts 'not found'
    #     return nil
    # end
    # if array.length == 1 && array[0] == target
    #     return 0                           #5
    # end

    # i = array.length / 2
    # return i if array[i] == target

    # if target < array[i] 
    #     return bsearch(array[0...i], target)
    # elsif target > array[i] #6 > 4
    #     return i + bsearch(array[(i + 1)..-1], target) + 1
    # end
    return nil if array.empty?
    middle_idx = array.length / 2
    return middle_idx if array[middle_idx] == target
    left = array[0...middle_idx]
    right = array[middle_idx + 1..-1]

    if target < array[middle_idx]
        bsearch(left, target)
    else
        right_idx = bsearch(right, target)
        return nil if right_idx.nil?
        right_idx + middle_idx + 1
    end
end

array = [1,2,3,4,5]
target = 5

#5

# 0,1,1,2,3