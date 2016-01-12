#=>   			0			1		2			3			4
shoe_brands = [ "Nike", "Reebok", "Puma", "Steve Madden", "uggs", ]


# 	shoe_brands.each_with_index do | brand, i |
# 		puts "This brand is my No. #{i + 1} favorite: #{brand}"
# 	end

# 	favorite = shoe_brands.find do | brand |
# 		result = brand.length == 6
# 		puts brand + " -> #{result}"

# 		result
# 		#return true or false for brand
# 	end

	# puts "my REAL favorite brand is: #{favorite}"
	# p favorite

	

	# upper_brands = []

	# shoe_brands.each do | brand |
	# 	upper = brand.upcase

	# 	upper_brands.push(upper)
	# end

	# puts upper_brands

	# puts "----------"



	# 	#all .map does is change an array of stuff to a new array of stuff (cannot add stuff)
	# upper_brands = shoe_brands.map do | brand |
	# 	brand.upcase
	# end

	# puts upper_brands

	# puts "----------"

	# puts shoe_brands

# Average brand name length
	# total_length = 0

	# shoe_brands.each do | brand |
	# 	total_length = total_length + brand.length
	# 	# OR total_length += brand.length
	# end

	total_length = shoe_brands.reduce(0) do | accumulator, brand |
		accumulator = accumulator + brand.length
	end


	puts total_length.to_f / shoe_brands.length

