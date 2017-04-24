# Sort an array by value and index
# Sort an array of integers by the product of its value and its index.

# For sorting the index starts at 1, NOT at 0!
# The sorting has to be ascending.
# The array will never be null and will always contain numbers. 

# Example:
# Input: 23, 2, 3, 4, 5
# Product of value and index:
# 23 => 23 * 1 = 23  -> Output-Pos 4
#  2 =>  2 * 2 = 4   -> Output-Pos 1
#  3 =>  3 * 3 = 9   -> Output-Pos 2
#  4 =>  4 * 4 = 16  -> Output-Pos 3
#  5 =>  5 * 5 = 25  -> Output-Pos 5

# Output: 2, 3, 4, 23, 5

def sort_by_value_and_index(arr)
  arr.sort_by.with_index { |num, index| num.to_i * (index + 1) }
end

# def sort_by_value_and_index(arr)
#   arr.sort_by.with_index(1) { |num, idx| num * idx }
# end