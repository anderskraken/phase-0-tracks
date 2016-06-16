puts "How many employees will be processed?"
employees = gets.to_i
processed_employees = 0

while employees > processed_employees
  processed_employees +=1 

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
    wrong_age = true
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  like_garlic = gets.chomp

  if like_garlic == "y"
    like_garlic = true
  else
    hate_garlic = true
  end

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  want_insurance = gets.chomp

  if want_insurance == "y"
    want_insurance = true
  else
    no_insurance = true
  end


  vampire_probability = "Results inconclusive."
  
  if correct_age && like_garlic && want_insurance
    vampire_probability = "Probably not a vampire."
  end

  if wrong_age && (hate_garlic || no_insurance)
    vampire_probability = "Probably a vampire."
  end

  if wrong_age && hate_garlic && no_insurance
    vampire_probability = "Almost certainly a vampire."
  end

  if name == ("Drake Cula" || "Tu Fang")
    vampire_probability = "Definitely a vampire"
  elsif name != ("Drake Cula" || "Tu Fang")
  end


  puts "Please name any allergies, one at a time. When you have named all your allergies, type 'done'."
  
  allergies = ""

  until allergies == "done"
    allergies = gets.chomp
    break if allergies == "sunshine"    
  end

  if allergies == "sunshine" 
    vampire_probability = "Probably a vampire."
  end


  puts vampire_probability

#  Alternative logic for Release 2 with bang operators - I scrapped this after re-reading the assignment
#
#  if correct_age && like_garlic && want_insurance == true
#    puts "Probably not a vampire."
#  elsif !correct_age && !like_garlic && !want_insurance == true
#    puts "Almost certainly a vampire."
#  elsif !correct_age && (!like_garlic || !want_insurance) == true
#    puts "Probably a vampire."
#  elsif name == ("Drake Cula" || "Tu Fang")
#    puts "Definitely a vampire"
#  else
#    puts "Results inconclusive."
#  end

end

