class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(no_of_woofs)
    no_of_woofs.times do
      puts "Woof!"      
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    p human_years * 7
  end

  def bark_word(word)
    p "woof-" * (word.length-1) + "WOOF!"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

# DRIVER CODE

# spot = Puppy.new

# spot.fetch("ball")

# spot.speak(5)

# spot.roll_over

# spot.dog_years(1)

# spot.bark_word("Here's a good boy")


# RELEASE 2

# BUSINESS LOGIC

class Kitten

  def scratch(number_of_scratches)
    number_of_scratches.times {puts "scratch"}
  end

  def eat(food)
    puts "That #{food} was yum!! Meaw!"
  end

  def initialize
    puts "Cat Class initialized"
  end
  
end

# DRIVER CODE

# p list_new_kittens

# puss = Kitten.new

# puss.scratch(5)

# puss.eat("milk")

list_new_kittens = []

50.times do
  new_cat = Kitten.new
  list_new_kittens << new_cat
end

list_new_kittens.each do |cat|
  cat.eat("rat")
  cat.scratch(3)
end

