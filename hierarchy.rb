# Implement a class hierarchy: Vehicle and Car. Implement their constructors.
# Add a method to the Car class to start the engine.
# Demonstrate method overriding by creating a method in both the Vehicle and Car classes with the same name.

class Vehicle
  def initialize
    # Vehicle constructor
  end

  def start_engine
    puts "Starting the engine..."
  end
end

class Car < Vehicle
  def initialize
    super
    # Car constructor
  end

  def start_engine
    puts "Car engine started."
  end
end

#Vehicle and Car
vehicle = Vehicle.new
car = Car.new

#start_engine method
vehicle.start_engine
car.start_engine

Starting the engine...
Car engine started.