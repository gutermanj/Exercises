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

		(@current_page - 1) * posts_per_page = first_post

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
				if (last_post - first_post) == 2
					@current_page += 1
					puts "1  2  3  >"
					puts @current_page
				end
	end

end

class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
	end

end

	post1 = Post.new("This is a sponsored post", 10.14, "This is some content.", true)
	post2 = Post.new("The Oldest Post", 9.14, "This is some more content", false)
	post3 = Post.new("The Newest Post", 11.15, "This is some awesome content", false)
	post4 = Post.new("The 4th post", 8.14, "This is some content.", false)
	post5 = Post.new("The 5th post", 7.14, "This is some more content", false)
	post6 = Post.new("The 6th post", 6.14, "This is some awesome content", false)
	post7 = Post.new("The 7th post", 5.14, "This is some content.", false)
	post8 = Post.new("The 8th post", 4.14, "This is some more content", false)
	post9 = Post.new("The 9th post", 3.14, "This is some awesome content", false)
	
		blog = Blog.new
	
	blog.add_post(post1)
	blog.add_post(post2)
	blog.add_post(post3)
	blog.add_post(post4)
	blog.add_post(post5)
	blog.add_post(post6)
	blog.add_post(post7)
	blog.add_post(post8)
	blog.add_post(post9)

		puts blog.print
