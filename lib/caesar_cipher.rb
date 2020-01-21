def encode_letter(char, key)
 
  if char.class != String
    return "error: You must enter a string!"
  
  elsif char.length > 1
    return "error: This method is designed for only one character length!"
  
  elsif (char.ord() > 64 && char.ord() < 91)
    
    if char.ord() + key >= 91
      return (64 + char.ord() + key - 90).chr
    else
      return (char.ord() + key).chr
    end

  elsif (char.ord() > 96 && char.ord() < 123)
    
    if char.ord() + key >= 123
      return (96 + char.ord() + key - 122).chr
    else
      return (char.ord() + key).chr
    end
  else
    return char
  end
end

def caesar_cipher(string, key)
  if string.class != String
    return "error: You must enter a string!"
  else
    return string.split('').map{|c| encode_letter(c, key)}.join() 
  end
end

