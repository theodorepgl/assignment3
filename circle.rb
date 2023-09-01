#Develop a class Circle with attributes radius and methods to calculate the area and circumference.

class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end

  def circumference
    2 * Math::PI * @radius
  end
end

# Example usage:
circle = Circle.new(5)
puts "Area: #{circle.area}"
puts "Circumference: #{circle.circumference}"