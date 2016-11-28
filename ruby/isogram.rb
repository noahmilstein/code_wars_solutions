# isograms

# Description:
# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

# is_isogram("Dermatoglyphics" ) == true
# is_isogram("aba" ) == false
# is_isogram("moOse" ) == false # -- ignore letter case

def is_isogram(string)
  string.downcase.split(//).uniq.join == string.downcase ? true : false
end

# much better code
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end
# or
def is_isogram(string)
  letters = string.downcase.chars
  letters == letters.uniq
end
# or
def is_isogram(string)
  string.downcase.chars.uniq.size == string.chars.size
end
