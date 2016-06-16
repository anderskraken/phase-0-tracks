# PSEUDOCODE

# Loop through the string
# Increment counter in string until equal to the length of the string
# Call .next method on each letter
# Except if current index == space
# Implicitly return string, by printing string


# METHODS

def encrypt(string)
  index = 0
  while index < string.length
    if string[index] == "z"
      string[index] = "a"
    elsif string[index] != " "
      string[index] = string[index].next
    end
    index += 1
  end
  p string
end



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
  p string
end


# Driver Code

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt(encrypt("swordfish"))

# This works because the encrypt method returns an
# implicit return which then is used as input for the
# decrypt method


# PSEUDOCODE

# Ask user for whether they want to decrypt or encrypt
# Ask user for password
# Perform requested action with if loop

puts "Would you like to decrypt [d] or encrypt [e] a password"
user_answer = gets.chomp

puts "What is the password?"
user_password = gets.chomp

if user_answer == "e"
  encrypt(user_password)
elsif user_answer == "d"
  decrypt(user_password)
end




