class Home
  attr_accessor(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "San Juan", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Julian's place", "Coral Springs", 2, 43),
  Home.new("Alia's place", "Delray Beach", 3, 44),
  Home.new("Tony's place", "Delray Beach", 4, 50),
  Home.new("Nick's place", "Boynton Beach", 3, 42),
  Home.new("Alan's place", "Ft. Lauderdale", 5, 56)
]

	sorted_homes = homes.sort do | x, y |
		x.price <=> y.price
	end

	sorted_homes.each do | x |
		puts "#{x.name} " "is in #{x.city} " + "and can hold #{x.capacity} people."
		puts "Price: " + "#{x.price}"
		puts "--------"
	end

 puts "Would you like to see the price from highest to lowest?"
 highest = gets.chomp

 if highest.upcase == "YES"
 	highest_to_lowest = homes.sort do | x, y |
 		y.price <=> x.price
 	end

	highest_to_lowest.each do | x |
		puts "#{x.name} " "is in #{x.city} " + "and can hold #{x.capacity} people."
		puts "Price: " + "#{x.price}"
		puts "--------"
	end

 else
 	puts "no problem :)"
end

puts "Would you like to sort by capacity?"
	capacitysort = gets.chomp
		if capacitysort.upcase == "YES"
			capacitysorted = homes.sort do | x, y |
 			y.capacity <=> x.capacity
 		end

		capacitysorted.each do | x |
			puts "#{x.name} " "is in #{x.city} " + "and can hold #{x.capacity} people."
			puts "Price: " + "#{x.price}"
			puts "--------"
		end

	else
		puts "no problem :)"
end

puts "Would you like to search for a specific city?"
	respone = gets.chomp
	if respone.upcase == "YES"
	puts "Which City?"
	cityselected = gets.chomp

		selectedcity = homes.select do | x |
			cityselected == x.city
		end
		
		selectedcity.each do | x |
			puts "#{x.name} " "is in #{x.city} " + "and can hold #{x.capacity} people."
			puts "Price: " + "#{x.price}"
			puts "--------"
		end
	
	else
		puts "no problem :)"
	end
		

puts "Would you like the Average price of the homes?"

	averagerespone = gets.chomp
	if averagerespone.upcase == "YES"

		averageprice = homes.reduce(0) do | accumulator, home |
			accumulator + home.price
		end



		totalaverage = averageprice / homes.length

		puts "#{totalaverage}"

	else
		puts "no problem :)"
end
	
	puts "Do you want to search for a price?"
	searchrespone = gets.chomp

	if searchrespone.upcase == "YES"
		puts "Enter a price"
		priceentered = gets.chomp
		searchedprice = homes.find do | x |
			priceentered == x.price
		end

		searchedprice.each do | x |
			puts "#{x.name} " "is in #{x.city} " + "and can hold #{x.capacity} people."
			puts "Price: " + "#{x.price}"
			puts "--------"
		end

	else
		puts "no problem :)"
end









