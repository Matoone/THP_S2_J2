dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def search_word_in(word, array)
  matches = []
  array.map{|v| if word.include?(v)
   matches.push(v)
  end }
  return matches
end
def word_counter(string, array)
  a = string.split(' ').map{|v| search_word_in(v, array)}.flatten
  h = Hash.new(0)
  a.each{|word| h[word] += 1}
  return h
end

p word_counter("How are you going dude going ? Time to do your part saving the planet !", dictionnary)

