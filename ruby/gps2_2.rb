# BUSINESS LOGIC

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # use method (perhaps split) to split string into individual items with space as the separator - into an array
  # set default quantity - loop through the array to set default quantity value and turn array - into hash
# output: Hash with grocery items as keys and quantities as values

def create_list(string_of_items, default_quantity)
  grocery_array = string_of_items.split(' ')
  grocery_hash = {}
  grocery_array.each { |item| grocery_hash[item] = default_quantity }
  grocery_hash
end


# Method to add an item to a list
# input: hash, and then item name and optional quantity within the hash
# steps: define a method that takes input name and quantity and adds it to the hash a a key and value
# output: hash with new item and quantity

def add_item(new_item, new_item_quantity, grocery_hash) 
  grocery_hash[new_item] = new_item_quantity
  return grocery_hash
end


# Method to remove an item from the list
# input: hash, and then name of the grocery item to remove from the hash
# steps: define a method that takes the name of the grocery item and removes it from the hash 
# output: hash with one item removed and the associated value 

def remove_item(remove_item, grocery_hash) 
  grocery_hash.delete(remove_item)
  return grocery_hash
end


# Method to update the quantity of an item
# input: hash, and item name within hash, and the new quantity (value)
# steps: define a method that set the value of the key to the quantity value inputted
# output: same hash except with item we wanted to update the quantity of changed

def update_item(updated_item, updated_item_quantity, grocery_hash) 
  grocery_hash[updated_item] = updated_item_quantity
  return grocery_hash
end


# Method to print a list and make it look pretty
# input: hash
# steps: define method to print hash -  loop through the hash printing with colon after keys and then the values
# output: hash printed out in organized easy to read way

def print_list(my_groceries)
  puts "----------"
  puts "Our grocery list contains:"  
  my_groceries.each { |item, quantity| puts  "#{item}: #{quantity}"}
  puts "----------"
end


# DRIVER CODE

string_of_items = "cheese tomatoes dough basil pepperoni"
default_quantity = 1

puts "Create list:"
my_groceries = create_list(string_of_items, default_quantity)
p my_groceries

puts "Add to list:"
my_groceries = add_item("Lemonade", 2, my_groceries)
my_groceries = add_item("Tomatoes", 3, my_groceries)
my_groceries = add_item("Onions", 1, my_groceries)
my_groceries = add_item("Ice Cream", 4, my_groceries)
p my_groceries

puts "Remove item:"
p remove_item("Lemonade", my_groceries)

puts "Update item:"
p update_item("Ice Cream", 1, my_groceries)

puts "Nice looking list:"
p print_list(my_groceries)