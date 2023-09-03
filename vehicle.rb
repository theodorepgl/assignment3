class Vehicle
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def honk
		puts "Honk!"
	end
end

vehicle1 = Vehicle.new("GTR")
puts vehicle1.name
vehicle1.honk
class Car < Vehicle
	def honk
		puts "Honk Honk!"
	end
end

car1 = Car.new("Microsoft")
puts car1.name
car1.honk