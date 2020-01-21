$dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def scan_word(word, arr)
  
  arr.each do |w|
    if w == word.downcase
      return w
    else
      next
    end
  end
  return nil
end

# File.open("shakespeare.txt").each do |line|
# line.split(' ').map{|word| scan_word(word, dictionnary)}
# end

def scan_text(text, arr)
  h = Hash.new(0)
  File.open(text).each do |line|
  line.split(' ').map{|word|
    a = scan_word(word, arr)
    if a != nil
      h[word.downcase] += 1
    end
    }
  end
  return h
end

def convert_text_to_array(text)
  arr = []
  File.open(text).each do |line|
    word = line.split(' ')
    arr.push(word)
  end
  return arr.flatten
end
def find_swear_words_in_shakespeare
  swear_words = convert_text_to_array("swearWords.txt")
  p scan_text("shakespeare.txt", swear_words)
end

def find_common_words_in_shakespeare
  p scan_text("shakespeare.txt", $dictionnary)
end
find_swear_words_in_shakespeare
find_common_words_in_shakespeare
#p scan_text("shakespeare.txt", dictionnary)
#scan_word("of", dictionnary)
#p convert_text_to_array("swearWords.txt")