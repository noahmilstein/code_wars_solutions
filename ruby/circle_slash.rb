# Suppose there are n people standing in a circle and they are numbered 1 through n in order.
# Person 1 starts off with a sword and kills person 2.
# He then passes the sword to the next person still standing, in this case person 3.
# Person 3 then uses the sword to kill person 4, and passes it to person 5.
# This pattern continues around and around the circle until just one person remains.
# What is the number of this person?

# Example:
# For n = 5, the result should be 3.

# 1 kills 2, passes to 3.
# 3 kills 4, passes to 5.
# 5 kills 1, passes to 3.
# 3 kills 5 and wins.

# Input/Output
# [input] integer n

# The number of people. 1 through n standing in a circle.
# 1 <= n <= 1e9
# [output] an integer
# Return the index of the last person standing.

# all test passing
# getting an error `'each': failed to allocate memory (NoMemoryError)`
def circle_slash(n)
  numArr = (1..n).to_a
  until numArr.one? { |x| x.class == Fixnum } do
    numArr.each_with_index do |num, i|
      if num == 'X'
        next
      else
        targetNum = numArr[i + 1.. -1].detect { |y| y.class == Fixnum }
        if targetNum == nil
          targetNum = numArr.detect { |z| z.class == Fixnum }
        end
        targetIndex = numArr.index(targetNum)
        numArr[targetIndex] = 'X'
      end
    end
  end
  return numArr.detect { |i| i.class == Fixnum }
end

circle_slash(5)
# ,3)
circle_slash(11)
# ,7)
circle_slash(1)
# ,1)
circle_slash(2)
# ,1)
circle_slash(3)
# ,3)
circle_slash(4)
# ,1)
circle_slash(8)
# ,1)
circle_slash(16)
# ,1)
circle_slash(15)
# ,15)
circle_slash(31)
# ,31)