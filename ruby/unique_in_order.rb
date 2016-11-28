# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

# For example:
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

def unique_in_order(iterable)
  if iterable.class == String
    iterable.squeeze.split('')
  elsif iterable.class == Array && iterable[0].class == Fixnum
    iterable.join('').squeeze.split('').map(&:to_i)
  elsif iterable.class == Array && iterable[0].class == String
    iterable.join('').squeeze.split('')
  end
end

# p unique_in_order('AAAABBBCCDAABBB')
# p unique_in_order('ABBCcAD')
# p unique_in_order([1,2,2,3,3])
# p unique_in_order(['a','b'])

# MUCH BETTER CODE
def unique_in_order(iterable)
  (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end
# or
def unique_in_order(iterable)
  iterable.length.times.reduce([]) do |uniqued, i|
    uniqued.push iterable[i] unless uniqued.last == iterable[i]
    uniqued
  end
end
# or
def unique_in_order(iterable)
  it_array= []
  iterable.length.times do |x|
    it_array << iterable[x] if iterable[x] != iterable[x+1]
  end
  it_array
end
