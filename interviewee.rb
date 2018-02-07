require '/home/karolina/ruby/zadania_zjazd3/interviewee_group.rb'
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