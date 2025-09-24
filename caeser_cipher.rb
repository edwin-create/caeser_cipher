require 'pry-byebug'

def caesar_cipher (string, shift)
 
string_sub_strings = string.split('')

character_ascii_value = string_sub_strings.map {|character|
  if character =~ /[a-z]/ then ((character.ord - 97 + shift) % 26 + 97) 
  elsif character =~ /[A-Z]/ then  ((character.ord - 65 + shift) % 26 + 65)
  else character.ord 
    end
}

character_chr = character_ascii_value.map {|ascii_code| ascii_code.chr }

character_chr = character_chr.join('')
binding.pry
  
end


caesar_cipher("What is my Name!", 5)

