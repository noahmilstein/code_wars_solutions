def is_palindrome(str)
  if str.to_s == str.to_s.reverse
    true
  else
    false
  end
end

# Much better code
# or
# def is_palindrome(str)
#   str.to_s == str.to_s.reverse
# end
# or
# def is_palindrome(str)
#   str.to_s == str.to_s.reverse ? true : false
# end
