# multiples of three and five

# Description:
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)
  sum = 0
  1.upto(number-1) do |num|
    if num % 3 == 0
      sum += num
    elsif num % 5 == 0
      sum += num
    end
  end
  return sum
end

# # better solutions
# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end
# or
# def solution(number)
#   (1...number).select{|n| (n % 5).zero? || (n % 3).zero?}.reduce(:+)
# end
# or
# def solution(number)
#   (2..number - 1).inject(0) {|sum, x| (x % 3 == 0 || x % 5 == 0) ? sum + x : sum}
# end
