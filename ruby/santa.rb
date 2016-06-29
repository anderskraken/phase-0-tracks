class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
  end

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mat_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking.push(name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

# DRIVER CODE

# RELEASE 0

# nick = Santa.new

# nick.speak

# nick.eat_milk_and_cookies("Oreo cookie")

# RELEASE 1

santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# Refactoring initializations
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders.each_index do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

# Testing interaction with Santas
puts "Testing each Santa instance in the hash to make sure it can say ho-ho-ho ..."
santas.each do |santa|
# NOTE: not able to call age, since release 0 instructs to
# state in the class, outside the initialize method.
# puts "This santa is #{age} years old:"
  puts "S/he is #{santa.ethnicity} and says:"
  santa.speak
end


