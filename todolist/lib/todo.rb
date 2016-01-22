class ToDoList
	attr_accessor :tasks
	def initialize
		@tasks = []
	end

	def add_task(task)
		@tasks.push(task)
	end
	
	def delete_task(id_to_delete)
		@tasks = @tasks.delete_if do |task| 
			task.id == id_to_delete
		end
	end


end




class Task
	attr_accessor :content, :id, :completed, :created_at, :new_content
		@@current_id = 1
	def initialize(content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@completed = false
		@created_at = Time.new
		@new_content = new_content
	end

	def completed!
		@completed = true
	end

	def make_incomplete!
		@completed = false
	end

	def completed?
		if @completed
			puts "Good job! You're done."
		else
			false
		end
	end

	def update_content!(new_content)
		@new_content = new_content

		puts "Your old task was: #{content}"

		@content = new_content

		puts "Your updated task is now #{content}"
		puts "You updated ur list at #{@created_at.hour}:#{@created_at.min}"
	end



	def find_task_by_id(id_to_find)
		@tasks.find do |task|
			task.id == id_to_find
		end
	end


end

task = Task.new("Buy the milk")
task.completed?
# false
task.update_content!("Buy the Dog")
task.completed!
task.completed?

potato = ToDoList.new

potato.add_task(task)
