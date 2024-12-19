def caesar_cipher(string, shift_factor)
  characters = string.chars

  characters.map! do |char|
    char_ASCII = char.ord

    if char_ASCII.between?(65, 90) # Uppercase characters
      ((char_ASCII - 65 + shift_factor) % 26 + 65).chr
    elsif char_ASCII.between?(97, 122) # Lowercase characters
      ((char_ASCII - 97 + shift_factor) % 26 + 97).chr
    else
      char_ASCII.chr
    end
  end
  
  characters.join
end

puts caesar_cipher("ABcdE", -1)