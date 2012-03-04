require "open-uri"
#require "add_reset_pk_sequence_to_base.rb"
puts "db seed"


League.delete_all
League.reset_pk_sequence
open("http://stormy-moon-2288.heroku.com/league.txt") do |leagues|
    leagues.read.each_line do |league|
      league_name = league
      League.create(:league_name => league_name)
    end
end

Team.delete_all
Team.reset_pk_sequence
open("http://stormy-moon-2288.heroku.com/team.txt") do |teams|
    teams.read.each_line do |team|
      team_name, league_id = team.chomp.split("|")
      Team.create(:team_name => team_name, :league_id => league_id)
    end
end
