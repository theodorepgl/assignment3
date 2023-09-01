# Create a Ruby class called Person with attributes name and age. 
# Include a method to compare ages of two people.
require 'colorize'

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def compare_age(other_person)
    if age > other_person.age
      "#{name} is older than #{other_person.name}.".light_green
    elsif age < other_person.age
      "#{name} is younger than #{other_person.name}.".light_green
    else
      "#{name} and #{other_person.name} are of the same age.".light_green
    end
  end
end

# Example usage:
person1 = Person.new("Ronaldo", 38)
person2 = Person.new("Messi", 36)
person3 = Person.new("Haaland", 24)
person4 = Person.new("Foden", 24)


puts "#{person1.name} is #{person1.age}.".light_blue
puts "#{person2.name} is #{person2.age}.".light_blue
puts "#{person3.name} is #{person3.age}.".light_blue
puts "#{person4.name} is #{person4.age}.".light_blue
puts
puts person1.compare_age(person2)
puts person2.compare_age(person1)
puts person3.compare_age(person4)