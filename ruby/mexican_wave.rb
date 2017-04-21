# # Task
# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

# # Rules
# 1.  The input string will always be lower case but maybe empty.
# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

# # Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

require 'pry'

def wave(str)
  wave_arr = []
  str.length.times do
    wave_arr << str.split("")
  end
  wave_arr.each_with_index do |el, i|
    unless wave_arr[i][i] == " "
      wave_arr[i][i] = wave_arr[i][i].upcase
      wave_arr[i] = wave_arr[i].join
    end
  end
  wave_arr.delete_if {|element| element.class == Array }
  wave_arr
end

wave('two words')
