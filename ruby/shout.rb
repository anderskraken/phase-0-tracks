module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!" + " LOLZ!"
  end
end

p Shout.yell_angrily("I don't understand what the self keyword means")

p Shout.yell_happily("But I will soon")