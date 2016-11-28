# Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.
#
# The binary number returned should be a string.

def add_bin(a,b)
  sum = a + b
  return sum.to_s(2)
end

add_bin(1,1) # 10
add_bin(0,1) # 1
add_bin(1,0) # 1
add_bin(2,2) # 100
add_bin(51,12) # 111111
