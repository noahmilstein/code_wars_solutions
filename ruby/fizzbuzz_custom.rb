# fizzbuzz custom

def fizz_buzz_custom(string_1 = "Fizz", string_2 = "Buzz", num_1 = 3, num_2 = 5)
  arr = []
  1.upto(100) do |num|
    if num % (num_1*num_2) == 0
      arr << "#{string_1}#{string_2}"
    elsif num % num_1 == 0
      arr << "#{string_1}"
    elsif num % num_2 == 0
      arr << "#{string_2}"
    else
      arr << num
    end
  end
  arr
end
print fizz_buzz_custom()

# def fizz_buzz_custom(string_1 = "Fizz", string_2 = "Buzz", num_1 = 3, num_2 = 5)
#   1.upto(100) do |num|
#     if num % (num_1*num_2) == 0
#       puts "#{string_1}#{string_2}"
#     elsif num % num_1 == 0
#       puts "#{string_1}"
#     elsif num % num_2 == 0
#       puts "#{string_2}"
#     else
#       puts num
#     end
#   end
# end
# fizz_buzz_custom()

fizz_buzz_custom[15]                         # returns 16
fizz_buzz_custom[44]                         # returns "FizzBuzz" (45 is divisible by 3 and 5)
fizz_buzz_custom('Hey', 'There')[25]         # returns 26
fizz_buzz_custom('Hey', 'There')[11]         # returns "Hey" (12 is divisible by 3)
fizz_buzz_custom("What's ", "up?", 3, 7)[80] # returns "What's " (81 is divisible by 3)

# # this is MUCH better code
# def fizz_buzz_custom(s1 = :Fizz, s2 = :Buzz, n1 = 3, n2 = 5)
#   (1..100).to_a.map{|i|
#     a = "#{s1 if i % n1 == 0}#{s2 if i % n2 == 0}"
#     a.empty? ? i : a
#   }
# end
#
# def fizz_buzz_custom(fizz = 'Fizz', buzz = 'Buzz', fizzFactor = 3, buzzFactor = 5)
#   (1..100).map do |n|
#     next (fizz + buzz) if n % fizzFactor == 0 and n % buzzFactor == 0
#     next fizz          if n % fizzFactor == 0
#     next buzz          if n % buzzFactor == 0
#     n
#   end
# end
