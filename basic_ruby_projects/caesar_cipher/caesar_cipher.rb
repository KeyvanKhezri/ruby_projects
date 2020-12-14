


def caesar_cipher(string, shift)

uppercase_letters = ("A".."Z").to_a
lowercase_letters = ("a".."z").to_a
new_password = ""
password = string.split("")

  password.map { |character|
    if lowercase_letters.include?(character)
      index_holder = (lowercase_letters.index(character) + shift) % 26
      new_password += lowercase_letters[index_holder]
    elsif uppercase_letters.include?(character)
      index_holder = (uppercase_letters.index(character) + shift) % 26
      new_password += uppercase_letters[index_holder]
    else
      new_password += character
    end
  }

  puts new_password

end

caesar_cipher("whaTUpz!", 3)




  # A string and an integer are given as the arguments
  # Declare an uppercase and lowercase array of the alphabet
  # Split the string into characters because each character has to be manipulated individually
  # Find where the characters index in the array is
  # Apply the shift value to the index value
  # To make sure that the array wraps back around to the start use %
  # This can be done by using the index+shift % 26 where 26 is the number of elements in the alphabet array
