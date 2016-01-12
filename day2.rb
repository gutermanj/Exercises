class Person
	attr_reader :name
	attr_accessor :age
		def initialize(name, age)
			@name = name
			@age = age
		end
end

julian = Person.new("Julian", 20)

julian.age = 22

puts julian.age