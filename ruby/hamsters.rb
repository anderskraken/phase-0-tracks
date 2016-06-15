puts "What is the hamsters name?"

hamster_name = gets.chomp

puts "What is the volume level on a scale from 1 to 10?"

volume_level = gets.to_i

puts "Whats the fur color"

fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"

adoption = gets.chomp

if adoption = "y"
  adoption = true
else
  adoption = false
end

puts "Whats the hamsters estimated age?"

est_age = gets.to_i

if est_age == ""
  est_age = nil
else
  est_age
end

puts "Name: #{hamster_name}
Volume level: #{volume_level} 
Fur color: #{fur_color}
Adoption possible: #{adoption}
Estimated age: #{est_age}"