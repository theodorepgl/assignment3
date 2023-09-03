#Build a class Dice with a method to roll the dice and simulate a random number from 1 to /6.
require 'colorize'

class Dice
  def roll
    rand(1..6)
  end
end

dice = Dice.new

random_number = dice.roll
puts "The dice rolled: #{random_number}".light_yellow