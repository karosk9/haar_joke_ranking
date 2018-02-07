require '/home/karolina/ruby/zadania_zjazd3/jokes_database.rb'
require '/home/karolina/ruby/zadania_zjazd3/single_rate.rb'
class Ranking
	attr_accessor :jokes_ranking, :single_rate
	attr_reader :int_group

	def initialize(jokes_ranking, int_group)
		@jokes_ranking = jokes_ranking
		@int_group = int_group.interviewees
		@jokes_hash = jokes_ranking.jokes_database
		@single_rate = Hash.new
	end

	def fill_forms
		@int_group.each do |interviewee| 
		puts "\n#{interviewee.name} is rating jokes...\n"
		interviewee = SingleRate.new(jokes_ranking)
		@single_rate = interviewee.rate_jokes #zwraca hasha
		update_ranking
		end
	end

	def update_ranking
		@jokes_hash = @jokes_hash.merge(single_rate) {|joke, sum, rate| sum+rate }
	end

	def average
		@jokes_hash.each {|joke, rating| 
			@jokes_hash[joke] =  rating.to_f/int_group.length
		}
	end

	def to_s
		average
		str = []
		@jokes_hash.sort_by{|joke,rating| rating}.reverse.each {|joke, rating| str << "Joke: #{joke} has average rating: #{rating}\n"}
		str.join
	end

	def winner
		rating =0
			best_jokes = @jokes_hash.select do |joke, rating| 
			rating==@jokes_hash.values.max
		end
	
		if best_jokes.length>1 then puts "\nbest jokes are: " else puts "\nbest joke is: " end
		best_jokes.each_key {|joke| puts joke}
		puts "with average rate #{best_jokes.values.max}" 
	end

end

