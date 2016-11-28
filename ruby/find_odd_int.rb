def find_it(seq)
  arr = []
  seq.each do |int|
    if seq.count(int) % 2 != 0
      arr << int
    end
  end
  arr.uniq.join.to_i
end
# or
# Better code THAT I FUCKING WROTE
def find_it(seq)
  arr = []
  seq.map { |int| seq.count(int) % 2 != 0 ? arr << int : int}
  arr.uniq.join.to_i
end

# better code that I DID NOT FUCKING WRITE
def find_it(seq)
  seq.reduce(:^)
end
# or
def find_it(seq)
  seq.each do |i|
    if seq.count(i) % 2 != 0
      return i
    end
  end
end
# or
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end
# or
def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end
