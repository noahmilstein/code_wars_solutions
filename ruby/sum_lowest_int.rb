# Create a function that calculates the sum of the two lowest numbers given an array of 5 positive integers. No floats or empty arrays will be passed.
#
# For example, when an array is passed like [19,5,42,2,77], the output should be 7.
# [10,343445353,3453445,3453545353453] should return 3453455.

def sum_two_smallest_numbers(numbers)
  sorted = numbers.sort
  return sorted[0] + sorted[1]
end

# MUCH better code than mine
def sum_two_smallest_numbers(numbers)
  numbers.sort[0..1].inject(:+)
end
