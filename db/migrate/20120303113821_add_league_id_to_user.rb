class AddLeagueIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :league_id, :integer
  end
end
