# Create a class Time with attributes hours and minutes. 
# Add a method to add two Time objects together.
require 'colorize'

class Time
  attr_accessor :hours, :minutes
  
  def initialize(hours=0, minutes=0)
    @hours = rand(1..24)
    @minutes = rand(1..60)
  end
  
  def +(times)
    total_minutes = (@hours * 60 + @minutes) + (times.hours * 60 + times.minutes)
    new_hours = total_minutes / 60
    new_minutes = total_minutes % 60
    
    Time.new(new_hours, new_minutes)
  end
end

time1 = Time.new()
time2 = Time.new()

sum = time1 + time2
puts "Sum: #{sum.hours} hours, #{sum.minutes} minutes".light_red