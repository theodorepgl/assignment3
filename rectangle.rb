#Implement a class Rectangle with attributes width and height. 
#Add methods to calculate the area and perimeter.

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

rect = Rectangle.new(5, 10)
puts "Area: #{rect.area}" # Output: Area: 50
puts "Perimeter: #{rect.perimeter}" # Output: Perimeter: 30