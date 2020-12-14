dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # splits sentence into words
  # test_strings = string.downcase.split(/\s+/)
  test_strings = string.downcase.gsub!(/\?|!|'|,|/, '').split(/\s+/)

  holder = {}

  dictionary.each do |substring|
    test_strings.each do |word|
      if word.include?(substring)
        holder[substring] ? holder[substring] += 1 : holder[substring] = 1
      end
    end
  end
  puts holder
end





substrings("Howdy partner, sit down! How's it going?", dictionary)

# First argument is any word
# Second argument is an array called dictionary

# Change string into an array called test_strings using the .split method
# Use a loop and the .include? method to check if the first element in the dictionary is the same string as the first element of the test_strings
# Then the second element of the dictionary with the first element of the test_strings etc...
# We need a counter
