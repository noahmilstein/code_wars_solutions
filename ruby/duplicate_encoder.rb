# Duplicate encoder
# The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# def duplicate_encode(word)
#   word.downcase.each_char do |char|
#     if word.downcase.count(char) > 1
#       print ")"
#     else
#       print "("
#     end
#   end
# end
# or...

def duplicate_encode(word)
  answer = []
  word.downcase.each_char do |char|
    if word.downcase.count(char) > 1
      answer << ")"
    else
      answer << "("
    end
  end
  answer.join
end

# # this is much better code
# def duplicate_encode(word)
#   word
#       .downcase
#       .chars
#       .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
#       .join
# end
# or
# def duplicate_encode(word)
#   word.downcase.chars.map {|x| word.downcase.count(x) > 1 ? ")" : "("}.join("")
# end
# or
# def duplicate_encode(word)
#   word.downcase.gsub(/./) do |char|
#     word.downcase.count(char.downcase) > 1 ? ")" : "("
#   end
# end

duplicate_encode("hippo")
duplicate_encode("din")
duplicate_encode("recede")
duplicate_encode("Success")
duplicate_encode("(( @")
