# arabian string

# Description:
# You must create a method that can convert a string from any format into CamelCase. This must support symbols too.
# Don't presume the separators too much or you could be surprised.

def camelize(str)
  mod = str.downcase.gsub(/[^\w+]/,"@")
  mod = str.gsub(/[-'_: =>\/]/,"@")
  split_str = mod.split("@")
  var = split_str.map { |word| word.is_a?(String) ? word.capitalize : word }.join('')
  var
end

# much better code
def camelize(str)
  puts str.split(/\W|_/).map(&:capitalize).join
end

camelize("example name")
camelize("your-NaMe-here")
camelize("testing ABC")
camelize("ninja test 01")
