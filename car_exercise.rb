class Car #Object created
	attr_reader :wheels, :sound, :name
	def initialize(name, sound)
		@wheels = 4
		@sound = sound
		@name = name
	end
end

class Motorcycle #Object created
	attr_reader :wheels, :sound, :name
	def initialize(name, sound)
		@wheels = 2
		@sound = sound
		@name = name
	end
end

class SemiTruck #Object created
	attr_reader :wheels, :sound, :name
	def initialize(name, sound)
		@wheels = 8
		@sound = sound
		@name = name
	end
end

class WheelCounter #Class so we can store the array into something and use methods within the same class
	def initialize
		@vehicles = []
	end

	def wheel_count # The method to calculate all of the required values
		total_wheels = @vehicles.reduce(0) do | sum, x | #loops through the objects in @vehicles array and adds the wheels together (x.wheels)
			 sum += x.wheels.to_i
			end

			puts "The total amount of wheels is: " "#{total_wheels}"

		sounds = @vehicles.each do | x | #loops through the @vehicles array and prints the values from each object
			puts "#{x.name} goes " "#{x.sound}."
			end	
	end


	def add_vehicle(vehicles) #Pushes each vehicle Object created by Car.new, Motorcycle.new etc... into the @vehicles array
		@vehicles.push(vehicles)
	end
end

my_car = Car.new("My Car", "VROOOM") #The 3 of these are creating new Objects with the values (name, sound)
my_motorcycle = Motorcycle.new("My Motorcycle", "Braaaaap")
my_semitruck = SemiTruck.new("My Semi-Truck", "blublubblub")

counter = WheelCounter.new #Assigning an variable to the WheelCounter class
counter.add_vehicle(my_car)# Using that assigned variable, using the method within the Wheel Counter class called 'add_vehile' which will add the 3 objects we created to the array
counter.add_vehicle(my_motorcycle)# same as line 56
counter.add_vehicle(my_semitruck)# same as line 56

counter.wheel_count #uses the method 'wheel_count' which prints out the result that we are aiming for. (check the do loops for the desired result)