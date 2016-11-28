# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

def likes(names)
  if names.length == 0
    "no one likes this"
  elsif names.length == 1
    "#{names[0]} likes this"
  elsif names.length == 2
    ans = names.join(' and ')
    "#{ans} like this"
  elsif names.length == 3
    ans = names[0..-2].join(', ')
    ans << " and #{names[-1]} like this"
    ans
  else
    ans = names[0..1].join(', ')
    length = names[2..-1].length
    "#{ans} and #{length} others like this"
  end
end

# puts likes(["Alex", "Jacob", "Mark", "Max"])
# puts likes(["Alex", "Jacob", "Mark"])
# puts likes(["Alex", "Jacob"])
# puts likes(["Alex"])

# better code
def likes(names)
  case names.size
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end
