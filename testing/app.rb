
class StringCalculator
	def initialize

	end

	def add(numbers)
		split_numbers = numbers.gsub(/\D/, '').split("")
			sum = 0
		split_numbers.each do | x |
			sum += x.to_i
		end

		sum

	end
end


my_calc = StringCalculator.new

p my_calc.add( "1,2" ) == 3
p my_calc.add( "4,7" ) == 11
p my_calc.add( "" ) == 0
p my_calc.add( "9" ) == 9
p my_calc.add( "5" ) == 5
