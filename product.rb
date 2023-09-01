# Build a Product class with attributes name, price, and quantity. 
# Add methods to calculate the total price for a given quantity of products.
require 'colorize'

class Product
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def total_price
    @price * @quantity
  end
end

# Example usage:
product = Product.new("Dunhill King", 13.99, 5)
puts "Total price: #{product.name} is $#{product.total_price}".red