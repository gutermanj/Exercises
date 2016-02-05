class Project < ActiveRecord::Base
	has_many :entries
	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def hoursWorked(month, year)
		Project.each do |x|
			@potato = x.hours * 30
			@tomato = x.hours * 365
		end
		return @potato
		return @tomato
	end
end
