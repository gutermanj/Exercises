require 'date'

require 'sinatra'

require 'sinatra/reloader' if development?


require_relative("lib/blog.rb")
require_relative("lib/post.rb")



	post1 = Post.new("This is a oldest oldest", 10.14, "This is some content.", false)
	post2 = Post.new("The Oldest Post", 9.14, "This is some more content", false)
	post3 = Post.new("The Sponsored Post", 11.15, "This is some awesome content", true)
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


get '/' do 
	@posts = blog.post 
	erb(:home)
end
