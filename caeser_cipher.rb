require 'pry-byebug'

def caesar_cipher (string, shift)

 # Split the input string into an array of individual characters for processing
string_sub_strings = string.split('')

# Map each character to its shifted ASCII value (or original ASCII for non-letters)
# Check if character is a lowercase / uppercase letter 
# Convert to 0-based position (a=0), apply shift, wrap with modulo 26, convert back

character_ascii_value = string_sub_strings.map {|character|
  if character =~ /[a-z]/ then ((character.ord - 97 + shift) % 26 + 97) 
  elsif character =~ /[A-Z]/ then  ((character.ord - 65 + shift) % 26 + 65)
  else character.ord  # Return ASCII value of non-alphabetic characters (will be converted back unchanged)
    end
}

# Convert ASCII values back to characters
character_chr = character_ascii_value.map {|ascii_code| ascii_code.chr }

# Join the character array into a single string
character_chr = character_chr.join('')
binding.pry
  
end


caesar_cipher("What is my Name!", 5)

