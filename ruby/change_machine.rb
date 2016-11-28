# change machine

# Description:
# Implement a change function that performs at O(n) (we will test for this).
# The function will accept an integer parameter that represents cents, and returns the optimal change using the least number of coins.
# The function should return a hash containing a key for each coin of US currency (specifically 25¢ 10¢ 5¢ and 1¢ coins -- don't use 50¢ or 100¢ coins). The value of each coin should represent the count of each coin in the change.
# The function should return a hash with all coin count values set to 0 if the cents parameter is less than or equal to 0.
# change(31)
# # => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 }

def change(cents)
  change_hash = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
  if cents > 0
    while cents != 0
      if cents > 25
        num_quarters = cents / 25
        change_hash[25] = num_quarters
        cents = cents % (25 * num_quarters)
      elsif cents > 10
        num_dimes = cents / 10
        change_hash[10] = num_dimes
        cents = cents % (10 * num_dimes)
      elsif cents > 5
        num_nickels = cents / 5
        change_hash[5] = num_nickels
        cents = cents % (5 * num_nickels)
      else
        num_pennies = cents
        change_hash[1] = num_pennies
        cents = 0
      end
    end
  end
  change_hash
end

# better code

# def change(cents)
#   [25, 10, 5, 1].map.with_object({}) { |c, h|
#     h[c] = cents > 0 ? cents / c : 0
#     cents -= h[c] * c
#   }
# end
#
# def change(cents)
#   change = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
#   cents <= 0 ? change : change.each_key { |c| change[c] = cents / c; cents = cents % c }
# end
#
# def change(q)
#   q<0 ? {25=>0,10=>0,5=>0,1=>0} : {25=>q/25,10=>q%25/10,5=>q%25%10/5,1=>q%5}
# end
#
# def change(cents)
#   cents = 0 if cents < 0
#   [25, 10, 5, 1].inject({}) { |res, n| res[n], cents = cents.divmod(n); res }
# end
