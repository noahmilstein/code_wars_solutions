# Bob is preparing to pass IQ test.
# Find out which one of the given numbers differs from the others. 
# Bob observed that one number usually differs from the others in evenness. 
# Check among the given numbers, find the one that is different in evenness, 
# and return a position of this number.
# index 1

# Examples :
# iq_test("2 4 7 8 10") => 3 // Third number is odd, 
# while the rest of the numbers are even
# iq_test("1 2 1 1") => 2 // Second number is even, 
# while the rest of the numbers are odd

def iq_test(numbers)
  even_odd = 0
  numArr = numbers.split(' ')
  evens = numArr.select { |num| num.to_i % 2 == 0 }.count
  odds = numArr.select { |num| num.to_i % 2 != 0 }.count
  evens > odds ? even_odd = 1 : even_odd = 0
  numArr.each_with_index do |num, index|
    if num.to_i % 2 == even_odd
      return index + 1
    end
  end
end

# def iq_test(numbers)
#   nums = numbers.split.map(&:to_i).map(&:even?)
#   nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
# end
# 
# def iq_test(numbers)
#   numbers = numbers.split(" ").map{|n| n.to_i.even? }
#   return numbers.index(numbers.count(false) == 1 ? false : true) + 1
# end
# 
# def iq_test(numbers)
#   ar = numbers.split.map(&:to_i)
#   ar.index(ar.partition(&:even?).find(&:one?).first) + 1
# end