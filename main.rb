require File.expand_path('../interviewee.rb', __FILE__)
require File.expand_path('../interviewee_group.rb', __FILE__)
require File.expand_path('../single_rate.rb', __FILE__)
require File.expand_path('../jokes_database.rb', __FILE__)
require File.expand_path('../ranking.rb', __FILE__)

jokes = JokesDatabase.new
jokes.create_jokes_database

group = IntervieweeGroup.new(2)
group.create_interviewees
puts group

ranking = Ranking.new(jokes, group)
ranking.fill_forms
puts ranking
ranking.winner
