class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :reindeer_ranking, :age 

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

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

p santas

# Testing interaction with Santas
puts "Testing each Santa instance to make sure s/he can say ho-ho-ho ..."
santas.each do |santa|
  puts "The #{santa.age}-old santa is #{santa.gender} and #{santa.ethnicity} and says:"
  santa.speak
end

puts "Changing gender of each Santa instance:"
santas.each do |santa|
  santa.gender = santa.gender.reverse
  puts "The #{santa.ethnicity} santa is now #{santa.gender}."
end

p santas

puts "Getting mad at Vixen:"
santas.each do |santa|
  santa.get_mat_at("Vixen")
end

p santas

# RELEASE 4

lots_of_santas = []

10000.times do |i|
  lots_of_santas << Santa.new(genders.sample, ethnicities.sample)
  lots_of_santas[i].age = Random.rand(140)
  p lots_of_santas[i]
end


