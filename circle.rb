#Develop a class Circle with attributes radius and methods to calculate the area and circumference.
require 'colorize'

class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2 #PI is pi formula
  end

  def circumference
    2 * Math::PI * @radius #PI is pi formula
  end
end

circle1 = Circle.new(4)
circle2 = Circle.new(8)

puts "Area: #{circle1.area}".light_blue
puts "Area: #{circle2.area}".light_blue
puts
puts "Circumference: #{circle1.circumference}".light_cyan
puts "Circumference: #{circle2.circumference}".light_cyan