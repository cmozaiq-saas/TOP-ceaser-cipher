def ceaser_cipher (phrase, key)
  letters = phrase.split("")
  ciphered_letters = shift_letters(letters, key)
  return ciphered_letters
end

def shift_letters(str_arr, key)
  str_arr.map do |letter|
    shift_letter(letter, key)
  end
end

def shift_letter(str, key)
  character = str.downcase.ord
 if (((character - "a".ord) % 26) == 0)
  number = (((character - "a".ord + key) % 26) + "a".ord ).chr
 else
  number = (character + key).chr
 end 
end

puts ceaser_cipher('Hello World', 1)