# Take a number: 56789. Rotate left, you get 67895.
# Keep the first digit in place and rotate left the other digits: 68957.
# Keep the first two digits in place and rotate the other ones: 68579.
# Keep the first three digits and rotate left the rest: 68597. Now it is over since keeping the first four it remains only one digit which rotated is itself.
# You have the following sequence of numbers:
# 56789 -> 67895 -> 68957 -> 68579 -> 68597
# and you must return the greatest: 68957.
# Calling this function max_rot (or maxRot or ... depending on the language)
# max_rot(56789) should return 68957

def max_rot(n)
  count = 1
  n_array = [n]
  n_chars = n.to_s.chars
  while count <= (n_chars.length - 1)
    n_chars.each_with_index do |char, index|
      n_chars.push(n_chars[index])
      n_chars.delete_at(index)
      n_array << n_chars.join.to_i
      count += 1
    end
  end
  return n_array.uniq.max
end

max_rot(56789)

# def max_rot(n)
#   na = n.to_s.chars
#   na.length.times.each_with_object([n]) do |i, arr|
#     arr << (na << na.delete_at(i)).join.to_i
#   end.max
# end
