class IntervieweeGroup
attr_reader :interviewees

	def initialize(number_of_people)
		@number_of_people = number_of_people
		@interviewees = interviewees
		puts "#{@number_of_people} interviewees will rate jokes: "
	end

	def create_interviewees
		@interviewees = Array.new(@number_of_people) do |interviewee|   
			interviewee = Interviewee.new
		end		
	end
	
	def to_s
		arr = []
		@interviewees.each {|interviewee| arr<< interviewee.name }
		arr.join(' ')
	end
end
