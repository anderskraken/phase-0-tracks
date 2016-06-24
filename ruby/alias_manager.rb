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
# p vowels
  alphabet = ('a'..'z').to_a
  consonants = alphabet - vowels
# p consonants
  name_array = name.split('')
# p name_array
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

real_name = "Felicia Torres"

downcased_name = real_name.downcase

# p downcased_name

next_letter_name = next_letter(downcased_name)

reversed_name_array = next_letter_name.split(' ').reverse

# p reversed_name_array

capitalised_name_array = reversed_name_array.map { |name| name.capitalize }

# p capitalised_name_array

reversed_name = capitalised_name_array.join(' ')

spy_name = reversed_name

p spy_name

