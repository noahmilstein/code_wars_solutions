# def binary_array_to_number(arr)
#   return arr.join(', ').delete(', ').to_i(2)
# end
#
# array = [0, 0, 0, 1]
# binary_array_to_number(array)

def descending_order(n)
  array = n.to_s.split('')
  return array.sort.reverse.join(',').gsub(/,/,'').to_i
end

p descending_order(145263)

# def descending_order(n)
#   n.to_s.chars.sort.reverse.join.to_i
# end
# def descending_order(n)
#   n.to_s.scan(/./).sort.reverse.join.to_i
# end
# def descending_order(n)
#   n.to_s.split("").sort { |x,y| y <=> x }.join.to_i
# end
# def descending_order(n)
#   n.to_s.bytes.sort!.reverse!.pack("c*").to_i
# end
