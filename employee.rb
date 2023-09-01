# Implement a class Employee with attributes name, position, and salary. 
# Add a method to give a raise to the employee's salary.

class Employee
  attr_accessor :name, :position, :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def give_raise(amount)
    @salary += amount
  end
end

employee = Employee.new("Theodore", "Engineer", 4000)
puts "Current salary: $#{employee.salary}"
employee.give_raise(1000)
puts "New salary after raise: $#{employee.salary}"

Current salary: $4000
New salary after raise: $5000