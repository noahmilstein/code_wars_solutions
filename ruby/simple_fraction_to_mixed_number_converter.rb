require 'pry'

def mixed_fraction(fraction)
  split_num = fraction.split('/')
  # binding.pry
  numerator = split_num[0].to_i
  denominator = split_num[1].to_i
  if denominator == 0
    raise 'ZeroDivisionError'
  else
    valence = ''
    if numerator.to_s.include?('-') && denominator.to_s.include?('-') 
      numerator = numerator * -1
      denominator = denominator * -1
    elsif numerator.to_s.include?('-') 
      valence = '-'
      numerator = numerator * -1
    elsif denominator.to_s.include?('-')
      valence = '-'
      denominator = denominator * -1
    end
    whole_num = (numerator / denominator)
    new_numerator = numerator - (whole_num * denominator)
    fraction = Rational(new_numerator, denominator)
    if whole_num.to_i == 0
      if fraction.to_s.split('/')[0].to_i == 0 
        "0"
      else
        "#{valence}#{fraction}"
      end
    elsif fraction.to_f == 0 
      "#{valence}#{whole_num}"
    else
      "#{valence}#{whole_num} #{fraction}"
    end
  end
end

mixed_fraction('-67/13')

# better solution
# def mixed_fraction(string)
#   improper = Rational(*(string.split('/').map(&:to_i)))
#   integer  = improper.to_i
#   fraction = improper - integer
#   
#   return "#{integer}"  if (fraction).numerator == 0
#   return "#{fraction}" if integer == 0
#   "#{integer} #{fraction.abs}"
# end
