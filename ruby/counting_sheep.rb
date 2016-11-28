# Consider an array of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

# For example,
# The correct answer would be 17.
# Hint: Don't forget to check for bad values like null/undefined

array = [true,  true,  true,  false, true,  true,  true,  true, true,  false, true, false, true, false, false, true, true,  true,  true,  true, false, false, true,  true ]

def countSheeps array
  count = 0
  for x in array
    if x # or == true
      count += 1
    end
  end
  return count
end

puts countSheeps(array)

# This code is WAY better
# def countSheeps array
#     array.count(true)
# end
#
# puts countSheeps(array)
