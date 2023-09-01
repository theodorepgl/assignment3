# Create a class Time with attributes hours and minutes. 
# Add a method to add two Time objects together.

class Time
  attr_accessor :hours, :minutes
  
  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end
  
  def +(other_time)
    total_minutes = (@hours * 60 + @minutes) + (other_time.hours * 60 + other_time.minutes)
    new_hours = total_minutes / 60
    new_minutes = total_minutes % 60
    
    Time.new(new_hours, new_minutes)
  end
end

# Example usage:
time1 = Time.new(2, 30)
time2 = Time.new(1, 45)

sum = time1 + time2
puts "Sum: #{sum.hours} hours, #{sum.minutes} minutes"