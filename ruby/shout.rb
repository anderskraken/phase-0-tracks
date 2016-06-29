# RELEASE 1

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!" + " LOLZ!"
#   end
# end

# p Shout.yell_angrily("I don't understand what the self keyword means")

# p Shout.yell_happily("But I will soon")

# RELEASE 3

# BUSINESS LOGIC

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
end

class AngryStupidMan
  include Shout
end

class Todler
  include Shout
end

# DRIVER CODE

donaldtrump = AngryStupidMan.new
p donaldtrump.yell_angrily("ISIS exploded on Hillary Clinton's watch- she's done nothing about it and never will. Not capable!")

junior = Todler.new
p junior.yell_angrily("I want cookies")

