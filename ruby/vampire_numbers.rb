# Vampire numbers

# 6 * 21 = 126
# 6 and 21 would be valid 'fangs' for a vampire number as the
# digits 6, 1, and 2 are present in both the product and multiplicands
# 10 * 11 = 110
# 110 is not a vampire number since there are three 1's in the
# multiplicands, but only two 1's in the product

def vampire(a, b)
  input_digits = []
  output_digits = []
  c = a * b
  a.to_s.chars.each do |digit|
    input_digits << digit
  end
  b.to_s.chars.each do |digit|
    input_digits << digit
  end
  c.to_s.chars.each do |digit|
    output_digits << digit
  end
  if input_digits.sort == output_digits.sort
    return true
  else
    false
  end
end

# this is a radically better solution
def vampire(a, b)
  (a.to_s + b.to_s).chars.sort == (a * b).to_s.chars.sort
end
