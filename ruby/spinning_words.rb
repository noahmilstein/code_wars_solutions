# Stop gninnipS My sdroW

# Description:
# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

def spinWords(string)
  arr = []
  str = string.split(" ")
  str.each do |word|
    if word.length < 5
      arr << word
    else
      arr << word.reverse
    end
  end
  arr.join(' ')
end

# OR better code that I FUCKING WROTE
def spinWords(string)
  arr = []
  string.split(" ").each { |word| word.length < 5 ? arr << word : arr << word.reverse }
  arr.join(' ')
end

# Or better code that I did NOT write
def spinWords(string)
  string.split.map{ |s| s.length > 4 && s.reverse! || s }.join(' ')
end
# or
def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end
# or
def spinWords(string)
  string.gsub(/\w{5,}/){ $&.reverse }
end
# or
def spinWords(string)
  parts = string.split(/\b/)
  parts.map{|p| p.length >=5 ? p.reverse : p}.join
end
