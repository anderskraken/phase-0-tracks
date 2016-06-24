# PSEUDO CODE - Release 0
#
# Take a name with first name and last name as input
# 
# downcase
#
# next letter method
# => split up name into array of letters
# => if z or u (edge case), change to a or b.
# => if letter is vowel (aeiou), change letter to vowels.index+1
# => if letter is consonant (alphabet - vowels), change letter to consonants.index+1
# => join array
# 
# swap the first and last name
# => split up into arrow of words
# => reverse order in array
# => capitalise words in array
# => join array
# 
# check: Felicia Torres will become Vussit Gimodoe

# METHODS


def next_letter (name)
  vowels = "aeiou".split('')
alphabet = ('a'..'z').to_a
consonants = alphabet - vowels
name_array = name.split('')
name_array.map! { |letter|
  if letter == "u"
    "a"
  elsif letter == "z"
    "b"
  elsif consonants.include? letter
    consonants[consonants.index(letter) + 1]
  elsif vowels.include? letter
    vowels[vowels.index(letter) + 1]
  else
    letter
  end
}
name_array.join('')
end


# METHOD CALLS

puts "Welcome to the Alias-o-matic 3000 (TM)!
Please enter the names you need aliases for.
Hit the enter key between each name.
When you have enough aliases, please type 'quit'."

spy_names = {}

loop do
  real_name = gets.chomp
  break if real_name == "quit"
  downcased_name = real_name.downcase
  next_letter_name = next_letter(downcased_name)
  reversed_name_array = next_letter_name.split(' ').reverse
  capitalised_name_array = reversed_name_array.map { |name| name.capitalize }
  reversed_name = capitalised_name_array.join(' ')
  spy_name = reversed_name
  spy_names[real_name] = spy_name
  p spy_name
end

spy_names.each do |real_name, spy_name|
puts "#{real_name} is also known as #{spy_name}."
end
