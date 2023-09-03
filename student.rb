# Create a class Student with attributes name and grades as an array. 
# Implement a method in the Student class to calculate the average grade.

class Student
  attr_accessor :name, :grades
  
  def initialize(name, grades)
    @name = name
    @grades = grades
  end
  
  def average_grade
    total_grades = @grades.reduce(0, :+)
    average = total_grades.to_f / @grades.length
    average.round(2)
  end
end

student = Student.new("Theodore", [84, 96, 90, 87, 93])
puts student.average_grade