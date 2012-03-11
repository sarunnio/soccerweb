class CreateTeamusers < ActiveRecord::Migration
   def self.up
    create_table :teamusers do |t|
      t.integer :team_id
      t.integer :user_id

      t.timestamps
    end
    add_index :teamusers, :team_id
    add_index :teamusers, :user_id
    add_index :teamusers, [:team_id, :user_id], :unique => true
  end

  def self.down
    drop_table :teamusers
  end
  
 
 
end
