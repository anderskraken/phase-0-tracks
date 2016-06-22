

def method_taking_block
  number1 = 4
  number2 = 32452345
  p number1
  p number2
  yield(number1, number2)
end


method_taking_block { |number1, number2| puts "#{number1} multiplied with #{number2} equals #{number1*number2}." }