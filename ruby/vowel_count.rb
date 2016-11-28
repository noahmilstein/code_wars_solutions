# vowel count
# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, and u as vowels for this Kata.

def getCount(inputStr)
  inputStr.count('aeiou')
end

puts getCount("ubernostrum")
