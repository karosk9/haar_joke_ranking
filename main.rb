require '/home/karolina/ruby/zadania_zjazd3/interviewee.rb'
require '/home/karolina/ruby/zadania_zjazd3/interviewee_group.rb'
require '/home/karolina/ruby/zadania_zjazd3/single_rate.rb'
require '/home/karolina/ruby/zadania_zjazd3/jokes_database.rb'
require '/home/karolina/ruby/zadania_zjazd3/ranking.rb'

jokes = JokesDatabase.new
jokes.create_jokes_database

group = IntervieweeGroup.new(2)
group.create_interviewees
puts group

ranking = Ranking.new(jokes, group)
ranking.fill_forms
puts ranking
ranking.winner

