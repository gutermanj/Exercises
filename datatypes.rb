arr = [ 
	{ :arr => [1, 2, 3] },
	{ :arr => [4, 5, 6] },
	{ :arr => [7, 8, 9] },
]

puts arr[1] 			# The entire hash item from the 'arr' array
puts arr[1][:arr] 		# Printing out the contents of the first hash
puts arr[1][:arr][1] 	# Printing out a specific item inside the first hash


hello_hash = {
	:english => "Hello",
	:spanish => "Hola",
	:french => "Bon jour",
	:portuguese => "Oi"
}

puts hello_hash[:english] 	 #  Making sure "[]" square brackets 
puts hello_hash[:portuguese] #  are used to access a hash