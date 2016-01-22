class Blog
		attr_accessor :post
	def initialize
		@post = []
		@posts_per_page = 3
		@current_page = 1

	end

	def add_post(post)
		@post.push(post)
	end

	def print

		first_post = 0
		last_post = 2

		first_post = (@current_page - 1) * @posts_per_page
		last_post = (first_post + 3) - 1

		sorted = post.sort do | x, y |
			y.date <=> x.date
		end

		posted = sorted[first_post..last_post].each do | x |
				if x.sponsored
					puts "******** #{x.title} ********"
				else
				puts x.title
				puts "***************"
				puts x.text
				puts "________________"
				end
		end
				# if (last_post - first_post) == 2
				# 	@current_page += 1
				# 	puts "1  2  3  >"
				# 	puts @current_page
				# end
	end

end
