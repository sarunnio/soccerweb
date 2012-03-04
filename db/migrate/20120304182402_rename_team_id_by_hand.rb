class RenameTeamIdByHand < ActiveRecord::Migration
  def self.up
    rename_column :users, :team_id, :club_id
  end

  def self.down
    rename_column :users, :club_id, :team_id
  end
end
