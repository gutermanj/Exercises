class Resume
	attr_accessor :spellcheck, :qualifications, :flags
	def initialize(name, )
		# Create parameters that will judge each resume
		@spellcheck = 0
		@qualifications = 0
		@flags = 0
		@resumes = []
	end

	def add_resume(resume)
		@resumes.push(resume)
	end

end



puts "#{@resumes}"
