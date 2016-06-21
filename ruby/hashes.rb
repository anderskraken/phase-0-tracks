## PSEUDO CODE


# Prompt user for the following information
# convert answers to appropriate data type
# add answers to hash
# - Name [string]
# - Age[integer]
# - Number of children [integer]
# - Decor theme [string]
# - Allergic to hamsters? [boolean]
# - Blind? [boolean]


# Print the hash once all questions completed

# Ask user if s/he wants to update any of the keys

# If user types "none", then end

# Else: user types one of the names of the keys, then
# ask for new value
# convert it to the right data type and update the key's value in the hash

# Print the latest version of the hash



client_preference = {}

puts "Welcome to the Interior Design Client Preference Program (TM). Please enter the following info:"

puts "Name:"
client_preference[:name] = gets.chomp

puts "Age:"
client_preference[:age] = gets.to_i

puts "Number of children:"
client_preference[:no_of_children] = gets.to_i

puts "Decor theme:"
client_preference[:decor_theme] = gets.chomp

puts "Allergic to hamsters [yes or no]:"
client_preference[:allergic_to_hamster] = gets[0] == 'y'

puts "Blind [yes or no]:"
client_preference[:blind] = gets[0] == 'y'

p client_preference

puts "Type the key would you like to update, or 'none':"
client_update = gets.chomp.to_sym

# p client_update

puts "Type the value you want to update the key to:"

if client_update == :none
#  puts "none entered"
else
  if client_update == :name || client_update == :decor_theme
#    puts "Data type: string"
    client_preference[client_update] = gets.chomp
  elsif client_update == :age || client_update == :no_of_children
#    puts "Data type: integer"
    client_preference[client_update] = gets.to_i
  elsif client_update == :allergic_to_hamster || client_update == :blind
#    puts "Data type: boolean [yes/no]"
    client_preference[client_update] = gets[0] == 'y'
  end
  p client_preference
end


