# Given an array, 
# return the reversed version of the array, 
# you reverse portions of the array, 
# you'll be given a length argument which represents the length of each portion you are to reverse.

# selReverse([1,2,3,4,5,6], 2)
#  //=> [2,1, 4,3, 6,5]
# if after reversing some portions of the array
# the length of the remaining portion in the array is not up to the length argument, 
# just reverse them.

# selReverse([2,4,6,8,10,12,14,16], 3)
#  //=> [6,4,2, 12,10,8, 16,14]
# selReverse(array, length)

# Note : if the length argument exceeds the array length, 
# reverse all of them, 
# if the length argument is zero do not reverse at all.

def sel_reverse(arr,l)
  if l == 0
    return arr
  else
    return arr.each_slice(l).to_a.map { |arr| arr.reverse }.flatten
  end
end

# def sel_reverse(arr,l)
#   l > 0 ? arr.each_slice(l).flat_map(&:reverse) : arr
# end