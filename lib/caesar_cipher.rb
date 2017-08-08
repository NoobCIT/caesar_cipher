


def caesar_cipher(string, shift)

  # Create a-z and z-a array for capital and lowercase letters
  alphabet_low  = ('a'..'z').to_a + ('a'..'z').to_a
  alphabet_high = ('A'..'Z').to_a + ('A'..'Z').to_a

  # Append code into array secret
  secret = []

  # Cycle through each letter
  array = string.split("")
  array.each do |letter|
    if alphabet_high.include?(letter)
      new_index = alphabet_high.index(letter) + shift
      secret << alphabet_high[new_index]
    elsif alphabet_low.include?(letter)
      new_index = alphabet_low.index(letter) + shift
      secret << alphabet_low[new_index]
    else
      secret << letter
    end
  end
  return secret.join
end
