# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ans = 0
  arr.each{|x| ans = x + ans}
  ans
end

def max_2_sum arr
  arr.sort.reverse.take(2).sum
end

def sum_to_n? arr, n
  arr.find{|x| 
  tmp = arr
  tmp.delete_at(tmp.index(x))
  if tmp.include?(n-x) 
    return true
  end
  }
  return false
end

# Part 2

def hello(name)
  "Hello, " + name.to_str
end

def starts_with_consonant? s
  
  if s[0] and s.capitalize.scan(/[AEIOU]/).count == 0 and s[0].match(/^[[:alpha:]]$/)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.length>0 and s !~ /[^01]/ and s.to_i()%4==0
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    @isbn = isbn
    @price = price 
    if (@isbn == "" || @price <= 0) #Exception handling
      raise ArgumentError
    end
  end
  def price_as_string #price processing
    "$" + "%.2f" % @price
  end
end
