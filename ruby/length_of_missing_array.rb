# You get an array of arrays.
# If you sort the arrays by their length, you will see, that their length-values are consecutive.
# But one array is missing!
# You have to write a method, that returns the length of the missing array.
# Example:
# [[1, 2], [4, 5, 1, 1], [1], [5, 6, 7, 8, 9]] --> 3
# If the array of arrays is null/nil or empty, the method should return 0.
# When an array in the array is null or empty, the method should return 0 too!
# There will always be a missing element and its length will be always between the given arrays. 

def getLengthOfMissingArray(array_of_arrays)
  if array_of_arrays.class == NilClass || array_of_arrays.empty? || array_of_arrays.any? { |arr| arr.nil? || arr.empty? }
    return 0
  else
    sorted = array_of_arrays.map { |arr| arr.length }.sort
    sorted.each_with_index do |arr, i|
      if arr - sorted[0] != i
        return arr - 1
      end
    end
  end
end

# def getLengthOfMissingArray(a)
#   a.any?(&:empty?)?0:(x=a.map(&:size);(Range.new(*x.minmax).to_a-x).first)rescue 0
# end