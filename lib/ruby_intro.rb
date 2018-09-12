# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
	elemSum = 0

  if arr.empty?
    return 0
  else
	  arr.each {|elem| elemSum += elem}
  end
	return elemSum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.sort {|a, z| z <=> a}[0] + arr.sort {|a, z| z <=> a}[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2) do |i, j|
    if i + j == n 
      return true
    end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.empty? || s =~ /[^[:alpha:]]/ || s[0] =~ /[aeiou]/i
    return false
  elsif s !~ /^(a|e|i|o|u).*/i
    return true
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if (s =~ /[^0-1]/ || s.empty?)
    return false
  else
    if (s.to_i % 4 == 0)
      return true
    end
  return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)

    if (isbn.empty? || price <= 0)
        raise(ArgumentError, "ISBN cannot be empty and price cannot be less than $0")
    end
    
    @isbn, @price = isbn, price
    
  end 

  def price_as_string
    return "$" + sprintf( "%0.02f", @price)
  end
end
