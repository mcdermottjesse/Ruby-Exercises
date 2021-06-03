def pigLatin(string)
vowels = ["a", "e", "i", "o", "u"]

if vowels.include? string[0]
string + 'ay'

else

  consonant = string[0]
  new_word = string[1..-1]
  
  "#{new_word}#{consonant}ay"
end
end

puts pigLatin("apple")

puts pigLatin("jesse")