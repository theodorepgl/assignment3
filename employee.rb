# Implement a class Employee with attributes name, position, and salary. 
# Add a method to give a raise to the employee's salary.
require 'colorize'

class Employee
  attr_accessor :name, :position, :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def raise(amount)
    @salary += amount
  end
end

employee1 = Employee.new("Theodore", "Engineer", 4000)
puts "#{employee1.position} #{employee1.name} Current salary: $#{employee1.salary}".light_yellow
employee1.raise(1000)
puts "New salary after raise: $#{employee1.salary}".light_yellow
puts
employee2 = Employee.new("Dennis", "CEO", 8000)
puts "#{employee2.position} #{employee2.name} Current salary: $#{employee2.salary}".light_cyan
employee2.raise(2000)
puts "New salary after raise: $#{employee2.salary}".light_cyan