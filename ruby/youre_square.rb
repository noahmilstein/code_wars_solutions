# Given an integral number, determine if it's a square number:

def is_square(x)
  if x < 0
    false
  else
    ans = Math.sqrt(x) % 1 == 0 ? true : false
    ans
  end
end

# better code
def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end
