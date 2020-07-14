def encrypt_letter(letter, shift)
  alphabet = ("a".."z").to_a
  exa = letter.ord

  if alphabet.include? letter # Minuscules
    exa = (exa - 97 + shift) % 26 + 97
  elsif alphabet.include? letter.downcase # Majuscules
    exa = (exa - 65 + shift) % 26 + 65
  end

  exa.chr
end

def encrypt_sentence(sentence, shift)
  sentence.chars.map! { |letter| encrypt_letter(letter, shift) }.join
end
