class RenameTeamNameByHand < ActiveRecord::Migration
  def self.up
    rename_column :clubs, :team_name, :club_name
  end

  def self.down
    rename_column :clubs, :club_name, :team_name
  end
end
