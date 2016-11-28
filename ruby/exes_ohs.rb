# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contains any char.

# Examples input/output:

# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

def XO(str)
  string = str.downcase.chars
  x = 0
  o = 0
  string.each do |i|
    if i == 'x'
      x += 1
    end
    if i == 'o'
      o += 1
    end
  end
  if x == o
    return true
  else
    return false
  end
end

# radically better solution
def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end
