require_relative("../todo.rb")

	describe Task do

		before :each do
			@task = Task.new("Buy some milk")
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
			expect(task1.id).to eq(7)
			expect(task2.id).to eq(8)
		end

end