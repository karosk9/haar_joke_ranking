require File.expand_path('../interviewee_group.rb',__FILE__)
class Interviewee
	attr_reader :name

	def initialize
		@name = rand_name
	end

	def rand_name
		names = %w[Ada Adela Adelajda Adrianna Agata Agnieszka Aldona Aleksandra
		Alicja Alina Amanda Amelia Anastazja Andżelika Aneta Anita Anna Antonina]
		@name = names.sample
	end
end
