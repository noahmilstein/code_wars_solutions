def next_pal(val)
  condition = false
  iterator = 1
  while condition == false
    new_val = val + iterator
    if new_val.to_s == new_val.to_s.reverse
      condition = true
      puts new_val
    else
      iterator += 1
    end
  end
end

# # much better code
# def next_pal(val)
#   loop do
#     val += 1
#     return val if val.to_s == val.to_s.reverse
#   end
# end
# or
# def next_pal(val)
#   return val if val.to_s.reverse.to_i == val while val += 1
# end
