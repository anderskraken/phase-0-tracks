# PSEUDOCODE

# Loop through the string

# Increment counter in string until equal to the length of the string

# Call .next! method on each letter
# 
# Except if current index = space
# 
# Set 


#CoDE

password = "asdfasdfasdf"

def encrypt(string)
  index = 0
  while index < string.length
    if string[index] != " "
      string[index] = string[index].next
    end
    index += 1
  end

end


encrypt(password)

p password


#Pseudocode

# loop through letters of the string
# for a given letter, find it in the string containing the entire alphabet "abc...xyz"
#   then find its index, and take the letter at its index-1




def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string.length
    string[index] = alphabet[(alphabet.index(string[index]))-1]
    index += 1
  end
end

decrypt(password)

p password



