class RenameTeamsToClubs< ActiveRecord::Migration
    def change
        rename_table :teams, :clubs
    end 
 end