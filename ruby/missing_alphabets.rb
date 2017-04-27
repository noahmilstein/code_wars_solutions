# Given string s, which contains only letters from a to z in lowercase.
# A set of alphabet is given by abcdefghijklmnopqrstuvwxyz.
# 2 sets of alphabets mean 2 or more alphabets.
# Your task is to find the missing letter(s). 
# You may need to output them by the order a-z. 
# It is possible there is more than one missing letter from more than one set of alphabet.
# If the string contains all of the letters in the alphabet, return an empty string ""

# Example
# For s='abcdefghijklmnopqrstuvwxy'
# The result should be 'z'

# For s='aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy'
# The result should be 'zz'

# For s='abbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxy'
# The result should be 'ayzz'

# For s='codewars'
# The result should be 'bfghijklmnpqtuvxyz'

# Find the letters contained in each alphabet but not in the string(s). 
# Output them by the order a-z. 
# If missing alphabet is repeated, please repeat them like "bbccdd", not "bcdbcd"

require 'pry'

def missing_alphabets(s)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  newArr = []
  currentChar = ''
  sorted = s.chars.sort.join

  sorted.each_char.with_index do |char, i|
    if char != sorted[i + 1]
      currentChar = char
      newArr << sorted[sorted.index(char)..i]
      s.sub(char, char)
    end
  end
  maxLength = newArr.max_by(&:length).length
  answer = ''
  alphabet.chars.each do |char|
    if !sorted.include?(char)
      answer += (char * maxLength)
    elsif sorted.include?(char)
      subtract = ''
        newArr.any? do |c|
          if c.include?(char)
            subtract = c
          end
        end
      answer += ((char * maxLength).sub(subtract, ''))
    end
  end
  return answer
end

# def missing_alphabets(s)
#   num_sets = s.chars.group_by(&:itself).values.sort_by(&:size).last.size
#   alphabet = ('a'..'z').to_a
#   alphabet.map do |letter|
#     if s.count(letter) == num_sets
#       ""
#     else
#       letter * (num_sets - s.count(letter))
#     end
#   end.join
# end

# def missing_alphabets(s)
#     arr = []
#     str = ''
#     "abcdefghijklmnopqrstuvwxyz".each_char { |c| arr.push(s.count(c)) }
#     arr.each.with_index { |i,index| str += "abcdefghijklmnopqrstuvwxyz"[index]*(arr.max-i) }
#     str
# end