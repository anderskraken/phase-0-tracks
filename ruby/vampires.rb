puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
born = gets.to_i

if born == 2016 - age
  correct_age = true
elsif born == 2015 - age
  correct_age = true
else
  correct_age = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
like_garlic = gets.chomp

if like_garlic == "y"
  like_garlic = true
else
  like_garlic = false
end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
want_insurance = gets.chomp

if want_insurance == "y"
  want_insurance = true
else
  want_insurance = false
end

if correct_age && like_garlic && want_insurance == true
  puts "Probably not a vampire."
elsif !correct_age && !like_garlic && !want_insurance == true
  puts "Almost certainly a vampire."
elsif !correct_age && (!like_garlic || !want_insurance) == true
  puts "Probably a vampire."
elsif name == ("Drake Cula" || "Tu Fang")
  puts "Definitely a vampire"
else
  puts "Results inconclusive."
end


