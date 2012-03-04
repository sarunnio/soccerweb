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

Club.delete_all
Club.reset_pk_sequence
open("http://stormy-moon-2288.heroku.com/club.txt") do |clubs|
    clubs.read.each_line do |club|
      club_name, league_id = club.chomp.split("|")
      Club.create(:club_name => club_name, :league_id => league_id)
    end
end
