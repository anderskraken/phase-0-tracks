
# PSEUEDOCODE - DESIGN OF BICYCLE CLASS

# Attributes:
# Age
# Colour
# Tire Inflated?

# Methods:
# Accelerate, dependent on inflatedness of tires
# Break
# Turn

# BUSINESS LOGIC

class Bicycle

  attr_reader :age
  attr_accessor :colour, :tire_inflated

  def initialize(colour, age, tire_inflated)
    @colour = colour
    @age = age
    @tire_inflated = tire_inflated
  end

  def accelerate(tire_inflated)
    if tire_inflated
      puts "Top speed!"
    else
      puts "Going slow..."
    end
  end

  def break
    puts "Stop!"
  end

  def turn
    puts "Turning!"
  end

end

# USER INTERFACE



bicycles = []

loop do
  puts "Do you want another bicycle? [y/n]"
  bicycle_response = gets.chomp
  break if bicycle_response == "n"
  puts "Which colour should the bike be?"
  bicycle_colour = gets.chomp
  puts "How many years should it be?"
  bicycle_age = gets.chomp
  puts "Should the tires be inflated? [y/n]"
  bicycle_tire_inflated = false
  bicycle_tire_inflated = true if gets.chomp == "y"
  bicycles << Bicycle.new(bicycle_colour, bicycle_age, bicycle_tire_inflated)
end

puts "You have ordered the following bicyles:"
puts "------"
bicycles.each do |bicycle|
  puts "Colour: #{bicycle.colour}"
  puts "Age: #{bicycle.age} years"
  puts "Tires inflated: #{bicycle.tire_inflated}"
  puts "------"
end

