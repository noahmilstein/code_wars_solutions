# Mumbling

# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")    # "C-Ww-Aaa-Tttt"

def accum(s)
  str = ""
	s.chars.each_with_index do |x, index|
    str += "#{x.upcase}" + "#{x.downcase}"*(index) + "-"
  end
  str[0..-2]
end

# much better code
def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end
