# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.
# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples

# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

def maskify(cc)
  if cc.length <= 4
    cc
  else
    str = ""
    arr = cc.split('')
    arr[1..-4].each do |char|
      str += '#'
    end
    str += arr[-4..-1].join
    str
  end
end
# or
def maskify(cc)
  if cc.length <= 4
    cc
  else
    str = ""
    cc.split('')[1..-4].each do |char|
      str += '#'
    end
    str += cc.chars[-4..-1].join
    str
  end
end
# or
def maskify(cc)
  if cc.length <= 4
    cc
  else
    count = cc.length - 4
    if count >= 0
      str = "#" * count + cc.chars[-4..-1].join
      str
    end
  end
end

# MUCH BETTER CODE
def maskify(cc)
  cc.gsub(/.(?=....)/, '#')
end
# or
def maskify(cc)
  cc.size <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1]
end
# or
def maskify(cc)
  cc.gsub(/.(?=.{4})/, "#")
end
# or
def maskify(cc)
  cc.chars.each_with_index.map{|x,i| i < cc.length - 4 ? '#' : x}.join
end

# puts maskify("23059824092384203948")
# puts maskify('4556364607935616')
# puts maskify('64607935616')
# puts maskify('1')
# puts maskify('')
