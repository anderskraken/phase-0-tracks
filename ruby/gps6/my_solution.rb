# Virus Predictor

# I worked on this challenge with: Jesus Roman.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative allows us to pull in code from a specific file in this case state_data.rb
# It differs from require in that require is used to pull in code from specific "gems" which are different
# libraries in ruby that can be installed or written
# population density is number of people per square mile as of 2012
# this data is updated every year with estimates from a 10 year census

require_relative "state_data"

class VirusPredictor

  #Creates new instance of VirusPredictor and sets the three parameters as variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @population_density_case = case @population_density
    when 0.0...50.0 then 1
    when 50.0...100.0 then 2
    when 100.0...150.0 then 3
    when 150.0...200.0 then 4
    end
  end
  
  #Runs two methods and returns the effects of the virus in terms of number of deaths and speed of virus spread, methods are defined below
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{months_to_spread} months.\n\n"
  end

  #Makes the methods below private so they cannot be called on as methods for the VirusPredictor class
  private

  #Calculates the number of deaths using population density, and population for a state as inputs and prints the number of deaths by state
  def predicted_deaths 
    # BEFORE REFACTORING:
    # if @population_density >= 200
    #   (@population * 0.4).floor
    # elsif @population_density >= 150
    #   (@population * 0.3).floor
    # elsif @population_density >= 100
    #   (@population * 0.2).floor
    # elsif @population_density >= 50
    #   (@population * 0.1).floor
    # else
    #   (@population * 0.05).floor
    # end
    ratio = case @population_density_case
    when 1 then 0.05
    when 2 then 0.1
    when 3 then 0.2
    when 4 then 0.3
    else 0.4
    end
    (@population * ratio).floor
  end

  #Calculates the speed of the virus spread and puts the speed in months to the console
  def months_to_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # BEFORE REFACTORING:
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    case @population_density_case
    when 1 then 2.5
    when 2 then 2
    when 3 then 1.5
    when 4 then 1
    else 0.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#Print all results for 50 states


STATE_DATA.each do |state_key, state_attributes| 
    
  state = VirusPredictor.new(state_key, state_attributes[:population_density], state_attributes[:population])
  state.virus_effects
  
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# This is a two-level nested hash where the parent hash uses strings in the keys, whereas the to child hashes use symbols in their keys, hence the different syntax.


# What does require_relative do? How is it different from require?

# require_relative "string" will try to load the contents of the file named "string" from the directory where the requiring file is stored.
# require "string" will instead of looking in the path of the current path, try to load from one of the directories listed in $LOAD_PATH($"). That is - unless the string provided is an absolute path.


# What are some ways to iterate through a hash?

# The most used and general one is #each, but there are many methods you can use to accomplish specific tasks, such as these:
# #each_key, #each_value, #keep_if, #delete_if, #key, #value, and also several ones from the Enumerable module, such as #select, #fetch.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# Hmm.. not sure I get what is implied with the question.

# What concept did you most solidify in this challenge?

# Writing DRYer code!
