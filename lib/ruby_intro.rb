# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    _total = 0
    arr.each { |x| _total += x }
    return _total
end

def max_2_sum arr
    return sum arr.sort!.reverse![0,2]
end

def sum_to_n? arr, n
    for i in arr
        for j in arr
            if i + j == n and i != j
                return true
            end
        end
    end
    return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
    return !s.empty? && !!(s[0].match(/[bcdfghijklmnpqrstvqxyzBCDFGHIJKLMNPQRSTVWXYZ]/))
end

def binary_multiple_of_4? s
    if s.match(/[^01]/) || s.empty?
        return false 
    end
    s.reverse!
    num = 0
    for i in 0..(s.length) do
        if(s[i] == "1") 
            num += 2**i
        end
    end
    return num.modulo(4).zero?
end

# Part 3

class BookInStock
    def initialize(isbn, price) 
        raise ArgumentError unless isbn.is_a? String
        raise ArgumentError if isbn.empty?
        raise ArgumentError unless price > 0
        @isbn = isbn
        @price = price
    end

    attr_reader :isbn
    attr_reader :price
    attr_writer :isbn
    attr_writer :price

    def price_as_string 
        return sprintf("$%2.2f", @price)
    end
end

