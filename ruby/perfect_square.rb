# perfect square

def perfect_square(num)
  if Math.sqrt(num).to_f % 1 == 0
    true
  else
    false
  end
end

def find_next_square(sq)
  if perfect_square(sq)
    loop do
      if perfect_square(sq += 1)
        return sq
      end
    end
  else
    -1
  end
end

# # better solutions
# def find_next_square(sq)
#   number = Math.sqrt(sq) + 1
#   number % 1 == 0 ? number**2 : -1
# end
# or
# def find_next_square(sq)
#   Math.sqrt(sq).floor**2==sq ? (Math.sqrt(sq)+1)**2 : -1
# end
