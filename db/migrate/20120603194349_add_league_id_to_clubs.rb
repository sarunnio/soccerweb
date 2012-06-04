class AddLeagueIdToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :league_id, :integer
  end
end
