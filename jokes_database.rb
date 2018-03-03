require 'haar_joke'

class JokesDatabase
	attr_reader :jokes_database

	def initialize
		@jokes_database = jokes_database
	end
	
	def to_s
		@jokes_database.each {|joke| puts joke}
	end

	def create_jokes_database
		@jokes_database = Hash.new
		6.times{ |joke|
		joke = HaarJoke.create_joke
		@jokes_database[joke]=0
		}
	end

end
