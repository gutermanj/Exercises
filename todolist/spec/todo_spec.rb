require_relative("../lib/todo.rb")

	describe Task do

		before :each do
			@potato = "Buy some milk"
			@bigpotato = "Get more potatoes"
			@task = Task.new(@potato)
			@task2 = Task.new(@bigpotato)
			@todo = ToDoList.new
		end

		it "Makes the task completed" do
			expect(@task.completed!).to eq(@completed = true)
		end

		it "Makes the task incompleted" do
			expect(@task.make_incomplete!).to eq(@completed = false)
		end

		it "Checks if the to do item is complete" do
			expect(@task.completed?).to be(false)
		end

		it "Updates the old item to a new item" do
			expect(@content).to eq(@new_content)
		end

		it "Should add 1 to id for every new post" do
			task1 = Task.new("I like potatos")
			task2 = Task.new("My ID should be higher!")
			expect(task1.id).to eq(task1.id)
			expect(task2.id).to eq(task2.id)
		end

		it "deletes task by id" do
			@todo.add_task(@task)
			@todo.add_task(@task2)
			@todo.delete_task(@task.id)
			expect(@todo.tasks.size).to eq(1)
		end

end