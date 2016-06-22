 
# RELEASE 0 - write method that takes a block

def method_taking_block
  number1 = 4
  number2 = 32452345
  p number1
  p number2
  yield(number1, number2)
end


method_taking_block { |number1, number2| puts "#{number1} multiplied with #{number2} equals #{number1*number2}." }


# RELEASE 1 - each, map and map!

dead_people_in_got = [
  "Tywin Lannister",
  "Ned Stark",
  "Robb Stark",
  "Rickon Stark",
  "Hodor"
]

vegetable_colors = {
  "carrot" => "orange",
  "pea" => "green",
  "tomato" => "red",
  "lettuce" => "green",
  "avocado" => "green"
}

p dead_people_in_got

dead_people_in_got.each do |character|
  puts "#{character} is dead!!!"
end

dead_people_in_got.map! do |character|
  puts "#{character} is dead!"
  puts "#{character.upcase} IS DEAD!!!"
  character.upcase
end

p dead_people_in_got

vegetable_colors.each do |vegetable, color| 
  puts "A #{vegetable} is #{color}!"
end

p vegetable_colors 

vegetable_colors.map do |vegetable, color| 
  puts "A #{vegetable} is #{color}!"
  p vegetable_colors.invert
  p vegetable_colors
end

# RELEASE 2 - use documentation

p dead_people_in_got

p vegetable_colors

puts "1. delete_if on an array"

dead_people_in_got.delete_if do |character|
  character.length < 9
end

p dead_people_in_got

puts "1. delete_if on a hash"

vegetable_colors.delete_if do |vegetable, color|
  vegetable == "carrot"
end

p vegetable_colors

puts "2. keep_if on an array"

dead_people_in_got.keep_if do |character|
  character.include? "STARK"
end

p dead_people_in_got

puts "2. keep_if on a hash"

vegetable_colors.keep_if do |vegetable, color|
  color.include? "g"
end

p vegetable_colors

puts "3. select on an array"

starks_with_o = dead_people_in_got.select do |character|
  character.include? "O"
end

p starks_with_o

puts "3. select on a hash"

green_vegetables = vegetable_colors.select do |vegetable, color|
  color.include? "green"
end

p green_vegetables

puts "4. reject on an array"

dead_people_with_short_names = dead_people_in_got.reject do |character|
  character.length < 11
end

p dead_people_with_short_names

puts "4. reject on a hash"

vegetables_that_are_not_peas = vegetable_colors.reject do |vegetable, color|
  vegetable == "pea"
end

p vegetables_that_are_not_peas
