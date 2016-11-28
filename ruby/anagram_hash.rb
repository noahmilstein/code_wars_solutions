# get all anagrams of hash

def get_words(hash)
  array = []
  hash.each do |integer, letter|
    array.fill(letter, array.size, integer)
  end
  array = array.flatten.permutation.to_a
  array.map! { |set| set.join }.uniq.sort
end

# print get_words({1=>["a", "b", "c"]})
# print get_words({2=>["a"], 1=>["b", "c"]})

# better code
# def get_words(hash)
#   hash.flat_map { |k, v| v * k }.sort.permutation.map(&:join).uniq
# end
#
# def get_words(hash)
#   hash.map{|k, v| v * k}.flatten.permutation.map(&:join).uniq.sort
# end
