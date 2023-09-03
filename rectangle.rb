#Implement a class Rectangle with attributes width and height. 
#Add methods to calculate the area and perimeter.
require 'colorize'

class Rectangle
  attr_accessor :width, :height
  
  def initialize(width, height)
    @width = width
    @height = height
  end
  
  def area
    @width * @height
  end
  
  def perimeter
    2 * (@width + @height)
  end
end

rect = Rectangle.new(50, 100)
puts "Area: #{rect.area}".light_yellow
puts "Perimeter: #{rect.perimeter}".light_red