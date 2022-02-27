# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for element in arr
    total = total + element
  end
  return total
end

def max_2_sum arr
  big1 = 0
  big2 = 0
  for element in arr
    if big2 == 0 then
      if element >= big1 then
        big2 = big1
        big1 = element
      else
        big2 = element
      end
    elsif element >= big1 then
      big2 = big1
      big1 = element
    elsif element >= big2 then
      big2 = element
    end
  end
  return (big1 + big2)
end

def sum_to_n? arr, n
  passFail = false
  if arr.length == 1 || arr.length == 0 then
    return passFail
  end
  size = arr.length
  for i in arr.first(size-1)
    for j in arr.last(size - i + 1)
      if (i + j) == n then
        passFail = true
      end
    end
  end
  return passFail
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  num1 = s[0]
  if num1 == 'a' || num1 == 'e' || num1 == 'i' || num1 == 'o' || num1 == "u" || num1 == 'A' || num1 == 'E' || num1 == "I" || num1 == 'O' || num1 == 'U' then
    return false
  elsif s.empty? then
    return false
  elsif num1.ord >= "a".ord && num1.ord <= "z".ord then
    return true
  elsif num1.ord >= "A".ord && num1.ord <= "Z".ord then
    return true
  else 
    return false
  end
end

def binary_multiple_of_4? s
  if s.empty? then
    return false
  end
  
  sSplit = s.delete(" ").split("")
  for i in sSplit 
    if s[i] != "0" && s[i] != "1" then
      return false
    end
  end
  
  if sSplit[sSplit.length] == "1" || sSplit[sSplit.length-1] == "1" then
    return false
  end
  return true
  
end

# Part 3

class BookInStock  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0 then
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end

  def price_as_string
    return ("$%0.2f" % [@price])
  end
  

  def isbn
    @isbn
  end
  def isbn=(value)
    if value.empty? then
      raise ArgumentError
    else
      @isbn = value
    end
  end
  def price
    @price
  end
  def price=(value)
    if value <= 0 then
      raise ArgumentError
    else
      @price = value
    end
  end

end
