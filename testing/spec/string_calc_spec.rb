require_relative("../app.rb")


RSpec.describe StringCalculator do

	before :each do
		@calculator = StringCalculator.new
	end

	it "returns 0 for empty string" do
		expect(@calculator.add( "" )).to eq(0)
	end

	it "returns the number for one number" do

		# p my_calc.add( "9" ) == 9
		expect(@calculator.add( "9" )).to eq(9)
		# p my_calc.add( "5" )) == 5
		expect(@calculator.add( "5" )).to eq(5)
	end 

	it "returns the sum of multiple numbers" do

		expect(@calculator.add( "2, 7" )).to eq(9)
		expect(@calculator.add( "9, 2" )).to eq(11)
	end
end

